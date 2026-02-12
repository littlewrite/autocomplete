// Auto-generated from TypeScript source: remotion.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `remotion` CLI
final FigSpec remotionSpec = FigSpec(
  name: 'remotion',
  description: 'Create videos programmatically in React',
  subcommands: [
    Subcommand(
      name: 'versions',
      description: 'Prints and validates versions of all Remotion packages'
    ),
    Subcommand(
      name: 'gpu',
      description: 'Prints information about how Chrome uses the GPU'
    ),
    Subcommand(
      name: 'compositions',
      description: 'Prints the list of available compositions',
      args: [
        Arg(
        name: 'entry',
        description: 'The entry point of your Remotion app',
        template: ['filepaths']
      )
      ],
      options: [
        Option(
          name: '--props',
          description: 'Pass input props as filename or as JSON',
          args: [
            Arg(
            template: ['filepaths'],
            suggestions: [
              FigSuggestion(
                insertValue: '\'{cursor}\''
              )
            ]
          )
          ]
        ),
        Option(
          name: '--env-file',
          description: 'Specify a location for a dotenv file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--disable-headless',
          description: 'Run Chrome in normal mode rather than headless'
        ),
        Option(
          name: '--gl',
          description: 'Which OpenGL renderer to use',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'angle'),
              FigSuggestion(name: 'egl'),
              FigSuggestion(name: 'swiftshader'),
              FigSuggestion(name: 'swangle'),
              FigSuggestion(name: 'vulkan')
            ]
          )
          ]
        ),
        Option(
          name: '--user-agent',
          description: 'User agent to use for Chrome during rendering'
        ),
        Option(
          name: '--ignore-certificate-errors',
          description: 'Ignore SSL errors'
        ),
        Option(
          name: '--disable-web-security',
          description: 'Disable CORS and other web security features'
        )
      ]
    ),
    Subcommand(
      name: 'lambda',
      description: 'Access functionality of @remotion/lambda',
      subcommands: [
        Subcommand(
          name: 'policies',
          description: 'Manage AWS policies',
          subcommands: [
            Subcommand(
              name: 'role',
              description: 'Print policy to be added to the AWS role'
            ),
            Subcommand(
              name: 'user',
              description: 'Print policy to be added to the AWS user'
            ),
            Subcommand(
              name: 'validate',
              description: 'Validate the user policy was configured correctly'
            )
          ]
        ),
        Subcommand(
          name: 'quotas',
          description: 'Show current AWS quota',
          options: [
            Option(
              name: '--quiet',
              description: 'Print less output'
            ),
            Option(
              name: '-q',
              description: 'Print less output'
            ),
            Option(
              name: '--log',
              description: 'Log level, "error", "warning", "verbose", "info" (default)',
              args: [
                Arg(
                defaultValue: 'info',
                suggestions: [
                  FigSuggestion(
                    name: 'verbose'
                  ),
                  FigSuggestion(
                    name: 'info'
                  ),
                  FigSuggestion(
                    name: 'warn'
                  ),
                  FigSuggestion(
                    name: 'error'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--config',
              description: 'Custom location for a Remotion config file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Skip confirmation'
            ),
            Option(
              name: '--force',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-y',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-f',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '--region',
              description: 'The AWS region specifier',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'us-east-1',
                    description: 'North Virginia'
                  ),
                  FigSuggestion(
                    name: 'us-east-2',
                    description: 'Ohio'
                  ),
                  FigSuggestion(
                    name: 'eu-central-1',
                    description: 'Frankfurt'
                  ),
                  FigSuggestion(
                    name: 'eu-west-1',
                    description: 'Ireland'
                  ),
                  FigSuggestion(
                    name: 'eu-west-2',
                    description: 'London'
                  ),
                  FigSuggestion(
                    name: 'us-west-2',
                    description: 'Oregon'
                  ),
                  FigSuggestion(
                    name: 'ap-south-1',
                    description: 'Mumbai'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-1',
                    description: 'Singapore'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-2',
                    description: 'Sydney'
                  ),
                  FigSuggestion(
                    name: 'ap-northeast-1',
                    description: 'Tokyo'
                  )
                ]
              )
              ]
            )
          ],
          subcommands: [
            Subcommand(
              name: 'increase',
              description: 'Send a request to AWS to increase concurrency quotas',
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regions',
          description: 'Prints list of supported regions',
          options: [
            Option(
              name: '--default-only',
              description: 'Only print the regions enabled by default in a new AWS account'
            )
          ]
        ),
        Subcommand(
          name: 'render',
          description: 'Render media on Lambda',
          args: [
            Arg(
              name: 'serve-url',
              description: 'URL or name of the site',
              suggestions: [
                FigSuggestion(
                )
              ]
            ),
            Arg(
              name: 'composition-id',
              description: 'Name of the composition',
              suggestions: [
                FigSuggestion(
                )
              ]
            ),
            Arg(
              name: 'out-name',
              description: 'Where the output should be downloaded. No download it omitted',
              suggestions: [
                FigSuggestion(
                )
              ],
              isOptional: true
            )
          ],
          options: [
            Option(
              name: '--max-retries',
              description: 'How many times a chunk can be retried before the render times out',
              args: [
                Arg(
                name: 'numberOfRetries'
              )
              ]
            ),
            Option(
              name: '--privacy',
              args: [
                Arg(
                name: 'privacy',
                defaultValue: 'public',
                suggestions: [
                  FigSuggestion(name: 'public'),
                  FigSuggestion(name: 'private')
                ]
              )
              ]
            ),
            Option(
              name: '--frames-per-lambda',
              description: 'How many frames should be rendered per chunk',
              args: [
                Arg(
                name: 'framesPerLambda'
              )
              ]
            ),
            Option(
              name: '--props',
              description: 'Pass input props as filename or as JSON',
              args: [
                Arg(
                template: ['filepaths'],
                suggestions: [
                  FigSuggestion(
                    insertValue: '\'{cursor}\''
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--disable-headless',
              description: 'Run Chrome in normal mode rather than headless'
            ),
            Option(
              name: '--gl',
              description: 'Which OpenGL renderer to use',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(name: 'angle'),
                  FigSuggestion(name: 'egl'),
                  FigSuggestion(name: 'swiftshader'),
                  FigSuggestion(name: 'swangle'),
                  FigSuggestion(name: 'vulkan')
                ]
              )
              ]
            ),
            Option(
              name: '--user-agent',
              description: 'User agent to use for Chrome during rendering'
            ),
            Option(
              name: '--ignore-certificate-errors',
              description: 'Ignore SSL errors'
            ),
            Option(
              name: '--disable-web-security',
              description: 'Disable CORS and other web security features'
            ),
            Option(
              name: '--concurrency-per-lambda',
              description: 'Concurrency with which each Lambda function should render',
              args: [
                Arg(
                name: 'concurrencyPerLambda'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite a video if it already exists in the S3 bucket'
            ),
            Option(
              name: '--function-name',
              description: 'Name of the function that should be invoked'
            ),
            Option(
              name: '--renderer-function-name',
              description: 'Use a different function to render the video. By default, use the same function as the one to start the render'
            ),
            Option(
              name: '--timeout',
              description: 'The time in milisecond that a delayRender() may take before it times out'
            ),
            Option(
              name: '--quality',
              description: 'Quality for rendered frames, JPEG only, 0-100',
              args: [
                Arg(
                defaultValue: '80',
                suggestions: [
                  FigSuggestion(
                    name: '0'
                  ),
                  FigSuggestion(
                    name: '10'
                  ),
                  FigSuggestion(
                    name: '20'
                  ),
                  FigSuggestion(
                    name: '30'
                  ),
                  FigSuggestion(
                    name: '40'
                  ),
                  FigSuggestion(
                    name: '50'
                  ),
                  FigSuggestion(
                    name: '60'
                  ),
                  FigSuggestion(
                    name: '70'
                  ),
                  FigSuggestion(
                    name: '80'
                  ),
                  FigSuggestion(
                    name: '90'
                  ),
                  FigSuggestion(
                    name: '100'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--scale',
              description: 'Upscale or downscale or the dimensions of the video',
              args: [
                Arg(
                defaultValue: '1',
                suggestions: [
                  FigSuggestion(
                    name: '0.25'
                  ),
                  FigSuggestion(
                    name: '0.5'
                  ),
                  FigSuggestion(
                    name: '1'
                  ),
                  FigSuggestion(
                    name: '1.5'
                  ),
                  FigSuggestion(
                    name: '2'
                  ),
                  FigSuggestion(
                    name: '4'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--codec',
              description: 'Video or audio codec',
              args: [
                Arg(
                defaultValue: 'h264',
                suggestions: [
                  FigSuggestion(
                    name: 'h264'
                  ),
                  FigSuggestion(
                    name: 'h265'
                  ),
                  FigSuggestion(
                    name: 'gif'
                  ),
                  FigSuggestion(
                    name: 'vp8'
                  ),
                  FigSuggestion(
                    name: 'vp9'
                  ),
                  FigSuggestion(
                    name: 'mp3'
                  ),
                  FigSuggestion(
                    name: 'aac'
                  ),
                  FigSuggestion(
                    name: 'wav'
                  ),
                  FigSuggestion(
                    name: 'prores'
                  ),
                  FigSuggestion(
                    name: 'h264-mkv'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--audio-codec',
              description: 'Codec to be used for the audio',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'aac'
                  ),
                  FigSuggestion(
                    name: 'mp3'
                  ),
                  FigSuggestion(
                    name: 'opus'
                  ),
                  FigSuggestion(
                    name: 'pcm-16'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--every-nth-frame',
              description: 'Render only every nth frame (only for GIFs)',
              args: [
                Arg(
                defaultValue: '1',
                suggestions: [
                  FigSuggestion(
                    name: '2'
                  ),
                  FigSuggestion(
                    name: '3'
                  ),
                  FigSuggestion(
                    name: '4'
                  ),
                  FigSuggestion(
                    name: '5'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--number-of-gif-loops',
              description: 'How many times a GIF should loop. 0 = No loop',
              args: [
                Arg(
                defaultValue: '1',
                suggestions: [
                  FigSuggestion(
                    name: '0'
                  ),
                  FigSuggestion(
                    name: '1'
                  ),
                  FigSuggestion(
                    name: '2'
                  ),
                  FigSuggestion(
                    name: '3'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--audio-bitrate',
              description: 'Customize the output audio bitrate'
            ),
            Option(
              name: '--video-bitrate',
              description: 'Customize the output video bitrate. Mutually exclusive with --crf',
              exclusiveOn: ['--crf']
            ),
            Option(
              name: '--crf',
              description: 'FFMPEG CRF value, controls quality, see docs for info',
              exclusiveOn: ['--video-bitrate']
            ),
            Option(
              name: '--frames',
              description: 'Render a portion or a still of a video, 0-9, 50',
              args: [
                Arg(
                name: 'frames'
              )
              ]
            ),
            Option(
              name: '--prores-profile',
              description: 'ProRes profile, need --codec=prores to be set',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(name: '4444-xq'),
                  FigSuggestion(name: '4444'),
                  FigSuggestion(name: 'hq'),
                  FigSuggestion(name: 'standard'),
                  FigSuggestion(name: 'light'),
                  FigSuggestion(name: 'proxy')
                ]
              )
              ]
            ),
            Option(
              name: '--x264-preset',
              description: 'Presets balance encoding speed and compression quality, with slower presets achieving better compression. Needs --codec=h264 to be set',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(name: 'ultrafast'),
                  FigSuggestion(name: 'superfast'),
                  FigSuggestion(name: 'veryfast'),
                  FigSuggestion(name: 'faster'),
                  FigSuggestion(name: 'fast'),
                  FigSuggestion(name: 'medium'),
                  FigSuggestion(name: 'slow'),
                  FigSuggestion(name: 'slower'),
                  FigSuggestion(name: 'veryslow'),
                  FigSuggestion(name: 'placebo')
                ]
              )
              ]
            ),
            Option(
              name: '--image-format',
              description: 'Format to render the frames in, "jpeg" or "png"',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'jpeg'
                  ),
                  FigSuggestion(
                    name: 'png'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--pixel-format',
              description: 'Custom pixel format, see docs for available values',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'yuv420p'
                  ),
                  FigSuggestion(
                    name: 'yuv422p'
                  ),
                  FigSuggestion(
                    name: 'yuv444p'
                  ),
                  FigSuggestion(
                    name: 'yuv420p10le'
                  ),
                  FigSuggestion(
                    name: 'yuv422p10le'
                  ),
                  FigSuggestion(
                    name: 'yuv444p10le'
                  ),
                  FigSuggestion(
                    name: 'yuva420p'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--muted',
              description: 'Outputs no audio'
            ),
            Option(
              name: '--height',
              description: 'Override the composition height',
              args: [
                Arg(
                name: 'height'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Override the composition width',
              args: [
                Arg(
                name: 'height'
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Print less output'
            ),
            Option(
              name: '-q',
              description: 'Print less output'
            ),
            Option(
              name: '--log',
              description: 'Log level, "error", "warning", "verbose", "info" (default)',
              args: [
                Arg(
                defaultValue: 'info',
                suggestions: [
                  FigSuggestion(
                    name: 'verbose'
                  ),
                  FigSuggestion(
                    name: 'info'
                  ),
                  FigSuggestion(
                    name: 'warn'
                  ),
                  FigSuggestion(
                    name: 'error'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--config',
              description: 'Custom location for a Remotion config file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Skip confirmation'
            ),
            Option(
              name: '--force',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-y',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-f',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '--region',
              description: 'The AWS region specifier',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'us-east-1',
                    description: 'North Virginia'
                  ),
                  FigSuggestion(
                    name: 'us-east-2',
                    description: 'Ohio'
                  ),
                  FigSuggestion(
                    name: 'eu-central-1',
                    description: 'Frankfurt'
                  ),
                  FigSuggestion(
                    name: 'eu-west-1',
                    description: 'Ireland'
                  ),
                  FigSuggestion(
                    name: 'eu-west-2',
                    description: 'London'
                  ),
                  FigSuggestion(
                    name: 'us-west-2',
                    description: 'Oregon'
                  ),
                  FigSuggestion(
                    name: 'ap-south-1',
                    description: 'Mumbai'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-1',
                    description: 'Singapore'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-2',
                    description: 'Sydney'
                  ),
                  FigSuggestion(
                    name: 'ap-northeast-1',
                    description: 'Tokyo'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'compositions',
          description: 'Get the list of available compositions on Lambda',
          args: [
            Arg(
            name: 'serve-url',
            description: 'URL or name of the site',
            suggestions: [
              FigSuggestion(
              )
            ]
          )
          ],
          options: [
            Option(
              name: '--quiet',
              description: 'Print less output'
            ),
            Option(
              name: '-q',
              description: 'Print less output'
            ),
            Option(
              name: '--log',
              description: 'Log level, "error", "warning", "verbose", "info" (default)',
              args: [
                Arg(
                defaultValue: 'info',
                suggestions: [
                  FigSuggestion(
                    name: 'verbose'
                  ),
                  FigSuggestion(
                    name: 'info'
                  ),
                  FigSuggestion(
                    name: 'warn'
                  ),
                  FigSuggestion(
                    name: 'error'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--config',
              description: 'Custom location for a Remotion config file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Skip confirmation'
            ),
            Option(
              name: '--force',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-y',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-f',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '--region',
              description: 'The AWS region specifier',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'us-east-1',
                    description: 'North Virginia'
                  ),
                  FigSuggestion(
                    name: 'us-east-2',
                    description: 'Ohio'
                  ),
                  FigSuggestion(
                    name: 'eu-central-1',
                    description: 'Frankfurt'
                  ),
                  FigSuggestion(
                    name: 'eu-west-1',
                    description: 'Ireland'
                  ),
                  FigSuggestion(
                    name: 'eu-west-2',
                    description: 'London'
                  ),
                  FigSuggestion(
                    name: 'us-west-2',
                    description: 'Oregon'
                  ),
                  FigSuggestion(
                    name: 'ap-south-1',
                    description: 'Mumbai'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-1',
                    description: 'Singapore'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-2',
                    description: 'Sydney'
                  ),
                  FigSuggestion(
                    name: 'ap-northeast-1',
                    description: 'Tokyo'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--props',
              description: 'Pass input props as filename or as JSON',
              args: [
                Arg(
                template: ['filepaths'],
                suggestions: [
                  FigSuggestion(
                    insertValue: '\'{cursor}\''
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--env-file',
              description: 'Specify a location for a dotenv file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--disable-headless',
              description: 'Run Chrome in normal mode rather than headless'
            ),
            Option(
              name: '--gl',
              description: 'Which OpenGL renderer to use',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(name: 'angle'),
                  FigSuggestion(name: 'egl'),
                  FigSuggestion(name: 'swiftshader'),
                  FigSuggestion(name: 'swangle'),
                  FigSuggestion(name: 'vulkan')
                ]
              )
              ]
            ),
            Option(
              name: '--user-agent',
              description: 'User agent to use for Chrome during rendering'
            ),
            Option(
              name: '--ignore-certificate-errors',
              description: 'Ignore SSL errors'
            ),
            Option(
              name: '--disable-web-security',
              description: 'Disable CORS and other web security features'
            )
          ]
        ),
        Subcommand(
          name: 'still',
          description: 'Render a still on Lambda',
          args: [
            Arg(
              name: 'serve-url',
              description: 'URL or name of the site',
              suggestions: [
                FigSuggestion(
                )
              ]
            ),
            Arg(
              name: 'composition-id',
              description: 'Name of the composition',
              suggestions: [
                FigSuggestion(
                )
              ]
            ),
            Arg(
              name: 'out-name',
              description: 'Where the output should be downloaded. No download it omitted',
              isOptional: true,
              suggestions: [
                FigSuggestion(
                )
              ]
            )
          ],
          options: [
            Option(
              name: '--max-retries',
              description: 'How many times a chunk can be retried before the render times out',
              args: [
                Arg(
                name: 'numberOfRetries'
              )
              ]
            ),
            Option(
              name: '--privacy',
              args: [
                Arg(
                name: 'privacy',
                defaultValue: 'public',
                suggestions: [
                  FigSuggestion(name: 'public'),
                  FigSuggestion(name: 'private')
                ]
              )
              ]
            ),
            Option(
              name: '--frames-per-lambda',
              description: 'How many frames should be rendered per chunk',
              args: [
                Arg(
                name: 'framesPerLambda'
              )
              ]
            ),
            Option(
              name: '--props',
              description: 'Pass input props as filename or as JSON',
              args: [
                Arg(
                template: ['filepaths'],
                suggestions: [
                  FigSuggestion(
                    insertValue: '\'{cursor}\''
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--disable-headless',
              description: 'Run Chrome in normal mode rather than headless'
            ),
            Option(
              name: '--gl',
              description: 'Which OpenGL renderer to use',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(name: 'angle'),
                  FigSuggestion(name: 'egl'),
                  FigSuggestion(name: 'swiftshader'),
                  FigSuggestion(name: 'swangle'),
                  FigSuggestion(name: 'vulkan')
                ]
              )
              ]
            ),
            Option(
              name: '--user-agent',
              description: 'User agent to use for Chrome during rendering'
            ),
            Option(
              name: '--ignore-certificate-errors',
              description: 'Ignore SSL errors'
            ),
            Option(
              name: '--disable-web-security',
              description: 'Disable CORS and other web security features'
            ),
            Option(
              name: '--frame',
              description: 'Which frame to render (default 0)',
              args: [
                Arg(
                name: 'frame',
                defaultValue: '0'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Override the composition height',
              args: [
                Arg(
                name: 'height'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Override the composition width',
              args: [
                Arg(
                name: 'height'
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Print less output'
            ),
            Option(
              name: '-q',
              description: 'Print less output'
            ),
            Option(
              name: '--log',
              description: 'Log level, "error", "warning", "verbose", "info" (default)',
              args: [
                Arg(
                defaultValue: 'info',
                suggestions: [
                  FigSuggestion(
                    name: 'verbose'
                  ),
                  FigSuggestion(
                    name: 'info'
                  ),
                  FigSuggestion(
                    name: 'warn'
                  ),
                  FigSuggestion(
                    name: 'error'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--config',
              description: 'Custom location for a Remotion config file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Skip confirmation'
            ),
            Option(
              name: '--force',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-y',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-f',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '--region',
              description: 'The AWS region specifier',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'us-east-1',
                    description: 'North Virginia'
                  ),
                  FigSuggestion(
                    name: 'us-east-2',
                    description: 'Ohio'
                  ),
                  FigSuggestion(
                    name: 'eu-central-1',
                    description: 'Frankfurt'
                  ),
                  FigSuggestion(
                    name: 'eu-west-1',
                    description: 'Ireland'
                  ),
                  FigSuggestion(
                    name: 'eu-west-2',
                    description: 'London'
                  ),
                  FigSuggestion(
                    name: 'us-west-2',
                    description: 'Oregon'
                  ),
                  FigSuggestion(
                    name: 'ap-south-1',
                    description: 'Mumbai'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-1',
                    description: 'Singapore'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-2',
                    description: 'Sydney'
                  ),
                  FigSuggestion(
                    name: 'ap-northeast-1',
                    description: 'Tokyo'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'functions',
          description: 'Manage functions on AWS Lambda',
          subcommands: [
            Subcommand(
              name: 'ls',
              description: 'List deployed functions',
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'deploy',
              description: 'Deploy a function if one with the same parameters doesn\'t exist',
              options: [
                Option(
                  name: '--memory',
                  description: 'Amount of memory in MB to allocate',
                  args: [
                    Arg(
                    name: 'sizeInMegabytes'
                  )
                  ]
                ),
                Option(
                  name: '--disk',
                  description: 'Amount of disk space in MB to allocate',
                  args: [
                    Arg(
                    name: 'diskInMegabytes'
                  )
                  ]
                ),
                Option(
                  name: '--architecture',
                  description: 'Type of CPU architecture to use for the Lambda function',
                  args: [
                    Arg(
                    name: 'architecture',
                    suggestions: [
                      FigSuggestion(
                        name: 'x86_64',
                        icon: 'fig://icon?type=cpu'
                      ),
                      FigSuggestion(
                        name: 'arm64',
                        icon: 'fig://icon?type=cpu'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--disable-cloudwatch',
                  description: 'Disable CloudWatch logging',
                  exclusiveOn: ['--retention-period']
                ),
                Option(
                  name: '--enable-lambda-insights',
                  description: 'Enable Lambda Insights'
                ),
                Option(
                  name: '--custom-role-arn',
                  description: 'Set a custom role ARN to be used instead of the default',
                  args: [
                    Arg(
                    name: 'Role ARN'
                  )
                  ]
                ),
                Option(
                  name: '--retention-period',
                  description: 'CloudWatch log retention period in days',
                  exclusiveOn: ['--disable-cloudwatch'],
                  args: [
                    Arg(
                    name: 'retentionPeriodInDays'
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'rmall',
              description: 'Remove all functions in a region',
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'rm',
              description: 'Remove a function',
              args: [
                Arg(
                name: 'function-name',
                description: 'ID of your function'
              )
              ],
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ],
          options: [
            Option(
              name: '--quiet',
              description: 'Print less output'
            ),
            Option(
              name: '-q',
              description: 'Print less output'
            ),
            Option(
              name: '--log',
              description: 'Log level, "error", "warning", "verbose", "info" (default)',
              args: [
                Arg(
                defaultValue: 'info',
                suggestions: [
                  FigSuggestion(
                    name: 'verbose'
                  ),
                  FigSuggestion(
                    name: 'info'
                  ),
                  FigSuggestion(
                    name: 'warn'
                  ),
                  FigSuggestion(
                    name: 'error'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--config',
              description: 'Custom location for a Remotion config file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Skip confirmation'
            ),
            Option(
              name: '--force',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-y',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-f',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '--region',
              description: 'The AWS region specifier',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'us-east-1',
                    description: 'North Virginia'
                  ),
                  FigSuggestion(
                    name: 'us-east-2',
                    description: 'Ohio'
                  ),
                  FigSuggestion(
                    name: 'eu-central-1',
                    description: 'Frankfurt'
                  ),
                  FigSuggestion(
                    name: 'eu-west-1',
                    description: 'Ireland'
                  ),
                  FigSuggestion(
                    name: 'eu-west-2',
                    description: 'London'
                  ),
                  FigSuggestion(
                    name: 'us-west-2',
                    description: 'Oregon'
                  ),
                  FigSuggestion(
                    name: 'ap-south-1',
                    description: 'Mumbai'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-1',
                    description: 'Singapore'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-2',
                    description: 'Sydney'
                  ),
                  FigSuggestion(
                    name: 'ap-northeast-1',
                    description: 'Tokyo'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sites',
          options: [
            Option(
              name: '--quiet',
              description: 'Print less output'
            ),
            Option(
              name: '-q',
              description: 'Print less output'
            ),
            Option(
              name: '--log',
              description: 'Log level, "error", "warning", "verbose", "info" (default)',
              args: [
                Arg(
                defaultValue: 'info',
                suggestions: [
                  FigSuggestion(
                    name: 'verbose'
                  ),
                  FigSuggestion(
                    name: 'info'
                  ),
                  FigSuggestion(
                    name: 'warn'
                  ),
                  FigSuggestion(
                    name: 'error'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--config',
              description: 'Custom location for a Remotion config file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Skip confirmation'
            ),
            Option(
              name: '--force',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-y',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '-f',
              isDangerous: true,
              description: 'Skip confirmation'
            ),
            Option(
              name: '--region',
              description: 'The AWS region specifier',
              args: [
                Arg(
                suggestions: [
                  FigSuggestion(
                    name: 'us-east-1',
                    description: 'North Virginia'
                  ),
                  FigSuggestion(
                    name: 'us-east-2',
                    description: 'Ohio'
                  ),
                  FigSuggestion(
                    name: 'eu-central-1',
                    description: 'Frankfurt'
                  ),
                  FigSuggestion(
                    name: 'eu-west-1',
                    description: 'Ireland'
                  ),
                  FigSuggestion(
                    name: 'eu-west-2',
                    description: 'London'
                  ),
                  FigSuggestion(
                    name: 'us-west-2',
                    description: 'Oregon'
                  ),
                  FigSuggestion(
                    name: 'ap-south-1',
                    description: 'Mumbai'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-1',
                    description: 'Singapore'
                  ),
                  FigSuggestion(
                    name: 'ap-southeast-2',
                    description: 'Sydney'
                  ),
                  FigSuggestion(
                    name: 'ap-northeast-1',
                    description: 'Tokyo'
                  )
                ]
              )
              ]
            )
          ],
          subcommands: [
            Subcommand(
              name: 'ls',
              description: 'List sites',
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'rmall',
              description: 'Remove all sites in a region',
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'rm',
              description: 'Remove a site',
              args: [
                Arg(
                name: 'site-name',
                description: 'ID of your site'
              )
              ],
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create or update a site',
              options: [
                Option(
                  name: '--quiet',
                  description: 'Print less output'
                ),
                Option(
                  name: '-q',
                  description: 'Print less output'
                ),
                Option(
                  name: '--log',
                  description: 'Log level, "error", "warning", "verbose", "info" (default)',
                  args: [
                    Arg(
                    defaultValue: 'info',
                    suggestions: [
                      FigSuggestion(
                        name: 'verbose'
                      ),
                      FigSuggestion(
                        name: 'info'
                      ),
                      FigSuggestion(
                        name: 'warn'
                      ),
                      FigSuggestion(
                        name: 'error'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Custom location for a Remotion config file',
                  args: [
                    Arg(
                    template: 'filepaths'
                  )
                  ]
                ),
                Option(
                  name: '--yes',
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--force',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-y',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '-f',
                  isDangerous: true,
                  description: 'Skip confirmation'
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region specifier',
                  args: [
                    Arg(
                    suggestions: [
                      FigSuggestion(
                        name: 'us-east-1',
                        description: 'North Virginia'
                      ),
                      FigSuggestion(
                        name: 'us-east-2',
                        description: 'Ohio'
                      ),
                      FigSuggestion(
                        name: 'eu-central-1',
                        description: 'Frankfurt'
                      ),
                      FigSuggestion(
                        name: 'eu-west-1',
                        description: 'Ireland'
                      ),
                      FigSuggestion(
                        name: 'eu-west-2',
                        description: 'London'
                      ),
                      FigSuggestion(
                        name: 'us-west-2',
                        description: 'Oregon'
                      ),
                      FigSuggestion(
                        name: 'ap-south-1',
                        description: 'Mumbai'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-1',
                        description: 'Singapore'
                      ),
                      FigSuggestion(
                        name: 'ap-southeast-2',
                        description: 'Sydney'
                      ),
                      FigSuggestion(
                        name: 'ap-northeast-1',
                        description: 'Tokyo'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--site-name',
                  args: [
                    Arg(
                    name: 'How the folder in S3 should be named.'
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: 'entry',
                template: ['filepaths'],
                suggestions: [
                  FigSuggestion(
                  )
                ]
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--quiet',
          description: 'Print less output'
        ),
        Option(
          name: '-q',
          description: 'Print less output'
        ),
        Option(
          name: '--log',
          description: 'Log level, "error", "warning", "verbose", "info" (default)',
          args: [
            Arg(
            defaultValue: 'info',
            suggestions: [
              FigSuggestion(
                name: 'verbose'
              ),
              FigSuggestion(
                name: 'info'
              ),
              FigSuggestion(
                name: 'warn'
              ),
              FigSuggestion(
                name: 'error'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Custom location for a Remotion config file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--yes',
          description: 'Skip confirmation'
        ),
        Option(
          name: '--force',
          isDangerous: true,
          description: 'Skip confirmation'
        ),
        Option(
          name: '-y',
          isDangerous: true,
          description: 'Skip confirmation'
        ),
        Option(
          name: '-f',
          isDangerous: true,
          description: 'Skip confirmation'
        ),
        Option(
          name: '--region',
          description: 'The AWS region specifier',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'us-east-1',
                description: 'North Virginia'
              ),
              FigSuggestion(
                name: 'us-east-2',
                description: 'Ohio'
              ),
              FigSuggestion(
                name: 'eu-central-1',
                description: 'Frankfurt'
              ),
              FigSuggestion(
                name: 'eu-west-1',
                description: 'Ireland'
              ),
              FigSuggestion(
                name: 'eu-west-2',
                description: 'London'
              ),
              FigSuggestion(
                name: 'us-west-2',
                description: 'Oregon'
              ),
              FigSuggestion(
                name: 'ap-south-1',
                description: 'Mumbai'
              ),
              FigSuggestion(
                name: 'ap-southeast-1',
                description: 'Singapore'
              ),
              FigSuggestion(
                name: 'ap-southeast-2',
                description: 'Sydney'
              ),
              FigSuggestion(
                name: 'ap-northeast-1',
                description: 'Tokyo'
              )
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'bundle',
      priority: 100,
      description: 'Bundle a Remotion project',
      args: [
        Arg(
        name: 'entry',
        template: ['filepaths']
      )
      ],
      options: [
        Option(
          name: '--quiet',
          description: 'Print less output'
        ),
        Option(
          name: '-q',
          description: 'Print less output'
        ),
        Option(
          name: '--log',
          description: 'Log level, "error", "warning", "verbose", "info" (default)',
          args: [
            Arg(
            defaultValue: 'info',
            suggestions: [
              FigSuggestion(
                name: 'verbose'
              ),
              FigSuggestion(
                name: 'info'
              ),
              FigSuggestion(
                name: 'warn'
              ),
              FigSuggestion(
                name: 'error'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Custom location for a Remotion config file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--public-dir',
          description: 'Location of the public/ directory',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--out-dir',
          description: 'Define the location of the resulting bundle',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'render',
      priority: 60,
      description: 'Render a video based on the entry point, the composition ID and save it to the output location',
      args: [
        Arg(
          name: 'entry',
          template: ['filepaths']
        ),
        Arg(
          name: 'comp-id',
          description: 'The composition ID',
          suggestions: [
            FigSuggestion(
            )
          ]
        ),
        Arg(
          name: 'output',
          template: ['filepaths'],
          suggestions: [
            FigSuggestion(name: 'out.mp4')
          ],
          isOptional: true
        )
      ],
      options: [
        Option(
          name: '--disable-headless',
          description: 'Run Chrome in normal mode rather than headless'
        ),
        Option(
          name: '--gl',
          description: 'Which OpenGL renderer to use',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'angle'),
              FigSuggestion(name: 'egl'),
              FigSuggestion(name: 'swiftshader'),
              FigSuggestion(name: 'swangle'),
              FigSuggestion(name: 'vulkan')
            ]
          )
          ]
        ),
        Option(
          name: '--user-agent',
          description: 'User agent to use for Chrome during rendering'
        ),
        Option(
          name: '--ignore-certificate-errors',
          description: 'Ignore SSL errors'
        ),
        Option(
          name: '--disable-web-security',
          description: 'Disable CORS and other web security features'
        ),
        Option(
          name: '--timeout',
          description: 'The time in milisecond that a delayRender() may take before it times out'
        ),
        Option(
          name: '--quality',
          description: 'Quality for rendered frames, JPEG only, 0-100',
          args: [
            Arg(
            defaultValue: '80',
            suggestions: [
              FigSuggestion(
                name: '0'
              ),
              FigSuggestion(
                name: '10'
              ),
              FigSuggestion(
                name: '20'
              ),
              FigSuggestion(
                name: '30'
              ),
              FigSuggestion(
                name: '40'
              ),
              FigSuggestion(
                name: '50'
              ),
              FigSuggestion(
                name: '60'
              ),
              FigSuggestion(
                name: '70'
              ),
              FigSuggestion(
                name: '80'
              ),
              FigSuggestion(
                name: '90'
              ),
              FigSuggestion(
                name: '100'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--scale',
          description: 'Upscale or downscale or the dimensions of the video',
          args: [
            Arg(
            defaultValue: '1',
            suggestions: [
              FigSuggestion(
                name: '0.25'
              ),
              FigSuggestion(
                name: '0.5'
              ),
              FigSuggestion(
                name: '1'
              ),
              FigSuggestion(
                name: '1.5'
              ),
              FigSuggestion(
                name: '2'
              ),
              FigSuggestion(
                name: '4'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--codec',
          description: 'Video or audio codec',
          args: [
            Arg(
            defaultValue: 'h264',
            suggestions: [
              FigSuggestion(
                name: 'h264'
              ),
              FigSuggestion(
                name: 'h265'
              ),
              FigSuggestion(
                name: 'gif'
              ),
              FigSuggestion(
                name: 'vp8'
              ),
              FigSuggestion(
                name: 'vp9'
              ),
              FigSuggestion(
                name: 'mp3'
              ),
              FigSuggestion(
                name: 'aac'
              ),
              FigSuggestion(
                name: 'wav'
              ),
              FigSuggestion(
                name: 'prores'
              ),
              FigSuggestion(
                name: 'h264-mkv'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--audio-codec',
          description: 'Codec to be used for the audio',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'aac'
              ),
              FigSuggestion(
                name: 'mp3'
              ),
              FigSuggestion(
                name: 'opus'
              ),
              FigSuggestion(
                name: 'pcm-16'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--every-nth-frame',
          description: 'Render only every nth frame (only for GIFs)',
          args: [
            Arg(
            defaultValue: '1',
            suggestions: [
              FigSuggestion(
                name: '2'
              ),
              FigSuggestion(
                name: '3'
              ),
              FigSuggestion(
                name: '4'
              ),
              FigSuggestion(
                name: '5'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--number-of-gif-loops',
          description: 'How many times a GIF should loop. 0 = No loop',
          args: [
            Arg(
            defaultValue: '1',
            suggestions: [
              FigSuggestion(
                name: '0'
              ),
              FigSuggestion(
                name: '1'
              ),
              FigSuggestion(
                name: '2'
              ),
              FigSuggestion(
                name: '3'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--audio-bitrate',
          description: 'Customize the output audio bitrate'
        ),
        Option(
          name: '--video-bitrate',
          description: 'Customize the output video bitrate. Mutually exclusive with --crf',
          exclusiveOn: ['--crf']
        ),
        Option(
          name: '--crf',
          description: 'FFMPEG CRF value, controls quality, see docs for info',
          exclusiveOn: ['--video-bitrate']
        ),
        Option(
          name: '--frames',
          description: 'Render a portion or a still of a video, 0-9, 50',
          args: [
            Arg(
            name: 'frames'
          )
          ]
        ),
        Option(
          name: '--prores-profile',
          description: 'ProRes profile, need --codec=prores to be set',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: '4444-xq'),
              FigSuggestion(name: '4444'),
              FigSuggestion(name: 'hq'),
              FigSuggestion(name: 'standard'),
              FigSuggestion(name: 'light'),
              FigSuggestion(name: 'proxy')
            ]
          )
          ]
        ),
        Option(
          name: '--x264-preset',
          description: 'Presets balance encoding speed and compression quality, with slower presets achieving better compression. Needs --codec=h264 to be set',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'ultrafast'),
              FigSuggestion(name: 'superfast'),
              FigSuggestion(name: 'veryfast'),
              FigSuggestion(name: 'faster'),
              FigSuggestion(name: 'fast'),
              FigSuggestion(name: 'medium'),
              FigSuggestion(name: 'slow'),
              FigSuggestion(name: 'slower'),
              FigSuggestion(name: 'veryslow'),
              FigSuggestion(name: 'placebo')
            ]
          )
          ]
        ),
        Option(
          name: '--image-format',
          description: 'Format to render the frames in, "jpeg" or "png"',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'jpeg'
              ),
              FigSuggestion(
                name: 'png'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--pixel-format',
          description: 'Custom pixel format, see docs for available values',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'yuv420p'
              ),
              FigSuggestion(
                name: 'yuv422p'
              ),
              FigSuggestion(
                name: 'yuv444p'
              ),
              FigSuggestion(
                name: 'yuv420p10le'
              ),
              FigSuggestion(
                name: 'yuv422p10le'
              ),
              FigSuggestion(
                name: 'yuv444p10le'
              ),
              FigSuggestion(
                name: 'yuva420p'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--muted',
          description: 'Outputs no audio'
        ),
        Option(
          name: '--height',
          description: 'Override the composition height',
          args: [
            Arg(
            name: 'height'
          )
          ]
        ),
        Option(
          name: '--width',
          description: 'Override the composition width',
          args: [
            Arg(
            name: 'height'
          )
          ]
        ),
        Option(
          name: '--sequence',
          description: 'Output as an image sequence'
        ),
        Option(
          name: '--concurrency',
          description: 'How many frames to render in parallel'
        ),
        Option(
          name: '--enforce-audio-track',
          description: 'Include an audio track even if it\'s silent'
        ),
        Option(
          name: '--repro',
          description: 'Collect information that you can submit to Remotion if asked for a reproduction'
        ),
        Option(
          name: '--env-file',
          description: 'Specify a location for a dotenv file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--overwrite',
          description: 'Overwrite if file exists, default true'
        ),
        Option(
          name: '--browser-executable',
          description: 'Custom path for browser executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--enable-extensions',
          description: 'Enable Chrome browser extensions while rendering'
        ),
        Option(
          name: '--ffmpeg-executable',
          description: 'Custom path for FFMPEG executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--ffprobe-executable',
          description: 'Custom path for FFProbe executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--bundle-cache',
          description: 'Cache webpack bundle, boolean, default true'
        ),
        Option(
          name: '--port',
          description: 'Custom port to use for the HTTP server',
          args: [
            Arg(
            name: 'port',
            defaultValue: '3333'
          )
          ]
        ),
        Option(
          name: '--public-dir',
          description: 'Location of the public/ directory',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--props',
          description: 'Pass input props as filename or as JSON',
          args: [
            Arg(
            template: ['filepaths'],
            suggestions: [
              FigSuggestion(
                insertValue: '\'{cursor}\''
              )
            ]
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Print less output'
        ),
        Option(
          name: '-q',
          description: 'Print less output'
        ),
        Option(
          name: '--log',
          description: 'Log level, "error", "warning", "verbose", "info" (default)',
          args: [
            Arg(
            defaultValue: 'info',
            suggestions: [
              FigSuggestion(
                name: 'verbose'
              ),
              FigSuggestion(
                name: 'info'
              ),
              FigSuggestion(
                name: 'warn'
              ),
              FigSuggestion(
                name: 'error'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Custom location for a Remotion config file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'still',
      priority: 55,
      description: 'Render a still frame based on the entry point, the composition ID and save it to the output location',
      args: [
        Arg(
          name: 'entry',
          template: ['filepaths']
        ),
        Arg(
          name: 'comp-id',
          description: 'The composition ID',
          suggestions: [
            FigSuggestion(
            )
          ]
        ),
        Arg(
          name: 'output',
          template: ['filepaths'],
          suggestions: [
            FigSuggestion(name: 'out.png')
          ],
          isOptional: true
        )
      ],
      options: [
        Option(
          name: '--frame',
          description: 'Which frame to render (default 0)',
          args: [
            Arg(
            name: 'frame',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: '--height',
          description: 'Override the composition height',
          args: [
            Arg(
            name: 'height'
          )
          ]
        ),
        Option(
          name: '--width',
          description: 'Override the composition width',
          args: [
            Arg(
            name: 'height'
          )
          ]
        ),
        Option(
          name: '--env-file',
          description: 'Specify a location for a dotenv file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--overwrite',
          description: 'Overwrite if file exists, default true'
        ),
        Option(
          name: '--browser-executable',
          description: 'Custom path for browser executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--enable-extensions',
          description: 'Enable Chrome browser extensions while rendering'
        ),
        Option(
          name: '--ffmpeg-executable',
          description: 'Custom path for FFMPEG executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--ffprobe-executable',
          description: 'Custom path for FFProbe executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--bundle-cache',
          description: 'Cache webpack bundle, boolean, default true'
        ),
        Option(
          name: '--port',
          description: 'Custom port to use for the HTTP server',
          args: [
            Arg(
            name: 'port',
            defaultValue: '3333'
          )
          ]
        ),
        Option(
          name: '--public-dir',
          description: 'Location of the public/ directory',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--props',
          description: 'Pass input props as filename or as JSON',
          args: [
            Arg(
            template: ['filepaths'],
            suggestions: [
              FigSuggestion(
                insertValue: '\'{cursor}\''
              )
            ]
          )
          ]
        ),
        Option(
          name: '--disable-headless',
          description: 'Run Chrome in normal mode rather than headless'
        ),
        Option(
          name: '--gl',
          description: 'Which OpenGL renderer to use',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'angle'),
              FigSuggestion(name: 'egl'),
              FigSuggestion(name: 'swiftshader'),
              FigSuggestion(name: 'swangle'),
              FigSuggestion(name: 'vulkan')
            ]
          )
          ]
        ),
        Option(
          name: '--user-agent',
          description: 'User agent to use for Chrome during rendering'
        ),
        Option(
          name: '--ignore-certificate-errors',
          description: 'Ignore SSL errors'
        ),
        Option(
          name: '--disable-web-security',
          description: 'Disable CORS and other web security features'
        ),
        Option(
          name: '--quiet',
          description: 'Print less output'
        ),
        Option(
          name: '-q',
          description: 'Print less output'
        ),
        Option(
          name: '--log',
          description: 'Log level, "error", "warning", "verbose", "info" (default)',
          args: [
            Arg(
            defaultValue: 'info',
            suggestions: [
              FigSuggestion(
                name: 'verbose'
              ),
              FigSuggestion(
                name: 'info'
              ),
              FigSuggestion(
                name: 'warn'
              ),
              FigSuggestion(
                name: 'error'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Custom location for a Remotion config file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['preview', 'studio'],
      priority: 50,
      description: 'Start the Remotion Studio',
      args: [
        Arg(
        name: 'entry',
        template: ['filepaths']
      )
      ],
      options: [
        Option(
          name: '--props',
          description: 'Pass input props as filename or as JSON',
          args: [
            Arg(
            template: ['filepaths'],
            suggestions: [
              FigSuggestion(
                insertValue: '\'{cursor}\''
              )
            ]
          )
          ]
        ),
        Option(
          name: '--disable-keyboard-shortcuts',
          description: 'Disable all keyboard shortcuts'
        ),
        Option(
          name: '--webpack-poll',
          description: 'Enable webpack polling instead of file system watchers',
          args: [
            Arg(
            name: 'polling-interval',
            description: 'Polling interval in milliseconds'
          )
          ]
        ),
        Option(
          name: '--number-of-shared-audio-tags',
          description: 'Set the number of shared audio tags to prevent autoplay issues',
          args: [
            Arg(
            name: 'numberOfSharedAudioTags'
          )
          ]
        ),
        Option(
          name: '--no-open',
          description: 'Prevent the browser from opening automatically when the server starts'
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade all Remotion-related dependencies to the newest version',
      options: [
        Option(
          name: '--package-manager',
          description: 'Force a specific package manager to be used',
          args: [
            Arg(
            name: 'package-manager',
            suggestions: [
              FigSuggestion(
                name: 'npm'
              ),
              FigSuggestion(
                name: 'yarn'
              ),
              FigSuggestion(
                name: 'pnpm'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'Upgrade to a specific version',
          args: [
            Arg(
            name: 'version'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'benchmark',
      description: 'Try different render configurations and compare them',
      options: [
        Option(
          name: '--disable-headless',
          description: 'Run Chrome in normal mode rather than headless'
        ),
        Option(
          name: '--gl',
          description: 'Which OpenGL renderer to use',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'angle'),
              FigSuggestion(name: 'egl'),
              FigSuggestion(name: 'swiftshader'),
              FigSuggestion(name: 'swangle'),
              FigSuggestion(name: 'vulkan')
            ]
          )
          ]
        ),
        Option(
          name: '--user-agent',
          description: 'User agent to use for Chrome during rendering'
        ),
        Option(
          name: '--ignore-certificate-errors',
          description: 'Ignore SSL errors'
        ),
        Option(
          name: '--disable-web-security',
          description: 'Disable CORS and other web security features'
        ),
        Option(
          name: '--timeout',
          description: 'The time in milisecond that a delayRender() may take before it times out'
        ),
        Option(
          name: '--quality',
          description: 'Quality for rendered frames, JPEG only, 0-100',
          args: [
            Arg(
            defaultValue: '80',
            suggestions: [
              FigSuggestion(
                name: '0'
              ),
              FigSuggestion(
                name: '10'
              ),
              FigSuggestion(
                name: '20'
              ),
              FigSuggestion(
                name: '30'
              ),
              FigSuggestion(
                name: '40'
              ),
              FigSuggestion(
                name: '50'
              ),
              FigSuggestion(
                name: '60'
              ),
              FigSuggestion(
                name: '70'
              ),
              FigSuggestion(
                name: '80'
              ),
              FigSuggestion(
                name: '90'
              ),
              FigSuggestion(
                name: '100'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--scale',
          description: 'Upscale or downscale or the dimensions of the video',
          args: [
            Arg(
            defaultValue: '1',
            suggestions: [
              FigSuggestion(
                name: '0.25'
              ),
              FigSuggestion(
                name: '0.5'
              ),
              FigSuggestion(
                name: '1'
              ),
              FigSuggestion(
                name: '1.5'
              ),
              FigSuggestion(
                name: '2'
              ),
              FigSuggestion(
                name: '4'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--codec',
          description: 'Video or audio codec',
          args: [
            Arg(
            defaultValue: 'h264',
            suggestions: [
              FigSuggestion(
                name: 'h264'
              ),
              FigSuggestion(
                name: 'h265'
              ),
              FigSuggestion(
                name: 'gif'
              ),
              FigSuggestion(
                name: 'vp8'
              ),
              FigSuggestion(
                name: 'vp9'
              ),
              FigSuggestion(
                name: 'mp3'
              ),
              FigSuggestion(
                name: 'aac'
              ),
              FigSuggestion(
                name: 'wav'
              ),
              FigSuggestion(
                name: 'prores'
              ),
              FigSuggestion(
                name: 'h264-mkv'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--audio-codec',
          description: 'Codec to be used for the audio',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'aac'
              ),
              FigSuggestion(
                name: 'mp3'
              ),
              FigSuggestion(
                name: 'opus'
              ),
              FigSuggestion(
                name: 'pcm-16'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--every-nth-frame',
          description: 'Render only every nth frame (only for GIFs)',
          args: [
            Arg(
            defaultValue: '1',
            suggestions: [
              FigSuggestion(
                name: '2'
              ),
              FigSuggestion(
                name: '3'
              ),
              FigSuggestion(
                name: '4'
              ),
              FigSuggestion(
                name: '5'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--number-of-gif-loops',
          description: 'How many times a GIF should loop. 0 = No loop',
          args: [
            Arg(
            defaultValue: '1',
            suggestions: [
              FigSuggestion(
                name: '0'
              ),
              FigSuggestion(
                name: '1'
              ),
              FigSuggestion(
                name: '2'
              ),
              FigSuggestion(
                name: '3'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--audio-bitrate',
          description: 'Customize the output audio bitrate'
        ),
        Option(
          name: '--video-bitrate',
          description: 'Customize the output video bitrate. Mutually exclusive with --crf',
          exclusiveOn: ['--crf']
        ),
        Option(
          name: '--crf',
          description: 'FFMPEG CRF value, controls quality, see docs for info',
          exclusiveOn: ['--video-bitrate']
        ),
        Option(
          name: '--frames',
          description: 'Render a portion or a still of a video, 0-9, 50',
          args: [
            Arg(
            name: 'frames'
          )
          ]
        ),
        Option(
          name: '--prores-profile',
          description: 'ProRes profile, need --codec=prores to be set',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: '4444-xq'),
              FigSuggestion(name: '4444'),
              FigSuggestion(name: 'hq'),
              FigSuggestion(name: 'standard'),
              FigSuggestion(name: 'light'),
              FigSuggestion(name: 'proxy')
            ]
          )
          ]
        ),
        Option(
          name: '--x264-preset',
          description: 'Presets balance encoding speed and compression quality, with slower presets achieving better compression. Needs --codec=h264 to be set',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'ultrafast'),
              FigSuggestion(name: 'superfast'),
              FigSuggestion(name: 'veryfast'),
              FigSuggestion(name: 'faster'),
              FigSuggestion(name: 'fast'),
              FigSuggestion(name: 'medium'),
              FigSuggestion(name: 'slow'),
              FigSuggestion(name: 'slower'),
              FigSuggestion(name: 'veryslow'),
              FigSuggestion(name: 'placebo')
            ]
          )
          ]
        ),
        Option(
          name: '--image-format',
          description: 'Format to render the frames in, "jpeg" or "png"',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'jpeg'
              ),
              FigSuggestion(
                name: 'png'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--pixel-format',
          description: 'Custom pixel format, see docs for available values',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'yuv420p'
              ),
              FigSuggestion(
                name: 'yuv422p'
              ),
              FigSuggestion(
                name: 'yuv444p'
              ),
              FigSuggestion(
                name: 'yuv420p10le'
              ),
              FigSuggestion(
                name: 'yuv422p10le'
              ),
              FigSuggestion(
                name: 'yuv444p10le'
              ),
              FigSuggestion(
                name: 'yuva420p'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--muted',
          description: 'Outputs no audio'
        ),
        Option(
          name: '--height',
          description: 'Override the composition height',
          args: [
            Arg(
            name: 'height'
          )
          ]
        ),
        Option(
          name: '--width',
          description: 'Override the composition width',
          args: [
            Arg(
            name: 'height'
          )
          ]
        ),
        Option(
          name: '--sequence',
          description: 'Output as an image sequence'
        ),
        Option(
          name: '--enforce-audio-track',
          description: 'Include an audio track even if it\'s silent'
        ),
        Option(
          name: '--repro',
          description: 'Collect information that you can submit to Remotion if asked for a reproduction'
        ),
        Option(
          name: '--env-file',
          description: 'Specify a location for a dotenv file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--browser-executable',
          description: 'Custom path for browser executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--enable-extensions',
          description: 'Enable Chrome browser extensions while rendering'
        ),
        Option(
          name: '--ffmpeg-executable',
          description: 'Custom path for FFMPEG executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--ffprobe-executable',
          description: 'Custom path for FFProbe executable',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--bundle-cache',
          description: 'Cache webpack bundle, boolean, default true'
        ),
        Option(
          name: '--port',
          description: 'Custom port to use for the HTTP server',
          args: [
            Arg(
            name: 'port',
            defaultValue: '3333'
          )
          ]
        ),
        Option(
          name: '--public-dir',
          description: 'Location of the public/ directory',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--props',
          description: 'Pass input props as filename or as JSON',
          args: [
            Arg(
            template: ['filepaths'],
            suggestions: [
              FigSuggestion(
                insertValue: '\'{cursor}\''
              )
            ]
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Print less output'
        ),
        Option(
          name: '-q',
          description: 'Print less output'
        ),
        Option(
          name: '--log',
          description: 'Log level, "error", "warning", "verbose", "info" (default)',
          args: [
            Arg(
            defaultValue: 'info',
            suggestions: [
              FigSuggestion(
                name: 'verbose'
              ),
              FigSuggestion(
                name: 'info'
              ),
              FigSuggestion(
                name: 'warn'
              ),
              FigSuggestion(
                name: 'error'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Custom location for a Remotion config file',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--concurrencies',
          description: 'Comma-separated list of concurrency values to include in benchmark'
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Ensure Remotion dependencies',
      args: [
        Arg(
        name: 'dependency',
        suggestions: [
          FigSuggestion(
            name: 'ffmpeg'
          ),
          FigSuggestion(
            name: 'ffprobe'
          )
        ]
      )
      ]
    )
  ],
  options: [
    Option(
      name: '--help',
      description: 'Prints the list of commands and flags for quick lookup'
    )
  ]
);
