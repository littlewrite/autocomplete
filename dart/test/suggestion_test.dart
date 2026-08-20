import 'package:autocomplete/src/model.dart';
import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/src/suggestion.dart';
import 'package:test/test.dart';

void main() {
  group('fuzzy matching', () {
    test('matches contiguous text in suggestion list', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.fuzzy, 'em')
              .toList();
      expect(result.length, 1);
      expect(result.first.name, 'example');
    });

    test('falls back to subsequence when no contiguous match exists', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.fuzzy, 'ae')
              .toList();
      expect(result.length, 1);
      expect(result.first.name, 'example');
    });

    test('keeps contiguous matches first and appends subsequence matches', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example']),
        Suggestion(name: 'aerie', allNames: ['aerie']),
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.fuzzy, 'ae')
              .toList();
      expect(result.map((s) => s.name).toList(), equals(['aerie', 'example']));
    });

    test('does not duplicate items that match both fuzzy buckets', () {
      final suggestions = [
        Suggestion(name: 'checkout', allNames: ['checkout', 'co']),
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.fuzzy, 'co')
              .toList();
      expect(result.map((s) => s.name).toList(), equals(['co']));
    });
  });

  group('prefix matching', () {
    test('matches prefix by default', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result = filterSuggestionList(suggestions, null, 'ex').toList();
      expect(result.length, 1);
      expect(result.first.name, 'example');
    });

    test('prefix strategy rejects non-prefix', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.prefix, 'em')
              .toList();
      expect(result, isEmpty);
    });
  });

  test('filterSuggestions keeps fuzzy contains matches ahead of subsequence',
      () {
    final suggestions = [
      FigSuggestion(name: ['example', 'sample']),
      FigSuggestion(name: 'aerie'),
    ];
    final result =
        filterSuggestions(suggestions, FilterStrategy.fuzzy, 'ae', null)
            .toList();
    expect(result.map((s) => s.name).toList(), equals(['aerie', 'example']));
  });

  test('normalizeFilterStrategy accepts string value', () {
    expect(normalizeFilterStrategy('fuzzy'), FilterStrategy.fuzzy);
  });
}
