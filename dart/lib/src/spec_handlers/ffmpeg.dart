// Hand-written dynamic handlers migrated from src/ffmpeg.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

// The generated ffmpeg spec declares the same inline postProcess on nine
// argument generators: `ffmpeg -devices` for the device flags (-sources,
// -sinks, -filter_hw_device) and `ffmpeg -codecs` for the codec flags (-c,
// -codec, -dcodec, -vcodec, -acodec, -scodec). Each inline callback was
// materialized under its own path-based handler id.

const ffmpegSourcesPostProcessHandler =
    'manual.src_ffmpeg.spec.options_23_.args.generators.postprocess';
const ffmpegSinksPostProcessHandler =
    'manual.src_ffmpeg.spec.options_24_.args.generators.postprocess';
const ffmpegFilterHwDevicePostProcessHandler =
    'manual.src_ffmpeg.spec.options_74_.args.generators.postprocess';
const ffmpegCodecPostProcessHandler =
    'manual.src_ffmpeg.spec.options_76_.args.generators.postprocess';
const ffmpegCodecLongPostProcessHandler =
    'manual.src_ffmpeg.spec.options_77_.args.generators.postprocess';
const ffmpegDataCodecPostProcessHandler =
    'manual.src_ffmpeg.spec.options_131_.args.generators.postprocess';
const ffmpegVideoCodecPostProcessHandler =
    'manual.src_ffmpeg.spec.options_138_.args.generators.postprocess';
const ffmpegAudioCodecPostProcessHandler =
    'manual.src_ffmpeg.spec.options_167_.args.generators.postprocess';
const ffmpegSubtitleCodecPostProcessHandler =
    'manual.src_ffmpeg.spec.options_177_.args.generators.postprocess';

/// `ffmpeg -devices` / `ffmpeg -codecs` output: for every non-empty line take
/// the second whitespace token, dropping header rows, single-token lines, and
/// the `=` capability markers that `-devices`/`-codecs` print.
List<FigSuggestion> _devicesOrCodecs(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.isEmpty) continue;
    final parts = line.split(' ').where((part) => part.isNotEmpty).toList();
    if (parts.length < 2) continue;
    final name = parts[1];
    if (name == '=') continue;
    suggestions.add(FigSuggestion(name: name));
  }
  return suggestions;
}

/// Registers the ffmpeg generators referenced by the shipped ffmpeg JSON.
void registerFfmpegHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(ffmpegSourcesPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(ffmpegSinksPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(
      ffmpegFilterHwDevicePostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(ffmpegCodecPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(
      ffmpegCodecLongPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(
      ffmpegDataCodecPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(
      ffmpegVideoCodecPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(
      ffmpegAudioCodecPostProcessHandler, _devicesOrCodecs);
  registry.registerPostProcess(
      ffmpegSubtitleCodecPostProcessHandler, _devicesOrCodecs);
}
