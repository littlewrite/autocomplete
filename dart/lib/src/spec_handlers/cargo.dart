// Hand-written dynamic handlers migrated from src/cargo.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const cargoPackageGeneratorPostProcessHandler =
    'manual.src_cargo.definition.packagegenerator.postprocess';

const _cargoIcon = '📦';

/// `cargo metadata --format-version 1 --no-deps` output: a JSON object whose
/// `packages` array yields the crate names. The suggestion name is the package
/// name and the description is the version, optionally followed by
/// ` - <description>`.
List<FigSuggestion> _packages(String output, [List<String>? tokens]) {
  tokens;
  try {
    final obj = jsonDecode(output) as Map<String, dynamic>;
    final packages = obj['packages'] as List;
    return packages.map((package) {
      final pkg = package as Map<String, dynamic>;
      final version = pkg['version'] as String;
      final description = pkg['description'] as String?;
      return FigSuggestion(
        icon: _cargoIcon,
        name: pkg['name'] as String,
        description: description == null ? version : '$version - $description',
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the cargo generators referenced by the shipped cargo JSON.
void registerCargoHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      cargoPackageGeneratorPostProcessHandler, _packages);
}
