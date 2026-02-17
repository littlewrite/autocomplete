// Auto-generated from TypeScript source: spotify.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `spotify` CLI
final FigSpec spotifySpec = FigSpec(
  name: 'spotify',
  description: 'CLI to use Spotify from the terminal',
  subcommands: [

    Subcommand(
      name: 'play',
      description: 'Resume playback where Spotify last left off',
      args: [
        Arg(
        name: 'song name',
        description: 'The name of the song to start playing',
        isOptional: true
      )
      ],
      subcommands: [

        Subcommand(
          name: 'album',
          description: 'Find an album by name and play it',
          args: [
            Arg(
            name: 'album name',
            description: 'The album name you want to play'
          )
          ]
        ),
        Subcommand(
          name: 'artist',
          description: 'Find an artist by name and play it',
          args: [
            Arg(
            name: 'artist name',
            description: 'The artist name you want to play'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Find a playlist by name and plays it',
          args: [
            Arg(
            name: 'playlist name',
            description: 'The playlist name you want to play'
          )
          ]
        ),
        Subcommand(
          name: 'uri',
          description: 'Play songs from specific uri',
          args: [
            Arg(
            name: 'uri',
            description: 'The uri of the song you want to play'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'next',
      description: 'Skip to the next song in a playlist'
    ),
    Subcommand(
      name: 'prev',
      description: 'Return to the previous song in a playlist'
    ),
    Subcommand(
      name: 'replay',
      description: 'Replay the current track from the beginning'
    ),
    Subcommand(
      name: 'pos',
      description: 'Jump to a time (in secs) in the current song',
      args: [
        Arg(
        name: 'time',
        description: 'Exact time in secs to jump in'
      )
      ]
    ),
    Subcommand(
      name: 'pause',
      description: 'Pause (or resume) Spotify playback'
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop playback'
    ),
    Subcommand(
      name: 'quit',
      description: 'Stop playback and quit Spotify'
    ),
    Subcommand(
      name: 'vol',
      description: 'Show the current Spotify volume',
      args: [
        Arg(
        name: 'amount',
        description: 'Set the volume to an amount between 0 and 100',
        isOptional: true,
        suggestions: [

          FigSuggestion(
            name: 'up',
            description: 'Increase the volume by 10%'
          ),
          FigSuggestion(
            name: 'down',
            description: 'Decrease the volume by 10%'
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Show the current player status',
      subcommands: [

        Subcommand(
          name: 'artist',
          description: 'Show the currently playing artist'
        ),
        Subcommand(
          name: 'album',
          description: 'Show the currently playing album'
        ),
        Subcommand(
          name: 'track',
          description: 'Show the currently playing track'
        )
      ]
    ),
    Subcommand(
      name: 'share',
      description: 'Display the current song\'s Spotify URL and URI',
      subcommands: [

        Subcommand(
          name: 'url',
          description: 'Display the current song\'s Spotify URL and copies it to the clipboard'
        ),
        Subcommand(
          name: 'uri',
          description: 'Display the current song\'s Spotify URI and copies it to the clipboard'
        )
      ]
    ),
    Subcommand(
      name: 'toggle',
      subcommands: [

        Subcommand(
          name: 'shuffle',
          description: 'Toggle shuffle playback mode'
        ),
        Subcommand(
          name: 'repeat',
          description: 'Toggle repeat playback mode'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for spotify'
    )
  ]
);
