import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final trustSubcommand = FigSubcommand(
  name: 'trust',
  description: 'Manage trust on Docker images',
  subcommands: [
    FigSubcommand(
      name: 'inspect',
      description: 'Return low-level information about keys and signatures',
      args: [
        FigArg(
          name: 'IMAGE[:TAG]',
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['--pretty'],
          description: 'Print the information in a human friendly format',
        ),
      ],
    ),
    FigSubcommand(
      name: 'revoke',
      description: 'Remove trust for an image',
      args: [imagesArg],
      options: [
        FigOption(
          name: ['-y', '--yes'],
          description: 'Do not prompt for confirmation',
        ),
      ],
    ),
    FigSubcommand(
      name: 'sign',
      description: 'Sign an image',
      args: [imagesArg],
      options: [
        FigOption(
          name: ['--local'],
          description: 'Sign a locally tagged image',
        ),
      ],
    ),
  ],
);
