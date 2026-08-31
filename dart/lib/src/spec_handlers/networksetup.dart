// Hand-written dynamic handlers migrated from src/networksetup.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const networksetupHardwarePortsPostProcessHandler =
    'manual.src_networksetup.definition.hardwareports.postprocess';
const networksetupNetworkServicesPostProcessHandler =
    'manual.src_networksetup.definition.networkservices.postprocess';
const networksetupWirelessInterfacesPostProcessHandler =
    'manual.src_networksetup.definition.wirelessinterfaces.postprocess';
const networksetupInterfacesPostProcessHandler =
    'manual.src_networksetup.definition.interfaces.postprocess';
const networksetupBondsPostProcessHandler =
    'manual.src_networksetup.definition.bonds.postprocess';
const networksetupPppoeServicesPostProcessHandler =
    'manual.src_networksetup.definition.pppoeservices.postprocess';
const networksetupLocationsPostProcessHandler =
    'manual.src_networksetup.definition.locations.postprocess';

/// `networksetup -listallhardwareports` output is a series of blocks:
///
///   Hardware Port: Wi-Fi
///   Device: en0
///   Ethernet Address: xx:xx
///
/// Suggests the hardware port name, described by its device interface.
List<FigSuggestion> _hardwarePorts(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final re = RegExp(r'^Hardware Port: (.*?)\n.*?Device: (.*?)$',
      multiLine: true, dotAll: true);
  for (final match in re.allMatches(output)) {
    suggestions.add(FigSuggestion(
      name: match.group(1),
      description: 'Interface: ${match.group(2)}',
    ));
  }
  return suggestions;
}

/// `networksetup -listallnetworkservices` output is one service per line, with
/// a leading note line and disabled services prefixed by `* `.
List<FigSuggestion> _networkServices(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final lines = output.split('\n');

  for (final line in lines) {
    final trimmedLine = line.trim();
    if (trimmedLine ==
        'An asterisk (*) denotes that a network service is disabled.') {
      continue;
    }
    if (trimmedLine.isNotEmpty) {
      final serviceName = trimmedLine.replaceFirst(RegExp(r'^\* '), '').trim();
      final description = trimmedLine.startsWith('*')
          ? 'Disabled network service'
          : 'Network service';
      suggestions.add(
          FigSuggestion(name: serviceName, description: description));
    }
  }
  return suggestions;
}

/// Same `-listallhardwareports` parsing as [_hardwarePorts], but only suggests
/// the device of the Wi-Fi port, described by its hardware port.
List<FigSuggestion> _wirelessInterfaces(String output,
    [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final re = RegExp(r'^Hardware Port: (.*?)\n.*?Device: (.*?)$',
      multiLine: true, dotAll: true);
  for (final match in re.allMatches(output)) {
    if (match.group(1) == 'Wi-Fi') {
      suggestions.add(FigSuggestion(
        name: match.group(2),
        description: 'Hardwareport: ${match.group(1)}',
      ));
    }
  }
  return suggestions;
}

/// Same `-listallhardwareports` parsing, but suggests the device interface,
/// described by its hardware port.
List<FigSuggestion> _interfaces(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final re = RegExp(r'^Hardware Port: (.*?)\n.*?Device: (.*?)$',
      multiLine: true, dotAll: true);
  for (final match in re.allMatches(output)) {
    suggestions.add(FigSuggestion(
      name: match.group(2),
      description: 'Hardwareport: ${match.group(1)}',
    ));
  }
  return suggestions;
}

/// `networksetup -listBonds` output has a block per bond:
///
///   interface name: bond0
///   user-defined-name: My Bond
///   Status: active
///
/// Suggests the user-defined bond name.
List<FigSuggestion> _bonds(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final re = RegExp(r'^interface name: (.*?)\n.*?user-defined-name: (.*?)$',
      multiLine: true, dotAll: true);
  for (final match in re.allMatches(output)) {
    suggestions.add(FigSuggestion(name: match.group(2), description: 'Bonds'));
  }
  return suggestions;
}

/// `networksetup -listpppoeservices` output is one service per line; blank
/// lines are dropped.
List<FigSuggestion> _pppoeServices(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final lines = output.trim().split('\n');
  for (final line in lines) {
    if (line.trim().isNotEmpty) {
      suggestions.add(
          FigSuggestion(name: line.trim(), description: 'PPPoE Service'));
    }
  }
  return suggestions;
}

/// `networksetup -listlocations` output is one location per line; blank lines
/// are dropped.
List<FigSuggestion> _locations(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  final lines = output.trim().split('\n');
  for (final line in lines) {
    if (line.trim().isNotEmpty) {
      suggestions.add(FigSuggestion(
        name: line.trim(),
        description: 'Network Location',
      ));
    }
  }
  return suggestions;
}

/// Registers the networksetup generators referenced by the shipped
/// networksetup JSON.
void registerNetworksetupHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      networksetupHardwarePortsPostProcessHandler, _hardwarePorts);
  registry.registerPostProcess(
      networksetupNetworkServicesPostProcessHandler, _networkServices);
  registry.registerPostProcess(
      networksetupWirelessInterfacesPostProcessHandler, _wirelessInterfaces);
  registry.registerPostProcess(
      networksetupInterfacesPostProcessHandler, _interfaces);
  registry.registerPostProcess(
      networksetupBondsPostProcessHandler, _bonds);
  registry.registerPostProcess(
      networksetupPppoeServicesPostProcessHandler, _pppoeServices);
  registry.registerPostProcess(
      networksetupLocationsPostProcessHandler, _locations);
}
