// Auto-generated from TypeScript source: ffmpeg.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ffmpeg` CLI
final FigSpec ffmpegSpec = FigSpec(
    name: 'ffmpeg',
    description: 'Play, record, convert, and stream audio and video',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    args: [
      Arg(name: 'outfile', description: 'Output file', template: 'filepaths')
    ],
    options: [
      Option(
          name: '-i',
          description: 'Input file',
          args: [Arg(name: 'infile', template: 'filepath')]),
      Option(name: '-L', description: 'Show license'),
      Option(name: '-h', description: 'Show help', args: [Arg(name: 'topi')]),
      Option(name: '-?', description: 'Show help', args: [Arg(name: 'topi')]),
      Option(
          name: '-help', description: 'Show help', args: [Arg(name: 'topi')]),
      Option(
          name: '--help', description: 'Show help', args: [Arg(name: 'topi')]),
      Option(name: '-version', description: 'Show version'),
      Option(name: '-buildconf', description: 'Show build configuration'),
      Option(name: '-formats', description: 'Show available formats'),
      Option(name: '-muxers', description: 'Show available muxers'),
      Option(name: '-demuxers', description: 'Show available demuxers'),
      Option(name: '-devices', description: 'Show available devices'),
      Option(name: '-codecs', description: 'Show available codecs'),
      Option(name: '-decoders', description: 'Show available decoders'),
      Option(name: '-encoders', description: 'Show available encoders'),
      Option(name: '-bsfs', description: 'Show available bit stream filters'),
      Option(name: '-protocols', description: 'Show available protocols'),
      Option(name: '-filters', description: 'Show available filters'),
      Option(name: '-pix_fmts', description: 'Show available pixel formats'),
      Option(name: '-layouts', description: 'Show standard channel layouts'),
      Option(
          name: '-sample_fmts',
          description: 'Show available audio sample formats'),
      Option(
          name: '-dispositions',
          description: 'Show available stream dispositions'),
      Option(name: '-colors', description: 'Show available color names'),
      Option(
          name: '-sources',
          description: 'List sources of the input device',
          args: [
            Arg(
                name: 'device',
                generators: Generator(
                    script: ['ffmpeg', '-devices'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(
          name: '-sinks',
          description: 'List sinks of the output device',
          args: [
            Arg(
                name: 'device',
                generators: Generator(
                    script: ['ffmpeg', '-devices'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(
          name: '-hwaccels',
          description: 'Show available HW acceleration methods'),
      Option(
          name: '-loglevel',
          description: 'Set logging level',
          args: [Arg(name: 'logleve')]),
      Option(
          name: '-v',
          description: 'Set logging level',
          args: [Arg(name: 'logleve')]),
      Option(name: '-report', description: 'Generate a report'),
      Option(
          name: '-max_alloc',
          description: 'Set maximum size of a single allocated block',
          args: [Arg(name: 'byte')]),
      Option(name: '-y', description: 'Overwrite output files'),
      Option(name: '-n', description: 'Never overwrite output files'),
      Option(
          name: '-ignore_unknown', description: 'Ignore unknown stream types'),
      Option(
          name: '-filter_threads',
          description: 'Number of non-complex filter threads'),
      Option(
          name: '-filter_complex_threads',
          description: 'Number of threads for -filter_complex'),
      Option(
          name: '-stats', description: 'Print progress report during encoding'),
      Option(
          name: '-max_error_rate',
          description:
              'Ratio of decoding errors (0.0: no errors, 1.0: 100% errors) above which ffmpeg returns an error instead of success',
          args: [Arg(name: 'maximum error rat')]),
      Option(
          name: '-vol',
          description: 'Change audio volume (256=normal)',
          args: [Arg(name: 'volum')]),
      Option(
          name: '-cpuflags',
          description: 'Force specific cpu flags',
          args: [Arg(name: 'flag')]),
      Option(
          name: '-cpucount',
          description: 'Force specific cpu count',
          args: [Arg(name: 'coun')]),
      Option(
          name: '-hide_banner',
          description: 'Do not show program banner',
          args: [Arg(name: 'hide_banne')]),
      Option(name: '-copy_unknown', description: 'Copy unknown stream types'),
      Option(
          name: '-recast_media',
          description:
              'Allow recasting stream type in order to force a decoder of different media type'),
      Option(name: '-benchmark', description: 'Add timings for benchmarking'),
      Option(name: '-benchmark_all', description: 'Add timings for each task'),
      Option(
          name: '-progress',
          description: 'Write program-readable progress information',
          args: [Arg(name: 'ur')]),
      Option(
          name: '-stdin',
          description: 'Enable or disable interaction on standard input'),
      Option(
          name: '-timelimit',
          description: 'Set max runtime in seconds in CPU user time',
          args: [Arg(name: 'limi')]),
      Option(name: '-dump', description: 'Dump each input packet'),
      Option(
          name: '-hex',
          description: 'When dumping packets, also dump the payload'),
      Option(
          name: '-vsync',
          description:
              'Set video sync method globally; deprecated, use -fps_mode'),
      Option(
          name: '-frame_drop_threshold', description: 'Frame drop threshold'),
      Option(name: '-async', description: 'Audio sync method'),
      Option(
          name: '-adrift_threshold',
          description: 'Audio drift threshold',
          args: [Arg(name: 'threshol')]),
      Option(name: '-copyts', description: 'Copy timestamps'),
      Option(
          name: '-start_at_zero',
          description:
              'Shift input timestamps to start at 0 when using copyts'),
      Option(
          name: '-copytb',
          description: 'Copy input stream time base when stream copying',
          args: [Arg(name: 'mod')]),
      Option(
          name: '-dts_delta_threshold',
          description: 'Timestamp discontinuity delta threshold',
          args: [Arg(name: 'threshol')]),
      Option(
          name: '-dts_error_threshold',
          description: 'Timestamp error delta threshold',
          args: [Arg(name: 'threshol')]),
      Option(
          name: '-xerror',
          description: 'Exit on error',
          args: [Arg(name: 'erro')]),
      Option(
          name: '-abort_on',
          description: 'Abort on the specified condition flags',
          args: [Arg(name: 'flag')]),
      Option(
          name: '-filter_complex',
          description: 'Create a complex filtergraph',
          args: [Arg(name: 'graph_descriptio')]),
      Option(
          name: '-lavfi',
          description: 'Create a complex filtergraph',
          args: [Arg(name: 'graph_descriptio')]),
      Option(
          name: '-filter_complex_script',
          description: 'Read complex filtergraph description from a file',
          args: [Arg(name: 'filenam')]),
      Option(
          name: '-auto_conversion_filters',
          description: 'Enable automatic conversion filters globally'),
      Option(
          name: '-stats_period',
          description:
              'Set the period at which ffmpeg updates stats and -progress output',
          args: [Arg(name: 'tim')]),
      Option(name: '-debug_ts', description: 'Print timestamp debugging info'),
      Option(name: '-psnr', description: 'Calculate PSNR of compressed frames'),
      Option(
          name: '-vstats', description: 'Dump video coding statistics to file'),
      Option(
          name: '-vstats_file',
          description: 'Dump video coding statistics to file',
          args: [Arg(name: 'fil')]),
      Option(
          name: '-vstats_version',
          description: 'Version of the vstats format to use'),
      Option(name: '-qphist', description: 'Show QP histogram'),
      Option(
          name: '-sdp_file',
          description: 'Specify a file in which to print sdp information',
          args: [Arg(name: 'fil')]),
      Option(
          name: '-init_hw_device',
          description: 'Initialise hardware device',
          args: [Arg(name: 'arg')]),
      Option(
          name: '-filter_hw_device',
          description: 'Set hardware device used when filtering',
          args: [
            Arg(
                name: 'device',
                generators: Generator(
                    script: ['ffmpeg', '-devices'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(name: '-f', description: 'Force format', args: [Arg(name: 'fm')]),
      Option(name: '-c', description: 'Codec name', args: [
        Arg(
            name: 'codec',
            generators: Generator(
                script: ['ffmpeg', '-codecs'],
                // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                postProcess: null))
      ]),
      Option(name: '-codec', description: 'Codec name', args: [
        Arg(
            name: 'codec',
            generators: Generator(
                script: ['ffmpeg', '-codecs'],
                // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                postProcess: null))
      ]),
      Option(
          name: '-pre', description: 'Preset name', args: [Arg(name: 'prese')]),
      Option(
          name: '-map_metadata',
          description: 'Set metadata information of outfile from infile',
          args: [Arg(name: 'outfile[,metadata]:infile[,metadata')]),
      Option(
          name: '-t',
          description: 'Record or transcode "duration" seconds of audio/video',
          args: [Arg(name: 'duratio')]),
      Option(
          name: '-to',
          description: 'Record or transcode stop time',
          args: [Arg(name: 'time_sto')]),
      Option(
          name: '-fs',
          description: 'Set the limit file size in bytes',
          args: [Arg(name: 'limit_siz')]),
      Option(
          name: '-ss',
          description: 'Set the start time offset',
          args: [Arg(name: 'time_of')]),
      Option(
          name: '-sseof',
          description: 'Set the start time offset relative to EOF',
          args: [Arg(name: 'time_of')]),
      Option(
          name: '-seek_timestamp',
          description: 'Enable/disable seeking by timestamp with -ss'),
      Option(
          name: '-timestamp',
          description:
              'Set the recording timestamp (\'now\' to set the current time)',
          args: [Arg(name: 'tim')]),
      Option(
          name: '-metadata',
          description: 'Add metadata',
          args: [Arg(name: 'string=strin')]),
      Option(
          name: '-program',
          description: 'Add program with specified streams',
          args: [Arg(name: 'title=string:st=number..')]),
      Option(
          name: '-target',
          description:
              'Specify target file type ("vcd", "svcd", "dvd", "dv" or "dv50" with optional prefixes "pal-", "ntsc-" or "film-")',
          args: [Arg(name: 'typ')]),
      Option(name: '-apad', description: 'Audio pad'),
      Option(
          name: '-frames',
          description: 'Set the number of frames to output',
          args: [Arg(name: 'numbe')]),
      Option(
          name: '-filter',
          description: 'Set stream filtergraph',
          args: [Arg(name: 'filter_grap')]),
      Option(
          name: '-filter_script',
          description: 'Read stream filtergraph description from a file',
          args: [Arg(name: 'filenam')]),
      Option(
          name: '-reinit_filter',
          description: 'Reinit filtergraph on input parameter changes'),
      Option(name: '-discard', description: 'Discard'),
      Option(name: '-disposition', description: 'Disposition'),
      Option(name: '-map', description: 'Set input stream mapping', args: [
        Arg(
            name:
                '[-]input_file_id[:stream_specifier][,sync_file_id[:stream_specifier]]')
      ]),
      Option(
          name: '-map_channel',
          description: 'Map an audio channel from one stream to another',
          args: [Arg(name: 'file.stream.channel[:syncfile.syncstream')]),
      Option(
          name: '-map_chapters',
          description: 'Set chapters mapping',
          args: [Arg(name: 'input_file_inde')]),
      Option(
          name: '-accurate_seek',
          description: 'Enable/disable accurate seeking with -ss'),
      Option(
          name: '-isync',
          description: 'Indicate the input index for sync reference',
          args: [Arg(name: 'sync re')]),
      Option(
          name: '-itsoffset',
          description: 'Set the input ts offset',
          args: [Arg(name: 'time_of')]),
      Option(
          name: '-itsscale',
          description: 'Set the input ts scale',
          args: [Arg(name: 'scal')]),
      Option(
          name: '-dframes',
          description: 'Set the number of data frames to output',
          args: [Arg(name: 'numbe')]),
      Option(
          name: '-re',
          description:
              'Read input at native frame rate; equivalent to -readrate 1'),
      Option(
          name: '-readrate',
          description: 'Read input at specified rate',
          args: [Arg(name: 'spee')]),
      Option(
          name: '-shortest',
          description: 'Finish encoding within shortest input'),
      Option(name: '-bitexact', description: 'Bitexact mode'),
      Option(name: '-copyinkf', description: 'Copy initial non-keyframes'),
      Option(
          name: '-copypriorss',
          description: 'Copy or discard frames before start time'),
      Option(
          name: '-tag',
          description: 'Force codec tag/fourcc',
          args: [Arg(name: 'fourcc/ta')]),
      Option(
          name: '-q',
          description: 'Use fixed quality scale (VBR)',
          args: [Arg(name: '')]),
      Option(
          name: '-qscale',
          description: 'Use fixed quality scale (VBR)',
          args: [Arg(name: '')]),
      Option(
          name: '-profile',
          description: 'Set profile',
          args: [Arg(name: 'profil')]),
      Option(
          name: '-attach',
          description: 'Add an attachment to the output file',
          args: [Arg(name: 'filenam')]),
      Option(
          name: '-dump_attachment',
          description: 'Extract an attachment into a file',
          args: [Arg(name: 'filenam')]),
      Option(
          name: '-stream_loop',
          description: 'Set number of times input stream shall be looped',
          args: [Arg(name: 'loop coun')]),
      Option(
          name: '-thread_queue_size',
          description:
              'Set the maximum number of queued packets from the demuxer'),
      Option(
          name: '-find_stream_info',
          description:
              'Read and decode the streams to fill missing information with heuristics'),
      Option(
          name: '-bits_per_raw_sample',
          description: 'Set the number of bits per raw sample',
          args: [Arg(name: 'numbe')]),
      Option(
          name: '-autorotate',
          description: 'Automatically insert correct rotate filters'),
      Option(
          name: '-autoscale',
          description:
              'Automatically insert a scale filter at the end of the filter graph'),
      Option(
          name: '-muxdelay',
          description: 'Set the maximum demux-decode delay',
          args: [Arg(name: 'second')]),
      Option(
          name: '-muxpreload',
          description: 'Set the initial demux-decode delay',
          args: [Arg(name: 'second')]),
      Option(
          name: '-time_base',
          description:
              'Set the desired time base hint for output stream (1:24, 1:48000 or 0.04166, 2.0833e-5)',
          args: [Arg(name: 'rati')]),
      Option(
          name: '-enc_time_base',
          description:
              'Set the desired time base for the encoder (1:24, 1:48000 or 0.04166, 2.0833e-5). two special values are defined - 0 = use frame rate (video) or sample rate (audio),-1 = match source time base',
          args: [Arg(name: 'rati')]),
      Option(
          name: '-bsf',
          description: 'A comma-separated list of bitstream filters',
          args: [Arg(name: 'bitstream_filter')]),
      Option(
          name: '-fpre',
          description: 'Set options from indicated preset file',
          args: [Arg(name: 'filenam')]),
      Option(
          name: '-max_muxing_queue_size',
          description:
              'Maximum number of packets that can be buffered while waiting for all streams to initialize',
          args: [Arg(name: 'packet')]),
      Option(
          name: '-muxing_queue_data_threshold',
          description:
              'Set the threshold after which max_muxing_queue_size is taken into account',
          args: [Arg(name: 'byte')]),
      Option(
          name: '-dcodec',
          description: 'Force data codec (\'copy\' to copy stream)',
          args: [
            Arg(
                name: 'codec',
                generators: Generator(
                    script: ['ffmpeg', '-codecs'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(
          name: '-vframes',
          description: 'Set the number of video frames to output',
          args: [Arg(name: 'numbe')]),
      Option(
          name: '-r',
          description: 'Set frame rate (Hz value, fraction or abbreviation)',
          args: [Arg(name: 'rat')]),
      Option(
          name: '-fpsmax',
          description:
              'Set max frame rate (Hz value, fraction or abbreviation)',
          args: [Arg(name: 'rat')]),
      Option(
          name: '-s',
          description: 'Set frame size (WxH or abbreviation)',
          args: [Arg(name: 'siz')]),
      Option(
          name: '-aspect',
          description: 'Set aspect ratio (4:3, 16:9 or 1.3333, 1.7777)',
          args: [Arg(name: 'aspec')]),
      Option(name: '-vn', description: 'Disable video'),
      Option(
          name: '-vcodec',
          description: 'Force video codec (\'copy\' to copy stream)',
          args: [
            Arg(
                name: 'codec',
                generators: Generator(
                    script: ['ffmpeg', '-codecs'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(
          name: '-timecode',
          description: 'Set initial TimeCode value',
          args: [Arg(name: 'hh:mm:ss[:;.]f')]),
      Option(
          name: '-pass',
          description: 'Select the pass number (1 to 3)',
          args: [Arg(name: '')]),
      Option(
          name: '-vf',
          description: 'Set video filters',
          args: [Arg(name: 'filter_grap')]),
      Option(
          name: '-ab',
          description: 'Audio bitrate (please use -b:a)',
          args: [Arg(name: 'bitrat')]),
      Option(
          name: '-b',
          description: 'Video bitrate (please use -b:v)',
          args: [Arg(name: 'bitrat')]),
      Option(name: '-dn', description: 'Disable data'),
      Option(
          name: '-pix_fmt',
          description: 'Set pixel format',
          args: [Arg(name: 'forma')]),
      Option(
          name: '-rc_override',
          description: 'Rate control override for specific intervals',
          args: [Arg(name: 'overrid')]),
      Option(
          name: '-passlogfile',
          description: 'Select two pass log file name prefix',
          args: [Arg(name: 'prefi')]),
      Option(
          name: '-intra_matrix',
          description: 'Specify intra matrix coeffs',
          args: [Arg(name: 'matri')]),
      Option(
          name: '-inter_matrix',
          description: 'Specify inter matrix coeffs',
          args: [Arg(name: 'matri')]),
      Option(
          name: '-chroma_intra_matrix',
          description: 'Specify intra matrix coeffs',
          args: [Arg(name: 'matri')]),
      Option(name: '-top', description: 'Top=1/bottom=0/auto=-1 field first'),
      Option(
          name: '-vtag',
          description: 'Force video tag/fourcc',
          args: [Arg(name: 'fourcc/ta')]),
      Option(
          name: '-fps_mode',
          description:
              'Set framerate mode for matching video streams; overrides vsync'),
      Option(
          name: '-force_fps',
          description:
              'Force the selected framerate, disable the best supported framerate selection'),
      Option(
          name: '-streamid',
          description: 'Set the value of an outfile streamid',
          args: [Arg(name: 'streamIndex:valu')]),
      Option(
          name: '-force_key_frames',
          description: 'Force key frames at specified timestamps',
          args: [Arg(name: 'timestamp')]),
      Option(
          name: '-hwaccel',
          description: 'Use HW accelerated decoding',
          args: [Arg(name: 'hwaccel nam')]),
      Option(
          name: '-hwaccel_device',
          description: 'Select a device for HW acceleration',
          args: [Arg(name: 'devicenam')]),
      Option(
          name: '-hwaccel_output_format',
          description: 'Select output format used with HW accelerated decoding',
          args: [Arg(name: 'forma')]),
      Option(
          name: '-vbsf',
          description: 'Deprecated',
          args: [Arg(name: 'video bitstream_filter')]),
      Option(
          name: '-vpre',
          description: 'Set the video options to the indicated preset',
          args: [Arg(name: 'prese')]),
      Option(
          name: '-aframes',
          description: 'Set the number of audio frames to output',
          args: [Arg(name: 'numbe')]),
      Option(
          name: '-aq',
          description: 'Set audio quality (codec-specific)',
          args: [Arg(name: 'qualit')]),
      Option(
          name: '-ar',
          description: 'Set audio sampling rate (in Hz)',
          args: [Arg(name: 'rat')]),
      Option(
          name: '-ac',
          description: 'Set number of audio channels',
          args: [Arg(name: 'channel')]),
      Option(name: '-an', description: 'Disable audio'),
      Option(
          name: '-acodec',
          description: 'Force audio codec (\'copy\' to copy stream)',
          args: [
            Arg(
                name: 'codec',
                generators: Generator(
                    script: ['ffmpeg', '-codecs'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(
          name: '-af',
          description: 'Set audio filters',
          args: [Arg(name: 'filter_grap')]),
      Option(
          name: '-atag',
          description: 'Force audio tag/fourcc',
          args: [Arg(name: 'fourcc/ta')]),
      Option(
          name: '-sample_fmt',
          description: 'Set sample format',
          args: [Arg(name: 'forma')]),
      Option(
          name: '-channel_layout',
          description: 'Set channel layout',
          args: [Arg(name: 'layou')]),
      Option(
          name: '-ch_layout',
          description: 'Set channel layout',
          args: [Arg(name: 'layou')]),
      Option(
          name: '-guess_layout_max',
          description:
              'Set the maximum number of channels to try to guess the channel layout'),
      Option(
          name: '-absf',
          description: 'Deprecated',
          args: [Arg(name: 'audio bitstream_filter')]),
      Option(
          name: '-apre',
          description: 'Set the audio options to the indicated preset',
          args: [Arg(name: 'prese')]),
      Option(name: '-sn', description: 'Disable subtitle'),
      Option(
          name: '-scodec',
          description: 'Force subtitle codec (\'copy\' to copy stream)',
          args: [
            Arg(
                name: 'codec',
                generators: Generator(
                    script: ['ffmpeg', '-codecs'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) => {
//             return out
//               .split("\n")
//               .filter(Boolean)
//               .map((k) => k.split(" ").filter(Boolean)[1])
//               .filter(Boolean)
//               .filter((k) => k !== "=")
//               .map((k) => ({
//                 name: k,
//               }));
// TS_UNCONVERTED_END
                    postProcess: null))
          ]),
      Option(
          name: '-stag',
          description: 'Force subtitle tag/fourcc',
          args: [Arg(name: 'fourcc/ta')]),
      Option(name: '-fix_sub_duration', description: 'Fix subtitles duration'),
      Option(
          name: '-canvas_size',
          description: 'Set canvas size (WxH or abbreviation)',
          args: [Arg(name: 'siz')]),
      Option(
          name: '-spre',
          description: 'Set the subtitle options to the indicated preset',
          args: [Arg(name: 'prese')])
    ]);
