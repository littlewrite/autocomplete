// Example: request-style suggestions with a lifecycle handle.
// Run from dart/:
//
//   dart run example/stream_suggest_v2.dart "git ch"
//   dart run example/stream_suggest_v2.dart "cd " --shell zsh
//   dart run example/stream_suggest_v2.dart "git co " --live
//
// This example keeps the older demos unchanged and focuses only on the new
// request/stream API added for terminal-style UIs.

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

import 'local_adapter.dart';

Shell _parseShell(String name) {
  switch (name.toLowerCase()) {
    case 'bash':
      return Shell.bash;
    case 'zsh':
      return Shell.zsh;
    case 'fish':
      return Shell.fish;
    case 'pwsh':
      return Shell.pwsh;
    case 'powershell':
      return Shell.powershell;
    case 'cmd':
      return Shell.cmd;
    case 'xonsh':
      return Shell.xonsh;
    case 'nushell':
      return Shell.nushell;
    default:
      return Shell.bash;
  }
}

String _kindLabel(SuggestionEventKind kind) {
  switch (kind) {
    case SuggestionEventKind.staticPartial:
      return 'static';
    case SuggestionEventKind.sourcePartial:
      return 'source';
    case SuggestionEventKind.finalResult:
      return 'done';
    case SuggestionEventKind.cancelled:
      return 'cancelled';
    case SuggestionEventKind.timeout:
      return 'timeout';
    case SuggestionEventKind.error:
      return 'error';
  }
}

void _printBlob(String label, SuggestionBlob blob) {
  stdout.writeln('[$label] charactersToDrop: ${blob.charactersToDrop}');
  if (blob.argumentDescription != null) {
    stdout.writeln('[$label] argument: ${blob.argumentDescription}');
  }
  for (final suggestion in blob.suggestions.take(12)) {
    stdout.writeln(
      '[$label] ${suggestion.name}\t${suggestion.description ?? ""}',
    );
  }
  if (blob.suggestions.length > 12) {
    stdout.writeln('[$label] ... ${blob.suggestions.length - 12} more');
  }
}

// ── Live console mode ──────────────────────────────────────────────────────────

/// Flatten a multi-line description to a single line for compact rendering.
String _oneLine(String? desc) {
  if (desc == null) return '';
  final idx = desc.indexOf('\n');
  return idx < 0 ? desc : '${desc.substring(0, idx)}…';
}

/// Render the suggestion list in-place using ANSI cursor movement.
///
/// On each call we overwrite the previous frame so the terminal shows a single
/// growing list rather than a log of events.
///
/// For [SuggestionEventKind.sourcePartial] events we show the arriving blob's
/// suggestions (what's new) rather than the accumulated top N, so you can see
/// each source's contribution as it arrives.
void _renderFrame(
  String cmd,
  AccumulatedSuggestions state,
  SuggestionEvent event, {
  required bool isFirst,
  required bool lastFrame,
}) {
  const maxDisplay = 20;
  final hasTerminal = stdout.hasTerminal;
  final elapsed = event.elapsed?.inMilliseconds ?? 0;
  final kind = _kindLabel(event.kind);
  final count = state.length;

  // Build frame content first so we can count lines.
  final lines = <String>[];
  lines.add('\$ $cmd   ($elapsed ms · $kind${lastFrame ? ' ✓' : ' …'}'
      ', $count suggestion${count == 1 ? '' : 's'})');

  final display = event.blob?.suggestions ?? state.suggestions;
  for (final s in display.take(maxDisplay)) {
    final desc = _oneLine(s.description);
    lines.add('  ${s.name}${desc.isNotEmpty ? '\t$desc' : ''}');
  }
  if (display.length > maxDisplay) {
    lines.add('  … ${display.length - maxDisplay} more');
  }
  lines.add('');

  // Move cursor back and overwrite.
  if (hasTerminal) {
    if (!isFirst) {
      // We use a fixed generous scroll-back so we don't have to count
      // variable-height content.  Clear from cursor to end so trailing
      // lines from a taller previous frame don't linger.
      stdout.write('\x1B[30A\x1B[J');
    }
  } else if (!isFirst) {
    // Non-terminal: print a separator between frames.
    lines.insert(0, '─── updated ───');
  }

  for (final line in lines) {
    stdout.writeln(line);
  }
}

