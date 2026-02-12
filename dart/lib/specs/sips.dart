// Auto-generated from TypeScript source: sips.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sips` CLI
final FigSpec sipsSpec = FigSpec(
  name: 'sips',
  description: 'Scriptable image processing system',
  args: [
    Arg(
    name: 'file',
    template: 'filepaths'
  )
  ],
  options: [
    Option(
      name: ['-g', '--getProperty'],
      description: 'Output the property value for key to stdout',
      args: [
        Arg(
        name: 'key'
      )
      ]
    ),
    Option(
      name: ['-s', '--setProperty'],
      description: 'Set a property value for key to value',
      args: [
        Arg(
          name: 'key'
        ),
        Arg(
          name: 'value'
        )
      ]
    ),
    Option(
      name: ['-d', '--deleteProperty'],
      description: 'Remove a property value for key',
      args: [
        Arg(
        name: 'key'
      )
      ]
    ),
    Option(
      name: ['-X', '--extractTag'],
      description: 'Extract a profile tag element to tagFile',
      args: [
        Arg(
          name: 'tag'
        ),
        Arg(
          name: 'tagFile'
        )
      ]
    ),
    Option(
      name: '--verify',
      description: 'Verify any profile problems and log output to stdout'
    ),
    Option(
      name: ['-x', '--extractProfile'],
      description: 'Get the embedded profile from image and write it to profile',
      args: [
        Arg(
        name: 'profile'
      )
      ]
    ),
    Option(
      name: '--deleteTag',
      args: [
        Arg(
        name: 'ta'
      )
      ],
      description: 'Remove the tag element from a profile'
    ),
    Option(
      name: '--copyTag',
      description: 'Copy the srcTag element of a profile to dstTag',
      args: [
        Arg(
          name: 'srcTag'
        ),
        Arg(
          name: 'dstTag'
        )
      ]
    ),
    Option(
      name: '--loadTag',
      description: 'Set the tag element of a profile to the contents of tagFile',
      args: [
        Arg(
          name: 'tag'
        ),
        Arg(
          name: 'tagFile',
          template: 'filepaths'
        )
      ]
    ),
    Option(
      name: '--repair',
      description: 'Repair any profile problems and log output to stdout'
    ),
    Option(
      name: ['-e', '--embedProfile'],
      description: 'Embed profile in image',
      args: [
        Arg(
        name: 'profile'
      )
      ]
    ),
    Option(
      name: ['-E', '--embedProfileIfNone'],
      description: 'Embed profile in image only if image doesn\'t have a profile',
      args: [
        Arg(
        name: 'profile'
      )
      ]
    ),
    Option(
      name: ['-m', '--matchTo'],
      description: 'Color match image to profile',
      args: [
        Arg(
        name: 'profile'
      )
      ]
    ),
    Option(
      name: ['-M', '--matchToWithIntent'],
      description: 'Color match image to profile with rendering intent perceptual | relative | saturation | absolute',
      args: [
        Arg(
          name: 'profile'
        ),
        Arg(
          name: 'intent',
          suggestions: [
            FigSuggestion(name: 'perceptual'),
            FigSuggestion(name: 'relative'),
            FigSuggestion(name: 'saturation'),
            FigSuggestion(name: 'absolute')
          ]
        )
      ]
    ),
    Option(
      name: '--deleteColorManagementProperties',
      description: 'Delete color management properties in TIFF, PNG, and EXIF dictionaries'
    ),
    Option(
      name: ['-r', '--rotate'],
      args: [
        Arg(
        name: 'degreesCW'
      )
      ]
    ),
    Option(
      name: ['-f', '--flip'],
      args: [
        Arg(
        name: 'axis',
        suggestions: [
          FigSuggestion(name: 'horizontal'),
          FigSuggestion(name: 'vertical')
        ]
      )
      ]
    ),
    Option(
      name: ['-c', '--cropToHeightWidth'],
      description: 'Crop image to fit specified size',
      args: [
        Arg(
          name: 'pixelsH'
        ),
        Arg(
          name: 'pixelsW'
        )
      ]
    ),
    Option(
      name: ['-p', '--padToHeightWidth'],
      description: 'Pad image with pixels to fit specified size',
      args: [
        Arg(
          name: 'pixelsH'
        ),
        Arg(
          name: 'pixelsW'
        )
      ]
    ),
    Option(
      name: '-padColor',
      description: 'Use this color when padding.  White=FFFFFF, Red=FF0000, Default=Black=000000',
      args: [
        Arg(
        name: 'hexcolor'
      )
      ]
    ),
    Option(
      name: ['-z', '--resampleHeightWidth'],
      description: 'Resample image at specified size. Image apsect ratio may be altered',
      args: [
        Arg(
          name: 'pixelsH'
        ),
        Arg(
          name: 'pixelsW'
        )
      ]
    ),
    Option(
      name: '--resampleWidth',
      description: 'Resample image to specified width',
      args: [
        Arg(
        name: 'pixelsW'
      )
      ]
    ),
    Option(
      name: '--resampleHeight',
      description: 'Resample image to specified height',
      args: [
        Arg(
        name: 'pixelsH'
      )
      ]
    ),
    Option(
      name: ['-Z', '--resampleHeightWidthMax'],
      description: 'Resample image so height and width aren\'t greater than specified size',
      args: [
        Arg(
        name: 'pixelsWH'
      )
      ]
    ),
    Option(
      name: ['-i', '--addIcon'],
      description: 'Add a Finder icon to image file',
      args: [
        Arg(
        name: 'icon',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Enable debugging output'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help'
    ),
    Option(
      name: ['-H', '--helpProperties'],
      description: 'Show help for properties'
    ),
    Option(
      name: '--man',
      description: 'Generate man pages'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show the version'
    ),
    Option(
      name: '--formats',
      description: 'Show the read/write formats'
    )
  ]
);
