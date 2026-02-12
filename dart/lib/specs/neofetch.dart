// Auto-generated from TypeScript source: neofetch.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `neofetch` CLI
final FigSpec neofetchSpec = FigSpec(
    name: 'neofetch',
    description: 'The most complete system information CLI tool',
    args: [
      Arg()
    ],
    options: [
      Option(name: ['--help', '-h'], description: 'Show help for neofetch'),
      Option(name: '--disable', description: 'Disable information line'),
      Option(
          name: '--title_fqdn',
          description: 'Hide/Show Fully Qualified Domain Name in title'),
      Option(
          name: '--package_managers',
          description: 'Hide/Show Package Manager names'),
      Option(name: '--os_arch', description: 'Hide/Show OS architecture'),
      Option(
          name: '--speed_type',
          description: 'Change the type of cpu speed to display',
          args: [
            Arg(name: 'type', suggestions: [
              FigSuggestion(name: 'current'),
              FigSuggestion(name: 'min'),
              FigSuggestion(name: 'bios'),
              FigSuggestion(name: 'scaling_current'),
              FigSuggestion(name: 'scaling_min'),
              FigSuggestion(name: 'scaling_max')
            ])
          ]),
      Option(
          name: '--speed_shorthand',
          description: 'Whether or not to show decimals in CPU speed'),
      Option(
          name: '--cpu_brand',
          description: 'Enable/Disable CPU brand in output'),
      Option(
          name: '--cpu_cores',
          description: 'Whether or not to display the number of CPU cores',
          args: [
            Arg(name: 'type', suggestions: [
              FigSuggestion(name: 'logical'),
              FigSuggestion(name: 'physical'),
              FigSuggestion(name: 'off')
            ])
          ]),
      Option(name: '--cpu_speed', description: 'Hide/Show cpu speed'),
      Option(
          name: '--cpu_temp',
          description: 'Hide/Show cpu temperature',
          args: [
            Arg(name: 'unit/off', suggestions: [
              FigSuggestion(name: 'C'),
              FigSuggestion(name: 'F'),
              FigSuggestion(name: 'off')
            ])
          ]),
      Option(
          name: '--distro_shorthand',
          description: 'Shorten the output of distro'),
      Option(
          name: '--kernel_shorthand',
          description: 'Shorten the output of kernel'),
      Option(
          name: '--uptime_shorthand',
          description: 'Shorten the output of uptime'),
      Option(
          name: '--refresh_rate',
          description: 'Whether to display the refresh rate of each monitor'),
      Option(
          name: '--gpu_brand',
          description: 'Enable/Disable GPU brand in output'),
      Option(name: '--gpu_type', description: 'Which GPU to display', args: [
        Arg(name: 'type', suggestions: [
          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'dedicated'),
          FigSuggestion(name: 'integrated')
        ])
      ]),
      Option(
          name: '--de_version',
          description: 'Show/Hide Desktop Environment version'),
      Option(
          name: '--gtk_shorthand',
          description: 'Shorten output of gtk theme/icons'),
      Option(
          name: '--gtk2',
          description: 'Enable/Disable gtk2 theme/font/icons output'),
      Option(
          name: '--gtk3',
          description: 'Enable/Disable gtk3 theme/font/icons output'),
      Option(
          name: '--shell_path',
          description: 'Enable/Disable showing \$SHELL path'),
      Option(
          name: '--shell_version',
          description: 'Enable/Disable showing \$SHELL version'),
      Option(name: '--disk_show', description: 'Which disks to display', args: [
        Arg(name: 'disk', suggestions: [
          FigSuggestion(name: '/dev/sd'),
          FigSuggestion(name: '/dev/nvme'),
          FigSuggestion(name: '/dev/mmcblk'),
          FigSuggestion(name: '/dev/mapper'),
          FigSuggestion(name: '/mnt'),
          FigSuggestion(name: '/run/media')
        ])
      ]),
      Option(
          name: '--disk_subtitle',
          description: 'What information to append to the Disk subtitle',
          args: [
            Arg(name: 'type', suggestions: [
              FigSuggestion(name: 'name'),
              FigSuggestion(name: 'mount'),
              FigSuggestion(name: 'dir'),
              FigSuggestion(name: 'none')
            ])
          ]),
      Option(name: '--disk_percent', description: 'Hide/Show disk percent'),
      Option(
          name: '--ip_host',
          description: 'URL to query for public IP',
          args: [Arg(name: 'https://..')]),
      Option(
          name: '--ip_timeout',
          description: 'Public IP timeout',
          args: [Arg(name: 'X second')]),
      Option(
          name: '--memory_percent', description: 'Display memory percentage'),
      Option(name: '--memory_unit', description: 'Memory output unit', args: [
        Arg(name: 'unit', suggestions: [
          FigSuggestion(name: 'kib'),
          FigSuggestion(name: 'mib'),
          FigSuggestion(name: 'gib')
        ])
      ]),
      Option(name: '--colors', description: 'Changes the text colors', args: [
        Arg(name: 'Title'),
        Arg(name: '@'),
        Arg(name: 'Underline'),
        Arg(name: 'Subtitle'),
        Arg(name: 'Colon'),
        Arg(name: 'Info')
      ]),
      Option(name: '--underline', description: 'Enable/Disable the underline'),
      Option(
          name: '--underline_char',
          description: 'Character to use when underlining title',
          args: [Arg(name: 'cha')]),
      Option(name: '--bold', description: 'Enable/Disable bold text'),
      Option(
          name: '--separator',
          description:
              'Changes the default \':\' separator to the specified string',
          args: [Arg(name: 'strin')]),
      Option(
          name: '--color_blocks',
          description: 'Enable/Disable the color blocks'),
      Option(
          name: '--col_offset',
          description: 'Left-padding of color blocks',
          args: [
            Arg(name: 'number', suggestions: [
              FigSuggestion(name: 'auto'),
            ])
          ]),
      Option(
          name: '--block_width',
          description: 'Width of color blocks in spaces'),
      Option(
          name: '--block_height',
          description: 'Height of color blocks in lines'),
      Option(
          name: '--block_range',
          description: 'Range of colors to print as blocks',
          args: []),
      Option(
          name: '--bar_char',
          description: 'Characters to use when drawing bars',
          args: [Arg(name: 'Elapsed char'), Arg(name: 'Total char')]),
      Option(
          name: '--bar_border',
          description: 'Whether or not to surround the bar with \'[]\''),
      Option(
          name: '--bar_length',
          description: 'Length in spaces to make the bars'),
      Option(
          name: '--bar_colors',
          description: 'Colors to make the bar',
          args: [Arg(name: 'Elapsed'), Arg(name: 'Total')]),
      Option(name: '--cpu_display', description: 'CPU bar mode'),
      Option(name: '--memory_display', description: 'Memory display mode'),
      Option(name: '--battery_display', description: 'Battery display mode'),
      Option(name: '--disk_display', description: 'Disk display mode'),
      Option(
          name: '--backend',
          description: 'Which image backend to use',
          args: [
            Arg(name: 'backend', suggestions: [
              FigSuggestion(name: 'ascii'),
              FigSuggestion(name: 'caca'),
              FigSuggestion(name: 'chafa'),
              FigSuggestion(name: 'jp2a'),
              FigSuggestion(name: 'iterm2'),
              FigSuggestion(name: 'off'),
              FigSuggestion(name: 'pixterm'),
              FigSuggestion(name: 'pot'),
              FigSuggestion(name: 'sixel'),
              FigSuggestion(name: 'termpix'),
              FigSuggestion(name: 'tycat'),
              FigSuggestion(name: 'w3m'),
              FigSuggestion(name: 'kitty')
            ])
          ]),
      Option(
          name: '--source',
          description: 'Which image or ascii file to use',
          args: [
            Arg(
                name: 'source',
                suggestions: [
                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'ascii'),
                  FigSuggestion(name: 'wallpaper')
                ],
                template: 'filepaths')
          ]),
      Option(name: '--ascii', description: 'Same as --backend ascii'),
      Option(name: '--caca', description: 'Same as --backend caca'),
      Option(name: '--chafa', description: 'Same as --backend chafa'),
      Option(name: '--iterm2', description: 'Same as --backend iterm2'),
      Option(name: '--jp2a', description: 'Same as --backend jp2a'),
      Option(name: '--kitty', description: 'Same as --backend kitty'),
      Option(name: '--pot', description: 'Same as --backend pot'),
      Option(name: '--pixterm', description: 'Same as --backend pixterm'),
      Option(name: '--sixel', description: 'Same as --backend sixel'),
      Option(name: '--termpix', description: 'Same as --backend termpix'),
      Option(name: '--tycat', description: 'Same as --backend tycat'),
      Option(name: '--w3m', description: 'Same as --backend w3m'),
      Option(name: '--off', description: 'Same as --backend off'),
      Option(
          name: '--ascii_colors',
          description: 'Colors to print the ascii art',
          args: [
            Arg(name: 'Color 1'),
            Arg(name: 'Color 2'),
            Arg(name: 'Color 3'),
            Arg(name: 'Color 4'),
            Arg(name: 'Color 5'),
            Arg(name: 'Color 6')
          ]),
      Option(
          name: '--ascii_distro',
          description: 'Which Distro\'s ascii art to print',
          args: [Arg(name: 'O')]),
      Option(
          name: '--ascii_bold',
          description: 'Whether or not to bold the ascii logo'),
      Option(
          name: ['-L', '--logo'],
          description: 'Hide the info text and only show the ascii logo'),
      Option(
          name: '--loop',
          description: 'Redraw the image constantly until Ctrl+C is used'),
      Option(name: '--size', description: 'How to size the image', args: [
        Arg(name: 'size', suggestions: [
          FigSuggestion(name: 'auto'),
        ])
      ]),
      Option(name: '--crop_mode', description: 'Which crop mode to use', args: [
        Arg(name: 'mode', suggestions: [
          FigSuggestion(name: 'normal'),
          FigSuggestion(name: 'fit'),
          FigSuggestion(name: 'fill')
        ])
      ]),
      Option(
          name: '--crop_offset',
          description: 'Change the crop offset for normal mode',
          args: [
            Arg(name: 'offset', suggestions: [
              FigSuggestion(name: 'northwest'),
              FigSuggestion(name: 'north'),
              FigSuggestion(name: 'northeast')
            ])
          ]),
      Option(
          name: '--xoffset',
          description:
              'How close the image will be to the left edge of the window. This only works with w3m'),
      Option(
          name: '--yoffset',
          description:
              'How close the image will be to the top edge of the window. This only works with w3m'),
      Option(name: '--gap', description: 'Gap between image and text'),
      Option(
          name: '--clean', description: 'Delete cached files and thumbnails'),
      Option(
          name: '--config',
          description: 'Specify a path to a custom config file',
          args: [
            Arg(
                name: 'file/none',
                suggestions: [FigSuggestion(name: 'none')],
                template: 'filepaths')
          ]),
      Option(
          name: '--no_config',
          description: 'Don\'t create the user config file'),
      Option(
          name: '--print_config',
          description: 'Print the default config file to stdout'),
      Option(
          name: '--stdout',
          description:
              'Turn off all colors and disables any ASCII/image backend'),
      Option(name: '--version', description: 'Show neofetch version'),
      Option(name: '-v', description: 'Display error messages'),
      Option(
          name: '-vv',
          description: 'Display a verbose log for error reporting'),
      Option(
          name: '--gen-man',
          description: 'Generate a manpage for neofetch in your PWD')
    ]);
