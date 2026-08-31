// Hand-written dynamic handlers migrated from src/mount.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const mountPartitionsPostProcessHandler =
    'manual.src_mount.spec.args_0_.generators_0_.postprocess';
const mountMapperDevicesPostProcessHandler =
    'manual.src_mount.spec.args_0_.generators_1_.postprocess';

/// `cat /proc/partitions` output: skip the two header lines, take the last
/// column (the block device name) and prefix it with `/dev/`. Entries whose
/// last token is empty (for example trailing whitespace) map to `/dev/` and are
/// dropped, mirroring the TypeScript `filter((x) => x != "/dev/")`.
List<FigSuggestion> _partitions(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final lines = output.trim().split('\n');
  if (lines.length <= 2) return const [];
  final suggestions = <FigSuggestion>[];
  for (final line in lines.sublist(2)) {
    final device = '/dev/${line.split(' ').last}';
    if (device == '/dev/') continue;
    suggestions.add(FigSuggestion(name: device, description: 'Block device'));
  }
  return suggestions;
}

/// `ls -1 /dev/mapper` output: one mapped device per line, each prefixed with
/// `/dev/mapper/`. Empty lines are skipped.
List<FigSuggestion> _mapperDevices(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final line in output.trim().split('\n')) {
    if (line.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: '/dev/mapper/$line',
      description: 'Mapped block device',
    ));
  }
  return suggestions;
}

/// Registers the mount generators referenced by the shipped mount JSON.
void registerMountHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(mountPartitionsPostProcessHandler, _partitions);
  registry.registerPostProcess(
      mountMapperDevicesPostProcessHandler, _mapperDevices);
}
