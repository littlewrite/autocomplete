import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/xcodeproj.dart';
import 'package:test/test.dart';

void main() {
  test('xcodeproj JSON binds every filterTemplateSuggestions to the handler ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerXcodeprojHandlers(handlers);
    final source = await File('assets/specs/x/xcodeproj.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(xcodeprojFilterTemplateSuggestionsHandler));
    expect(document['name'], 'xcodeproj');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final filter = (generator as Map)['filterTemplateSuggestions'];
          if (filter is Map) {
            ids.add(filter['handler'] as String);
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
    expect(ids, isNotEmpty);
    expect(ids.toSet(), {xcodeprojFilterTemplateSuggestionsHandler});
  });

  test('filter boosts .xcodeproj/ folders and preserves the remaining folders',
      () {
    final registry = JsonHandlerRegistry();
    registerXcodeprojHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        xcodeprojFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: 'MyApp.xcodeproj/', priority: 50),
      FigSuggestion(name: 'src/', priority: 50),
      FigSuggestion(name: 'MyApp.xcodeproj/', priority: 50),
      FigSuggestion(name: 'lib/', priority: 50),
    ]);

    expect(filtered, hasLength(4));
    expect(filtered[0].nameSingle, 'MyApp.xcodeproj/');
    expect(filtered[0].priority, 76);
    expect(filtered[1].nameSingle, 'src/');
    expect(filtered[1].priority, 50);
    expect(filtered[2].nameSingle, 'MyApp.xcodeproj/');
    expect(filtered[2].priority, 76);
    expect(filtered[3].nameSingle, 'lib/');
    expect(filtered[3].priority, 50);
  });

  test('filter leaves non-folder suggestions untouched (priority kept)', () {
    final registry = JsonHandlerRegistry();
    registerXcodeprojHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        xcodeprojFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: 'README.md', priority: 50),
      FigSuggestion(name: 'notes.txt', priority: 50),
    ]);

    expect(filtered.map((item) => item.nameSingle ?? ''),
        ['README.md', 'notes.txt']);
    expect(filtered.map((item) => item.priority), [50, 50]);
  });

  test('xcodeproj spec parses with the filter handler resolved', () async {
    final registry = JsonHandlerRegistry();
    registerXcodeprojHandlers(registry);
    final source = await File('assets/specs/x/xcodeproj.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    expect(registry.unresolvedHandlers, isEmpty);
    expect(spec.name, 'xcodeproj');
    expect(spec.subcommands, isNotEmpty);
  });
}
