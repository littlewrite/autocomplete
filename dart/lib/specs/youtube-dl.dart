// AI-generated from TypeScript source: youtube-dl.ts
// Generated at: 2026-02-16

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final Map<String, FigGenerator> youtubeDlGenerators = {
  'listVideos': FigGenerator(
    script: (context) => [
      'youtube-dl',
      '--flat-playlist',
      '-J',
      ...context.where((token) => token.contains('youtube.')),
    ],
    postProcess: (out, [tokens]) {
      try {
        final json = jsonDecode(out);
        final entries = json['entries'] as List<dynamic>;
        return entries
            .asMap()
            .map((index, video) {
              final name = '${index + 1} - ${video['title']}';
              return MapEntry(
                index,
                FigSuggestion(
                  name: name,
                  description: video['uploader'],
                  insertValue: '${index + 1}',
                  icon:
                      'https://www.youtube.com/s/desktop/810941b4/img/favicon_32.png',
                ),
              );
            })
            .values
            .toList();
      } catch (e) {
        print(e);
        return [];
      }
    },
  ),
  'listClipboard': FigGenerator(
    script: ['pbpaste'],
    postProcess: (out, [tokens]) {
      final regex = RegExp(r'^(https?://)?(www.)?(youtube.com|youtu.?be)/.+$');
      try {
        if (regex.hasMatch(out)) {
          return [
            FigSuggestion(
              name: out,
              description: 'Clipboard',
              icon:
                  'https://www.youtube.com/s/desktop/810941b4/img/favicon_32.png',
            ),
          ];
        }
      } catch (e) {
        print(e);
      }
      return [];
    },
  ),
};