Future<void> _runLive(
  String cmd,
  Shell shell,
  AutocompleteEngine engine, {
  Duration eventDelay = const Duration(milliseconds: 500),
}) async {
  final cwd = Directory.current.path;

  final handle = engine.requestSuggestions(
    cmd,
    cwd,
    shell,
    timeout: const Duration(milliseconds: 1500),
    mode: SuggestionRequestMode.staticThenFinal,
  );

  final state = AccumulatedSuggestions();
  var frameIndex = 0;

  await for (final event in handle.stream) {
    if (event.blob != null && event.kind != SuggestionEventKind.finalResult) {
      state.add(event.blob!);
    }
    if (frameIndex == 0) {
      // Print a newline so the output doesn't collide with the shell prompt.
      stdout.writeln('');
    }
    _renderFrame(
      cmd,
      state,
      event,
      isFirst: frameIndex == 0,
      lastFrame: event.kind == SuggestionEventKind.finalResult,
    );
    frameIndex++;
    if (event.kind != SuggestionEventKind.finalResult) {
      await Future.delayed(eventDelay);
    }
  }

  engine.dispose();
}

// ── Default (log) mode ─────────────────────────────────────────────────────────

Future<void> _runLog(
  String cmd,
  Shell shell,
  AutocompleteEngine engine,
) async {
  final cwd = Directory.current.path;

  final handle = engine.requestSuggestions(
    cmd,
    cwd,
    shell,
    timeout: const Duration(milliseconds: 1500),
    mode: SuggestionRequestMode.staticThenFinal,
  );

  await for (final event in handle.stream) {
    switch (event.kind) {
      case SuggestionEventKind.staticPartial:
        stdout.writeln(
          '[staticPartial] elapsed=${event.elapsed?.inMilliseconds}ms',
        );
        if (event.blob != null) {
          _printBlob('staticPartial', event.blob!);
        }
        break;
      case SuggestionEventKind.sourcePartial:
        stdout.writeln(
          '[sourcePartial] ${event.blob?.suggestions.length ?? 0} suggestions '
          'elapsed=${event.elapsed?.inMilliseconds}ms',
        );
        if (event.blob != null) {
          _printBlob('sourcePartial', event.blob!);
        }
        break;
      case SuggestionEventKind.finalResult:
        stdout.writeln(
          '[finalResult] fromCache=${event.fromCache} '
          'elapsed=${event.elapsed?.inMilliseconds}ms',
        );
        if (event.blob != null) {
          _printBlob('finalResult', event.blob!);
        }
        break;
      case SuggestionEventKind.cancelled:
        stdout.writeln(
          '[cancelled] elapsed=${event.elapsed?.inMilliseconds}ms',
        );
        break;
      case SuggestionEventKind.timeout:
        stdout.writeln(
          '[timeout] elapsed=${event.elapsed?.inMilliseconds}ms',
        );
        break;
      case SuggestionEventKind.error:
        stdout.writeln(
          '[error] elapsed=${event.elapsed?.inMilliseconds}ms '
          'error=${event.error}',
        );
        if (event.stackTrace != null) {
          stdout.writeln(event.stackTrace);
        }
        break;
    }
  }

  final result = await handle.done;
  if (result == null) {
    stdout.writeln('(done: null)');
  } else {
    stdout.writeln('(done: ${result.suggestions.length} suggestions)');
  }

  engine.dispose();
}

// ── Main ───────────────────────────────────────────────────────────────────────

Future<void> main(List<String> args) async {
  String? cmd;
  var shell = Shell.bash;
  var live = false;
  var delayMs = 500;

  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--shell' || args[i] == '-s') {
      if (i + 1 < args.length) {
        shell = _parseShell(args[++i]);
      }
    } else if (args[i] == '--live' || args[i] == '-l') {
      live = true;
    } else if (args[i] == '--delay' || args[i] == '-d') {
      if (i + 1 < args.length) {
        delayMs = int.tryParse(args[++i]) ?? 500;
      }
    } else if (!args[i].startsWith('-')) {
      cmd = args[i];
    }
  }

  if (cmd == null || cmd.isEmpty) {
    print(
      'Usage: dart run example/stream_suggest_v2.dart <command_line> [options]\n'
      '\n'
      'Options:\n'
      '  --shell, -s <shell>    Shell to use (bash, zsh, fish, etc.)\n'
      '  --live, -l             Live-updating console mode\n'
      '  --delay, -d <ms>       Delay between frames in live mode (default 500)\n'
      '\n'
      'Examples:\n'
      '  dart run example/stream_suggest_v2.dart "git ch"\n'
      '  dart run example/stream_suggest_v2.dart "cd " --shell zsh\n'
      '  dart run example/stream_suggest_v2.dart "git co " --live\n'
      '  dart run example/stream_suggest_v2.dart "git co " --live --delay 1500\n',
    );
    exit(1);
  }

  registerBuiltinSpecs();
  final engine = AutocompleteEngine(adapter: LocalCompleteAdapter());

  if (live) {
    await _runLive(
      cmd,
      shell,
      engine,
      eventDelay: Duration(milliseconds: delayMs),
    );
  } else {
    await _runLog(cmd, shell, engine);
  }
}
