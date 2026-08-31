// Hand-written dynamic handlers migrated from src/dcli.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const dcliDeviceGeneratorPostProcessHandler =
    'manual.src_dcli.definition.devicegenerator.postprocess';
const dcliTeamCredentialGeneratorPostProcessHandler =
    'manual.src_dcli.definition.teamcredentialgenerator.postprocess';

/// Formats a unix timestamp (seconds) like JS `new Date(unix * 1000)
/// .toLocaleString()`. The exact rendering is locale/timezone dependent in the
/// source, so this uses a deterministic en-US-style shape.
String _unixToDateString(num unix) {
  final date =
      DateTime.fromMillisecondsSinceEpoch(unix.toInt() * 1000).toLocal();
  final period = date.hour >= 12 ? 'PM' : 'AM';
  final hour12 = date.hour % 12 == 0 ? 12 : date.hour % 12;
  final minute = date.minute.toString().padLeft(2, '0');
  final second = date.second.toString().padLeft(2, '0');
  return '${date.month}/${date.day}/${date.year}, '
      '$hour12:$minute:$second $period';
}

/// `dcli devices list --json` output: an array of devices. Suggests each
/// device name (inserted as its device id), most recently active first.
List<FigSuggestion> _devices(String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    final devices = decoded.whereType<Map<String, dynamic>>().toList();
    devices.sort((a, b) =>
        ((b['lastActivityDateUnix'] as num) - (a['lastActivityDateUnix'] as num))
            .toInt());
    return devices.map((device) {
      return FigSuggestion(
        name: device['deviceName'],
        description: 'Last activity: '
            '${_unixToDateString(device['lastActivityDateUnix'] as num)}',
        insertValue: device['deviceId'],
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// `dcli team credentials list --json` output: an array of team credentials.
/// Suggests each device name alongside its access key (inserted as the access
/// key), newest created first. The name keeps the source's trailing `}`.
List<FigSuggestion> _teamCredentials(String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    final credentials = decoded.whereType<Map<String, dynamic>>().toList();
    credentials.sort((a, b) =>
        ((b['creationDateUnix'] as num) - (a['creationDateUnix'] as num))
            .toInt());
    return credentials.map((credential) {
      return FigSuggestion(
        name: '${credential['deviceName']} (${credential['accessKey']})}',
        description: 'Created: '
            '${_unixToDateString(credential['creationDateUnix'] as num)}',
        insertValue: credential['accessKey'],
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the dcli generators referenced by the shipped dcli JSON.
void registerDcliHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(dcliDeviceGeneratorPostProcessHandler, _devices);
  registry.registerPostProcess(
      dcliTeamCredentialGeneratorPostProcessHandler, _teamCredentials);
}