/// Completion spec for `youtube-dl` CLI
final FigSpec youtubeDlSpec = FigSpec(
    name: 'youtube-dl',
    description: 'Download videos from YouTube',
    args: [
      Arg(
          name: 'URL',
          generators: youtubeDlGenerators['listClipboard'],
          isVariadic: true)
    ],
    options: [
      Option(
          name: ['--help', '-h'], description: 'Print the help text and exit'),
      Option(name: '--version', description: 'Print program version and exit'),
      Option(
          name: ['-U', '--update'],
          description:
              'Update this program to latest version. Make sure you have sufficient permissions (run with sudo if needed)'),
      Option(
          name: ['--ignore-errors', '-i'],
          description:
              'Continue on download errors, for example to skip unavailable videos in a playlist'),
      Option(
          name: '--abort-on-error',
          description:
              'Abort downloading of further videos (in the playlist or the command line) if an error occurs'),
      Option(
          name: '--dump-user-agent',
          description: 'Display the current browser identification'),
      Option(
          name: '--list-extractors',
          description: 'List all supported extractors'),
      Option(
          name: '--extractor-descriptions',
          description: 'Output descriptions of all supported extractors'),
      Option(
          name: '--default-search',
          description:
              'Use this prefix for unqualified URLs. For example "gvsearch2:" downloads two videos from google videos for youtube-dl "large apple"',
          args: [Arg(name: 'PREFIX')]),
      Option(
          name: '--config-location',
          description:
              'Location of the configuration file; either the path to the config or its containing directory',
          args: [
            Arg(name: 'PATH', template: ['filepaths', 'folders'])
          ]),
      Option(
          name: '--force-generic-extractor',
          description: 'Force extraction to use the generic extractor'),
      Option(
          name: '--ignore-config',
          description: 'Do not read configuration files'),
      Option(
          name: '--flat-playlist',
          description:
              'Do not extract the videos of a playlist, only list them'),
      Option(
          name: '--mark-watched',
          description: 'Mark videos watched (YouTube only)'),
      Option(
          name: '--no-mark-watched',
          description: 'Do not mark videos watched (YouTube only)'),
      Option(
          name: '--no-color', description: 'Do not emit color codes in output'),
      Option(
          name: '--proxy',
          description:
              'Use the specified HTTP/HTTPS/SOCKS proxy. Pass in an empty string for direct connection',
          insertValue: '--proxy "{cursor}"',
          args: [Arg(name: 'URL')]),
      Option(
          name: '--socket-timeout',
          description: 'Time to wait before giving up, in seconds',
          args: [Arg(name: 'SECONDS')]),
      Option(
          name: '--source-address',
          description: 'Client-side IP address to bind to',
          args: [Arg(name: 'IP')]),
      Option(
          name: ['-4', '--force-ipv4'],
          description: 'Make all connections via IPv4'),
      Option(
          name: ['-6', '--force-ipv6'],
          description: 'Make all connections via IPv6'),
      Option(
          name: '--geo-verification-proxy',
          description:
              'Use this proxy to verify the IP address for some geo-restricted sites',
          args: [Arg(name: 'URL')]),
      Option(
          name: '--geo-bypass',
          description:
              'Bypass geographic restriction via faking X-Forwarded-For HTTP header'),
      Option(
          name: '--no-geo-bypass',
          description:
              'Do not bypass geographic restriction via faking X-Forwarded-For HTTP header'),
      Option(
          name: '--geo-bypass-country',
          description:
              'Force bypass geographic restriction with explicitly provided two-letter ISO 3166-2 county code',
          args: [Arg(name: 'CODE')]),
      Option(
          name: '--geo-bypass-ip-block',
          description:
              'Force bypass geographic restriction with explicitly provided IP block in CIDR notation',
          args: [Arg(name: 'IP_BLOCK')]),
      Option(
          name: '--playlist-start',
          description: 'Playlist video to start at (default is 1)',
          args: [
            Arg(name: 'NUMBER', generators: youtubeDlGenerators['listVideos'])
          ]),
      Option(
          name: '--playlist-end',
          description: 'Playlist video to end at (default is last)',
          args: [
            Arg(name: 'NUMBER', generators: youtubeDlGenerators['listVideos'])
          ]),
      Option(
          name: '--playlist-items',
          description: 'Playlist video to end at (default is last)',
          args: [
            Arg(
                name: 'ITEM_SPEC',
                generators: youtubeDlGenerators['listVideos'])
          ]),
      Option(
          name: '--match-title',
          description:
              'Download only matching titles (regex or caseless sub-string)',
          args: [Arg(name: 'REGEX')]),
      Option(
          name: '--reject-title',
          description:
              'Skip download for matching titles (regex or caseless sub-string)',
          args: [Arg(name: 'REGEX')]),
      Option(
          name: '--max-downloads',
          description: 'Abort after downloading NUMBER files',
          args: [Arg(name: 'NUMBER')]),
      Option(
          name: '--min-filesize',
          description:
              'Do not download any videos smaller than SIZE (e.g. 50k or 44.6)',
          args: [Arg(name: 'SIZE')]),
      Option(
          name: '--max-filesize',
          description:
              'Do not download any videos larger than SIZE (e.g. 50k or 44.6)',
          args: [Arg(name: 'SIZE')]),
      Option(
          name: '--date',
          description: 'Download only videos uploaded in this date',
          args: [Arg(name: 'DATE')]),
      Option(
          name: '--datebefore',
          description:
              'Download only videos uploaded on or before this date (i.e. inclusive)',
          args: [Arg(name: 'DATE')]),
      Option(
          name: '--dateafter',
          description:
              'Download only videos uploaded on or after this date (i.e. inclusive)',
          args: [Arg(name: 'DATE')]),
      Option(
          name: '--min-views',
          description: 'Do not download any videos with less than COUNT views',
          args: [Arg(name: 'COUNT')]),
      Option(
          name: '--max-views',
          description: 'Do not download any videos with more than COUNT views',
          args: [Arg(name: 'COUNT')]),
      Option(
          name: '--match-filter',
          description: 'Generic video filter',
          args: [Arg(name: 'FILTER')]),
      Option(
          name: '--no-playlist',
          description:
              'Download only the video, if the URL refers to a video and a playlist'),
      Option(
          name: '--yes-playlist',
          description:
              'Download the playlist, if the URL refers to a video and a playlist'),
      Option(
          name: '--age-limit',
          description: 'Download only videos suitable for the given age',
          args: [Arg(name: 'YEARS')]),
      Option(
          name: '--download-archive',
          description:
              'Download only videos not listed in the archive file. Record the IDs of all downloaded videos in it',
          args: [Arg(name: 'FILE')]),
      Option(
          name: '--include-ads',
          description: 'Download advertisements as well (experimental)'),
      Option(
          name: ['-r', '--limit-rate'],
          description:
              'Maximum download rate in bytes per second (e.g. 50K or 4.2M)',
          args: [Arg(name: 'RATE')]),
      Option(
          name: ['-R', '--retries'],
          description: 'Number of retries or "infinite"',
          args: [Arg(name: 'RETRIES', defaultValue: '10')]),
      Option(
          name: '--fragment-retries',
          description: 'Number of retries for a fragment or "infinite"',
          args: [Arg(name: 'RETRIES', defaultValue: '10')]),
      Option(
          name: '--skip-unavailable-fragments',
          description: 'Skip unavailable fragments'),
      Option(
          name: '--abort-on-unavailable-fragments',
          description: 'Abort downloading when some fragment is not available'),
      Option(
          name: '--keep-fragments',
          description:
              'Keep downloaded fragments on disk after downloading is finished; fragments are erased by default'),
      Option(
          name: '--buffer-size',
          description: 'Size of download buffer (e.g. 1024 or 16K)',
          args: [Arg(name: 'SIZE', defaultValue: '1024')]),
      Option(
          name: '--no-resize-buffer',
          description: 'Do not automatically adjust the buffer size'),
      Option(
          name: '--http-chunk-size',
          description:
              'Size of a chunk for chunk-based HTTP downloading (e.g. 10385760 or 10M)',
          args: [Arg(name: 'SIZE')]),
      Option(
          name: '--playlist-reverse',
          description: 'Download playlist videos in reverse order'),
      Option(
          name: '--playlist-random',
          description: 'Download playlist videos in random order'),
      Option(
          name: '--xattr-set-filesize',
          description:
              'Set file xattribute ytdl.filesize with expected file size'),
      Option(
          name: '--hls-prefer-native',
          description: 'Use the native HLS downloader instead of ffmpeg'),
      Option(
          name: '--hls-prefer-ffmpeg',
          description: 'Use ffmpeg instead of the native HLS downloader'),
      Option(
          name: '--hls-prefer-mpegts',
          description:
              'Use the mpegts container for HLS videos, allowing to play the video while downloading'),
      Option(
          name: '--external-downloader',
          description: 'Use the specified external downloader',
          args: [
            Arg(name: 'COMMAND', suggestions: [
              FigSuggestion(name: 'aria2c'),
              FigSuggestion(name: 'avconv'),
              FigSuggestion(name: 'axel'),
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'ffmpeg'),
              FigSuggestion(name: 'httpie'),
              FigSuggestion(name: 'wget')
            ])
          ]),
      Option(
          name: '--external-downloader-args',
          description: 'Give these arguments to the external downloader',
          dependsOn: ['--external-downloader'],
          args: [Arg(name: 'ARGS')]),
      Option(
          name: ['-a', '--batch-file'],
          description:
              'File containing URLs to download (\'-\' for stdin), one URL per line. Lines starting with \'#\', \';\' or \']\' are considered as comments and ignored',
          args: [
            Arg(
                name: 'FILE',
                suggestions: [FigSuggestion(name: '-')],
                template: ['filepaths'])
          ]),
      Option(name: '--id', description: 'Use only video ID in file name'),
      Option(
          name: ['-o', '--output'],
          description: 'Output filename template',
          args: [Arg(name: 'TEMPLATE')]),
      Option(
          name: '--output-na-placeholder',
          description:
              'Placeholder value for unavailable meta fields in output filename template',
          args: [Arg(name: 'PLACEHOLDER', defaultValue: 'NA')]),
      Option(
          name: '--autonumber-start',
          description: 'Specify the start value for %(autonumber)s',
          args: [Arg(name: 'NUMBER', defaultValue: '1')]),
      Option(
          name: '--restrict-filenames',
          description:
              'Restrict filenames to only ASCII characters, and avoid "&" and spaces in filenames'),
      Option(
          name: ['-w', '--no-overwrites'],
          description: 'Do not overwrite files'),
      Option(
          name: ['-c', '--continue'],
          description:
              'Do not resume partially downloaded files (restart from beginning)'),
      Option(
          name: '--no-part',
          description:
              'Do not use .part files - write directly into output file'),
      Option(
          name: '--no-mtime',
          description:
              'Do not use the Last-modified header to set the file modification time'),
      Option(
          name: '--write-description',
          description: 'Write video descriptions to a .description file'),
      Option(
          name: '--write-info-json',
          description: 'Write video metadata to a .info.json file'),
      Option(
          name: '--write-annotations',
          description: 'Write video annotations to a .annotations.xml file'),
      Option(
          name: '--load-info-json',
          description:
              'JSON file containing the video information (created with the "--write-info-json" option',
          args: [Arg(name: 'FILE', template: 'filepaths')]),
      Option(
          name: '--cookies',
          description: 'File to read cookies from and dump cookie jar in',
          args: [Arg(name: 'FILE', template: 'filepaths')]),
      Option(
          name: '--cache-dir',
          description:
              'Location in the filesystem where youtube-dl can store some downloaded information permanently',
          args: [
            Arg(
                name: 'DIR',
                template: 'folders',
                defaultValue: '\$XDG_CACHE_HOME/youtube-dl')
          ]),
      Option(name: '--no-cache-dir', description: 'Disable filesystem caching'),
      Option(
          name: '--rm-cache-dir',
          description: 'Delete all filesystem cache files'),
      Option(
          name: '--write-thumbnail',
          description: 'Write thumbnail image to disk'),
      Option(
          name: '--write-all-thumbnail',
          description: 'Write all thumbnail image formats to disk'),
      Option(
          name: '--list-thumbnails',
          description: 'Simulate and list all available thumbnail formats'),
      Option(name: ['-q', '--quiet'], description: 'Activate quite mode'),
      Option(name: '--no-warnings', description: 'Ignore warnings'),
      Option(
          name: ['-s', '--simulate'],
          description:
              'Do not download the video and do note write anything to disk'),
      Option(name: '--skip-download', description: 'Do not download the video'),
      Option(
          name: ['-g', '--get-url'],
          description: 'Simulate, quiet but print URL'),
      Option(
          name: ['-e', '--get-title'],
          description: 'Simulate, quiet but print title'),
      Option(name: '--get-id', description: 'Simulate, quiet but print id'),
      Option(
          name: '--get-thumbnail',
          description: 'Simulate, quiet but print thumbnail URL'),
      Option(
          name: '--get-description',
          description: 'Simulate, quiet but print video description'),
      Option(
          name: '--get-duration',
          description: 'Simulate, quiet but print video length'),
      Option(
          name: '--get-filename',
          description: 'Simulate, quiet but print output filename'),
      Option(
          name: '--get-format',
          description: 'Simulate, quiet but print output format'),
      Option(
          name: ['-j', '--dump-json'],
          description: 'Simulate, quiet but JSON information'),
      Option(
          name: ['-J', '--dump-single-json'],
          description:
              'Simulate, quiet but JSON information for each command-line argument'),
      Option(
          name: '--print-json',
          description:
              'Be quiet and print the video information as JSON (video is still being downloaded)'),
      Option(
          name: '--newline',
          description: 'Output the progress bar as new lines'),
      Option(
          name: '--no-progress', description: 'Do not print the progress bar'),
      Option(
          name: '--console-title',
          description: 'Display progress in console titlebar'),
      Option(
          name: ['-v', '--verbose'],
          description: 'Print various debugging information'),
      Option(
          name: '--dump-pages',
          description:
              'Print downloaded pages encoded using base64 to debug problems (very verbose)'),
      Option(
          name: '--write-pages',
          description:
              'Write downloaded intermediary pages to files in the current directory to debug problems'),
      Option(
          name: '--print-traffic',
          description: 'Display sent and read HTTP traffic'),
      Option(
          name: ['-C', '--call-home'],
          description: 'Contact the youtube-dl server for debugging'),
      Option(
          name: '--no-call-home',
          description: 'Do NOT contact the youtube-dl server for debugging'),
      Option(
          name: '--encoding',
          description: 'Force the specified encoding (experimental)',
          args: [Arg(name: 'ENCODING')]),
      Option(
          name: '--no-check-certificate',
          description: 'Suppress HTTPS certificate validation'),
      Option(
          name: '--prefer-insecure',
          description:
              'Use an unencrypted connection to retrieve information about the video. (Currently supported only for YouTube)'),
      Option(
          name: '--user-agent',
          description: 'Specify a custom user agent',
          args: [Arg(name: 'UA')]),
      Option(
          name: '--referer',
          description:
              'Specify a custom referer, use if the video access is restricted to one domain',
          args: [Arg(name: 'URL')]),
      Option(
          name: '--add-header',
          description:
              'Specify a custom HTTP header and its value, separated by a colon \':\'',
          isRepeatable: true,
          args: [Arg(name: 'FIELD:VALUE')]),
      Option(
          name: '--bidi-workaround',
          description:
              'Work around terminals that lack bidirectional text support. Requires bidiv or fribidi executable in PATH'),
      Option(
          name: '--sleep-interval',
          description:
              'Number of seconds to sleep before each download when used alone or a lower bound of a range for randomized sleep before each download when used along with --max-sleep-interval',
          args: [Arg(name: 'SECONDS')]),
      Option(
          name: '--max-sleep-interval',
          dependsOn: ['--sleep-interval'],
          description:
              'Upper bound of a range for randomized sleep before each download. Must only be used along with --min- sleep-interval',
          args: [Arg(name: 'SECONDS')]),
      Option(
          name: ['-f', '--format'],
          description: 'Video format code',
          args: [Arg(name: 'FORMAT')]),
      Option(
          name: '--all-formats',
          description: 'Download all available video formats'),
      Option(
          name: '--prefer-free-formats',
          description:
              'Prefer free video formats unless a specific one is requested'),
      Option(
          name: ['-F', '--list-formats'],
          description: 'List all available formats of requested videos'),
      Option(
          name: '--youtube-skip-dash-manifest',
          description:
              'Do not download the DASH manifests and related data on YouTube videos'),
      Option(
          name: '--merge-output-format',
          description:
              'If a merge is required (e.g. bestvideo+bestaudio), output to given container format',
          args: [
            Arg(name: 'FORMAT', suggestions: [
              FigSuggestion(name: 'mkv'),
              FigSuggestion(name: 'mp4'),
              FigSuggestion(name: 'ogg'),
              FigSuggestion(name: 'webm'),
              FigSuggestion(name: 'flv')
            ])
          ]),
      Option(name: '--write-sub', description: 'Write subtitle file'),
      Option(
          name: '--write-auto-sub',
          description:
              'Write automatically generated subtitle file (YouTube only)'),
      Option(
          name: '--all-subs',
          description: 'Download all the available subtitles of the video'),
      Option(
          name: '--list-subs',
          description: 'List all available subtitles for the video'),
      Option(
          name: '--sub-format',
          description:
              'Subtitle format, accepts formats preference, for example: "srt" or "ass/srt/best"',
          args: [Arg(name: 'FORMAT')]),
      Option(
          name: '--sub-lang',
          description:
              'Languages of the subtitles to download (optional) separated by commas',
          args: [
            Arg(
                name: 'LANGS',
                generators: FigGenerator(getQueryTerm: ','),
                suggestions: [
                  FigSuggestion(name: 'af'),
                  FigSuggestion(name: 'sq'),
                  FigSuggestion(name: 'am'),
                  FigSuggestion(name: 'ar'),
                  FigSuggestion(name: 'hy'),
                  FigSuggestion(name: 'az'),
                  FigSuggestion(name: 'bn'),
                  FigSuggestion(name: 'eu'),
                  FigSuggestion(name: 'be'),
                  FigSuggestion(name: 'bs'),
                  FigSuggestion(name: 'bg'),
                  FigSuggestion(name: 'my'),
                  FigSuggestion(name: 'ca'),
                  FigSuggestion(name: 'ceb'),
                  FigSuggestion(name: 'zh-Hans'),
                  FigSuggestion(name: 'zh-Hant'),
                  FigSuggestion(name: 'co'),
                  FigSuggestion(name: 'hr'),
                  FigSuggestion(name: 'cs'),
                  FigSuggestion(name: 'da'),
                  FigSuggestion(name: 'nl'),
                  FigSuggestion(name: 'en'),
                  FigSuggestion(name: 'eo'),
                  FigSuggestion(name: 'et'),
                  FigSuggestion(name: 'fil'),
                  FigSuggestion(name: 'fi'),
                  FigSuggestion(name: 'fr'),
                  FigSuggestion(name: 'gl'),
                  FigSuggestion(name: 'ka'),
                  FigSuggestion(name: 'de'),
                  FigSuggestion(name: 'el'),
                  FigSuggestion(name: 'gu'),
                  FigSuggestion(name: 'ht'),
                  FigSuggestion(name: 'ha'),
                  FigSuggestion(name: 'haw'),
                  FigSuggestion(name: 'iw'),
                  FigSuggestion(name: 'hi'),
                  FigSuggestion(name: 'hmn'),
                  FigSuggestion(name: 'hu'),
                  FigSuggestion(name: 'is'),
                  FigSuggestion(name: 'ig'),
                  FigSuggestion(name: 'id'),
                  FigSuggestion(name: 'ga'),
                  FigSuggestion(name: 'it'),
                  FigSuggestion(name: 'ja'),
                  FigSuggestion(name: 'jv'),
                  FigSuggestion(name: 'kn'),
                  FigSuggestion(name: 'kk'),
                  FigSuggestion(name: 'km'),
                  FigSuggestion(name: 'rw'),
                  FigSuggestion(name: 'ko'),
                  FigSuggestion(name: 'ku'),
                  FigSuggestion(name: 'ky'),
                  FigSuggestion(name: 'lo'),
                  FigSuggestion(name: 'la'),
                  FigSuggestion(name: 'lv'),
                  FigSuggestion(name: 'lt'),
                  FigSuggestion(name: 'lb'),
                  FigSuggestion(name: 'mk'),
                  FigSuggestion(name: 'mg'),
                  FigSuggestion(name: 'ms'),
                  FigSuggestion(name: 'ml'),
                  FigSuggestion(name: 'mt'),
                  FigSuggestion(name: 'mi'),
                  FigSuggestion(name: 'mr'),
                  FigSuggestion(name: 'mn'),
                  FigSuggestion(name: 'ne'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 'ny'),
                  FigSuggestion(name: 'or'),
                  FigSuggestion(name: 'ps'),
                  FigSuggestion(name: 'fa'),
                  FigSuggestion(name: 'pl'),
                  FigSuggestion(name: 'pt'),
                  FigSuggestion(name: 'pa'),
                  FigSuggestion(name: 'ro'),
                  FigSuggestion(name: 'ru'),
                  FigSuggestion(name: 'sm'),
                  FigSuggestion(name: 'gd'),
                  FigSuggestion(name: 'sr'),
                  FigSuggestion(name: 'sn'),
                  FigSuggestion(name: 'sd'),
                  FigSuggestion(name: 'si'),
                  FigSuggestion(name: 'sk'),
                  FigSuggestion(name: 'sl'),
                  FigSuggestion(name: 'so'),
                  FigSuggestion(name: 'st'),
                  FigSuggestion(name: 'es'),
                  FigSuggestion(name: 'su'),
                  FigSuggestion(name: 'sw'),
                  FigSuggestion(name: 'sv'),
                  FigSuggestion(name: 'tg'),
                  FigSuggestion(name: 'ta'),
                  FigSuggestion(name: 'tt'),
                  FigSuggestion(name: 'te'),
                  FigSuggestion(name: 'th'),
                  FigSuggestion(name: 'tr'),
                  FigSuggestion(name: 'tk'),
                  FigSuggestion(name: 'uk'),
                  FigSuggestion(name: 'ur'),
                  FigSuggestion(name: 'ug'),
                  FigSuggestion(name: 'uz'),
                  FigSuggestion(name: 'vi'),
                  FigSuggestion(name: 'cy'),
                  FigSuggestion(name: 'fy'),
                  FigSuggestion(name: 'xh'),
                  FigSuggestion(name: 'yi'),
                  FigSuggestion(name: 'yo'),
                  FigSuggestion(name: 'zu')
                ])
          ]),
      Option(
          name: ['-u', '--username'],
          description: 'Login with this account ID',
          args: [Arg(name: 'USERNAME')]),
      Option(
          name: ['-p', '--password'],
          description:
              'Account password. If this option is left out, youtube-dl will ask interactively',
          args: [Arg(name: 'PASSWORD')]),
      Option(
          name: ['-2', '--twofactor'],
          description: 'Two-factor authentication code',
          args: [Arg(name: 'TWOFACTOR')]),
      Option(
          name: ['-n', '--netrc'],
          description: 'Use .netrc authentication data'),
      Option(
          name: '--video-password',
          description: 'Video password (vimeo, youku)',
          args: [Arg(name: 'PASSWORD')]),
      Option(
          name: '--ap-mso',
          description:
              'Adobe Pass multiple-system operator (TV provider) identifier',
          args: [
            Arg(
              name: 'MSO',
              // generators: (
              //   custom: async (tokens
              // )
            )
          ]),
      Option(
          name: '--ap-username',
          description: 'Multiple-system operator account login',
          args: [Arg(name: 'USERNAME')]),
      Option(
          name: '--ap-password',
          description:
              'Multiple-system operator account password. If this option is left out, youtube-dl will ask interactively',
          args: [Arg(name: 'PASSWORD')]),
      Option(
          name: '--ap-list-mso',
          description: 'List all supported multiple-system operators'),
      Option(
          name: ['-x', '--extract-audio'],
          description:
              'Convert audio files to audio-only files (requires ffmpeg/avconv and ffprobe/avprobe)'),
      Option(
          name: '--audio-format',
          dependsOn: ['-x'],
          description: 'Specify audio format',
          args: [
            Arg(
                name: 'FORMAT',
                suggestions: [
                  FigSuggestion(name: 'best'),
                  FigSuggestion(name: 'aac'),
                  FigSuggestion(name: 'flac'),
                  FigSuggestion(name: 'mp3'),
                  FigSuggestion(name: 'm4a'),
                  FigSuggestion(name: 'opus'),
                  FigSuggestion(name: 'vorbis'),
                  FigSuggestion(name: 'wav')
                ],
                defaultValue: 'best')
          ]),
      Option(
          name: '--audio-quality',
          description:
              'Specify ffmpeg/avconv audio quality, insert a value between 0 (better) and 9 (worse) for VBR or a specific bitrate like 128K',
          args: [Arg(name: 'QUALITY', defaultValue: '5')]),
      Option(
          name: '--recode-video',
          description: 'Encode the video to another format if necessary',
          args: [
            Arg(name: 'FORMAT', suggestions: [
              FigSuggestion(name: 'mp4'),
              FigSuggestion(name: 'flv'),
              FigSuggestion(name: 'ogg'),
              FigSuggestion(name: 'webm'),
              FigSuggestion(name: 'mkv'),
              FigSuggestion(name: 'avi')
            ])
          ]),
      Option(
          name: '--postprocessor-args',
          description: 'Give these arguments to the postprocessor',
          args: [Arg(name: 'ARGS')]),
      Option(
          name: ['-k', '--keep-video'],
          description:
              'Keep the video file on disk after the post-processing; the video is erased by default'),
      Option(
          name: '--no-post-overwrites',
          description:
              'Do not overwrite post-processed files; the post-processed files are overwritten by default'),
      Option(
          name: '--embed-subs',
          description:
              'Embed subtitles in the video (only for mp4, webm and mkv videos)'),
      Option(
          name: '--embed-thumbnail',
          description: 'Embed thumbnail in the audio as cover art'),
      Option(
          name: '--embed-metadata',
          description: 'Write metadata to the video file'),
      Option(
          name: '--metadata-from-title',
          description:
              'Parse additional metadata like song title / artist from the video title. The format syntax is the same as --output. Regular expressions with named capture groups may also be used. The parsed parameters replace existing values',
          args: [Arg(name: 'FORMAT')]),
      Option(
          name: '--xattrs',
          description:
              'Write metadata to the video file\'s xattrs (using dublin core and xdg standards)'),
      Option(
          name: '--fixup',
          description: 'Automatically correct known faults of the file',
          args: [
            Arg(
                name: 'POLICY',
                suggestions: [
                  FigSuggestion(name: 'never', description: 'Do nothing'),
                  FigSuggestion(
                      name: 'warn', description: 'Only emit a warning'),
                  FigSuggestion(
                      name: 'detect_or_warn',
                      description: 'Fix file if we can, warn otherwise')
                ],
                defaultValue: 'detect_or_warn')
          ]),
      Option(
          name: '--prefer-avconv',
          description:
              'Prefer avconv over ffmpeg for running the postprocessors'),
      Option(
          name: '--prefer-ffmpeg',
          description:
              'Prefer ffmpeg over avconv for running the postprocessors (default)'),
      Option(
          name: '--ffmpeg-location',
          description:
              'Location of the ffmpeg/avconv binary; either the path to the binary or its containing directory',
          args: [
            Arg(name: 'PATH', template: ['folders', 'filepaths'])
          ]),
      Option(
          name: '--exec',
          description:
              'Execute a command on the file after downloading and post-processing, similar to find\'s -exec syntax',
          args: [Arg(name: 'CMD')]),
      Option(
          name: '--convert-subs',
          description: 'Convert the subtitles to other format',
          args: [
            Arg(name: 'FORMAT', suggestions: [
              FigSuggestion(name: 'srt'),
              FigSuggestion(name: 'ass'),
              FigSuggestion(name: 'vtt'),
              FigSuggestion(name: 'lrc')
            ])
          ])
    ]);
