// AI-generated from TypeScript source: sips.ts
import 'package:autocomplete/src/spec.dart';

const List<String> propertySuggestions = [
  'all',
  'allxml',
  'dpiHeight',
  'dpiWidth',
  'pixelHeight',
  'pixelWidth',
  'typeIdentifier',
  'format',
  'formatOptions',
  'space',
  'samplesPerPixel',
  'bitsPerSample',
  'creation',
  'make',
  'model',
  'software',
  'description',
  'copyright',
  'artist',
  'profile',
  'hasAlpha',
  'size',
  'cmm',
  'version',
  'class',
  'pcs',
  'platform',
  'quality',
  'deviceManufacturer',
  'deviceModel',
  'deviceAttributes0',
  'deviceAttributes1',
  'renderingIntent',
  'creator',
  'md5',
];

final FigSpec sipsSpec = FigSpec(
  name: 'sips',
  description: 'Scriptable image processing system',
  args: [
    FigArg(
      name: 'file',
      template: 'filepaths',
    ),
  ],
  options: [
    FigOption(
      name: ['-g', '--getProperty'],
      description: 'Output the property value for key to stdout',
      args: [
        FigArg(
          name: 'key',
          suggestions: propertySuggestions.map((e) => FigSuggestion(name: e)).toList(),
        ),
      ],
    ),
    FigOption(
      name: ['-s', '--setProperty'],
      description: 'Set a property value for key to value',
      args: [
        FigArg(
          name: 'key',
          suggestions: propertySuggestions.map((e) => FigSuggestion(name: e)).toList(),
        ),
        FigArg(
          name: 'value',
        ),
      ],
    ),
    FigOption(
      name: ['-d', '--deleteProperty'],
      description: 'Remove a property value for key',
      args: [
        FigArg(
          name: 'key',
          suggestions: propertySuggestions.map((e) => FigSuggestion(name: e)).toList(),
        ),
      ],
    ),
    FigOption(
      name: ['-X', '--extractTag'],
      description: 'Extract a profile tag element to tagFile',
      args: [
        FigArg(
          name: 'tag',
        ),
        FigArg(
          name: 'tagFile',
        ),
      ],
    ),
    FigOption(
      name: ['--verify'],
      description: 'Verify any profile problems and log output to stdout',
    ),
    FigOption(
      name: ['-x', '--extractProfile'],
      description: 'Get the embedded profile from image and write it to profile',
      args: [
        FigArg(
          name: 'profile',
        ),
      ],
    ),
    FigOption(
      name: ['--deleteTag'],
      description: 'Remove the tag element from a profile',
      args: [
        FigArg(
          name: 'tag',
        ),
      ],
    ),
    FigOption(
      name: ['--copyTag'],
      description: 'Copy the srcTag element of a profile to dstTag',
      args: [
        FigArg(
          name: 'srcTag',
        ),
        FigArg(
          name: 'dstTag',
        ),
      ],
    ),
    FigOption(
      name: ['--loadTag'],
      description: 'Set the tag element of a profile to the contents of tagFile',
      args: [
        FigArg(
          name: 'tag',
        ),
        FigArg(
          name: 'tagFile',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--repair'],
      description: 'Repair any profile problems and log output to stdout',
    ),
    FigOption(
      name: ['-e', '--embedProfile'],
      description: 'Embed profile in image',
      args: [
        FigArg(
          name: 'profile',
        ),
      ],
    ),
    FigOption(
      name: ['-E', '--embedProfileIfNone'],
      description: 'Embed profile in image only if image doesn\'t have a profile',
      args: [
        FigArg(
          name: 'profile',
        ),
      ],
    ),
    FigOption(
      name: ['-m', '--matchTo'],
      description: 'Color match image to profile',
      args: [
        FigArg(
          name: 'profile',
        ),
      ],
    ),
    FigOption(
      name: ['-M', '--matchToWithIntent'],
      description: 'Color match image to profile with rendering intent perceptual | relative | saturation | absolute',
      args: [
        FigArg(
          name: 'profile',
        ),
        FigArg(
          name: 'intent',
          suggestions: ['perceptual', 'relative', 'saturation', 'absolute']
              .map((e) => FigSuggestion(name: e))
              .toList(),
        ),
      ],
    ),
    FigOption(
      name: ['--deleteColorManagementProperties'],
      description: 'Delete color management properties in TIFF, PNG, and EXIF dictionaries',
    ),
    FigOption(
      name: ['-r', '--rotate'],
      args: [
        FigArg(
          name: 'degreesCW',
        ),
      ],
    ),
    FigOption(
      name: ['-f', '--flip'],
      args: [
        FigArg(
          name: 'axis',
          suggestions: ['horizontal', 'vertical'].map((e) => FigSuggestion(name: e)).toList(),
        ),
      ],
    ),
    FigOption(
      name: ['-c', '--cropToHeightWidth'],
      description: 'Crop image to fit specified size',
      args: [
        FigArg(
          name: 'pixelsH',
        ),
        FigArg(
          name: 'pixelsW',
        ),
      ],
    ),
    FigOption(
      name: ['-p', '--padToHeightWidth'],
      description: 'Pad image with pixels to fit specified size',
      args: [
        FigArg(
          name: 'pixelsH',
        ),
        FigArg(
          name: 'pixelsW',
        ),
      ],
    ),
    FigOption(
      name: ['-padColor'],
      description: 'Use this color when padding.  White=FFFFFF, Red=FF0000, Default=Black=000000',
      args: [
        FigArg(
          name: 'hexcolor',
        ),
      ],
    ),
    FigOption(
      name: ['-z', '--resampleHeightWidth'],
      description: 'Resample image at specified size. Image apsect ratio may be altered',
      args: [
        FigArg(
          name: 'pixelsH',
        ),
        FigArg(
          name: 'pixelsW',
        ),
      ],
    ),
    FigOption(
      name: ['--resampleWidth'],
      description: 'Resample image to specified width',
      args: [
        FigArg(
          name: 'pixelsW',
        ),
      ],
    ),
    FigOption(
      name: ['--resampleHeight'],
      description: 'Resample image to specified height',
      args: [
        FigArg(
          name: 'pixelsH',
        ),
      ],
    ),
    FigOption(
      name: ['-Z', '--resampleHeightWidthMax'],
      description: 'Resample image so height and width aren\'t greater than specified size',
      args: [
        FigArg(
          name: 'pixelsWH',
        ),
      ],
    ),
    FigOption(
      name: ['-i', '--addIcon'],
      description: 'Add a Finder icon to image file',
      args: [
        FigArg(
          name: 'icon',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--debug'],
      description: 'Enable debugging output',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Show help',
    ),
    FigOption(
      name: ['-H', '--helpProperties'],
      description: 'Show help for properties',
    ),
    FigOption(
      name: ['--man'],
      description: 'Generate man pages',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Show the version',
    ),
    FigOption(
      name: ['--formats'],
      description: 'Show the read/write formats',
    ),
  ],
);
