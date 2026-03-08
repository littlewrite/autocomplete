import 'package:autocomplete/src/model.dart';
import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/src/suggestion.dart';
import 'package:test/test.dart';

void main() {
  group('fuzzy matching', () {
    test('matches subsequence in suggestion list', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.fuzzy, 'em')
              .toList();
      expect(result.length, 1);
      expect(result.first.name, 'example');
    });

    test('does not match when order is wrong', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result =
          filterSuggestionList(suggestions, FilterStrategy.fuzzy, 'mx')
              .toList();
      expect(result, isEmpty);
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

    test('rejects non-prefix', () {
      final suggestions = [
        Suggestion(name: 'example', allNames: ['example'])
      ];
      final result = filterSuggestionList(suggestions, null, 'em').toList();
      expect(result, isEmpty);
    });
  });

  test('filterSuggestions uses fuzzy subsequence', () {
    final suggestions = [
      FigSuggestion(name: ['example', 'sample']),
    ];
    final result =
        filterSuggestions(suggestions, FilterStrategy.fuzzy, 'em', null)
            .toList();
    expect(result.length, 1);
    expect(result.first.name, 'example');
  });

  test('normalizeFilterStrategy accepts string value', () {
    expect(normalizeFilterStrategy('fuzzy'), FilterStrategy.fuzzy);
  });
}
