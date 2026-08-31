import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ffmpeg.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results);

  final Map<String, ProcessRunResult> _results;

  @override
  Map<String, String> getEnvs() => const {};

  @override
  String? getEnv(String envKey) => null;

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async =>
      const [];

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    final key = [executable, ...arguments].join(' ');
    return _results[key] ?? const ProcessRunResult(stdout: '');
  }
}

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the root options' argument generators.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final option in spec.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
  }
  return null;
}

const allFfmpegHandlers = [
  ffmpegSourcesPostProcessHandler,
  ffmpegSinksPostProcessHandler,
  ffmpegFilterHwDevicePostProcessHandler,
  ffmpegCodecPostProcessHandler,
  ffmpegCodecLongPostProcessHandler,
  ffmpegDataCodecPostProcessHandler,
  ffmpegVideoCodecPostProcessHandler,
  ffmpegAudioCodecPostProcessHandler,
  ffmpegSubtitleCodecPostProcessHandler,
];

const devicesOutput = 'Devices:\n'
    ' D. = Demuxing supported\n'
    ' E. = Muxing supported\n'
    '--\n'
    ' D  avfoundation    AVFoundation input device\n'
    ' D  bktr            BT.878 Video capture\n'
    '  E decklink        Blackmagick DeckLink output device';

const codecsOutput = 'Codecs:\n'
    ' D..... = Decoding supported\n'
    ' .E.... = Encoding supported\n'
    ' ..B... = Bitstream filtering supported\n'
    ' .V.B.. = Video codec\n'
    ' D.V.L. h264                 H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10\n'
    ' .E.A.S. pcm_s16le           PCM signed 16-bit little-endian\n'
    '  E.L.D. h264_v4l2m2m        V4L2 h264 (transcode only)';

void main() {
  test('ffmpeg JSON binds every generator to the nine post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFfmpegHandlers(handlers);
    final source = await File('assets/specs/f/ffmpeg.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    for (final id in allFfmpegHandlers) {
      expect(source, contains(id));
    }
    expect(document['name'], 'ffmpeg');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectGenerators(item);
          }
        } else if (value is Map) {
          collectGenerators(value);
        }
      }
    }

    collectGenerators(document);
    expect(ids.toSet(), allFfmpegHandlers.toSet());
  });

  test('devices post-processor takes the second token of each line', () {
    final registry = JsonHandlerRegistry();
    registerFfmpegHandlers(registry);

    final devices = registry
        .postProcess(ffmpegSourcesPostProcessHandler)!(devicesOutput);
    expect(devices.map((item) => item.nameSingle ?? '').toList(),
        ['avfoundation', 'bktr', 'decklink']);

    // -sinks and -filter_hw_device share the same `ffmpeg -devices` transform.
    final sinks =
        registry.postProcess(ffmpegSinksPostProcessHandler)!(devicesOutput);
    expect(sinks.map((item) => item.nameSingle ?? '').toList(),
        ['avfoundation', 'bktr', 'decklink']);
    final hwDevice = registry
        .postProcess(ffmpegFilterHwDevicePostProcessHandler)!(devicesOutput);
    expect(hwDevice.map((item) => item.nameSingle ?? '').toList(),
        ['avfoundation', 'bktr', 'decklink']);
  });

  test('codec post-processor takes the second token of each line', () {
    final registry = JsonHandlerRegistry();
    registerFfmpegHandlers(registry);

    final codecs =
        registry.postProcess(ffmpegCodecPostProcessHandler)!(codecsOutput);
    expect(codecs.map((item) => item.nameSingle ?? '').toList(),
        ['h264', 'pcm_s16le', 'h264_v4l2m2m']);

    // The remaining codec flags share the same `ffmpeg -codecs` transform.
    for (final id in [
      ffmpegCodecLongPostProcessHandler,
      ffmpegDataCodecPostProcessHandler,
      ffmpegVideoCodecPostProcessHandler,
      ffmpegAudioCodecPostProcessHandler,
      ffmpegSubtitleCodecPostProcessHandler,
    ]) {
      final result = registry.postProcess(id)!(codecsOutput);
      expect(result.map((item) => item.nameSingle ?? '').toList(),
          ['h264', 'pcm_s16le', 'h264_v4l2m2m'],
          reason: 'handler $id');
    }
  });

  test('post-processor drops headers, `=` markers, and single-token lines', () {
    final registry = JsonHandlerRegistry();
    registerFfmpegHandlers(registry);

    expect(registry.postProcess(ffmpegSourcesPostProcessHandler)!(''), isEmpty);

    // Header-only output.
    expect(
        registry.postProcess(ffmpegCodecPostProcessHandler)!('Codecs:'),
        isEmpty);

    // A `=` capability marker as the second token is filtered out.
    final markers =
        ' D. = Demuxing supported\n D  avfoundation    AVFoundation input device';
    expect(
        registry
            .postProcess(ffmpegSourcesPostProcessHandler)!(markers)
            .map((item) => item.nameSingle ?? '')
            .toList(),
        ['avfoundation']);

    // A lone single-token line among real entries is skipped.
    final mixed = 'stray-token\n'
        ' D  avfoundation    AVFoundation input device\n'
        '\n'
        ' D  bktr            BT.878 Video capture';
    expect(
        registry
            .postProcess(ffmpegSourcesPostProcessHandler)!(mixed)
            .map((item) => item.nameSingle ?? '')
            .toList(),
        ['avfoundation', 'bktr']);
  });

  test('all nine ffmpeg handlers share the same transform', () {
    final registry = JsonHandlerRegistry();
    registerFfmpegHandlers(registry);

    for (final id in allFfmpegHandlers) {
      final handler = registry.postProcess(id);
      expect(handler, isNotNull, reason: 'handler $id registered');
      final devices = handler!(devicesOutput);
      expect(devices.map((item) => item.nameSingle ?? '').toList(),
          ['avfoundation', 'bktr', 'decklink'],
          reason: 'devices transform for $id');
      final codecs = handler(codecsOutput);
      expect(codecs.map((item) => item.nameSingle ?? '').toList(),
          ['h264', 'pcm_s16le', 'h264_v4l2m2m'],
          reason: 'codecs transform for $id');
    }
  });

  test('ffmpeg -devices generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerFfmpegHandlers(registry);
    final adapter = _FakeAdapter({
      'ffmpeg -devices': const ProcessRunResult(
        stdout: devicesOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/ffmpeg.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'ffmpeg -devices');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ffmpeg', tokenLength: 6, complete: true),
        CommandToken(token: '-sources', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['avfoundation', 'bktr', 'decklink']);
  });

  test('ffmpeg -codecs generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerFfmpegHandlers(registry);
    final adapter = _FakeAdapter({
      'ffmpeg -codecs': const ProcessRunResult(
        stdout: codecsOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/ffmpeg.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'ffmpeg -codecs');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ffmpeg', tokenLength: 6, complete: true),
        CommandToken(token: '-c', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['h264', 'pcm_s16le', 'h264_v4l2m2m']);
  });
}
