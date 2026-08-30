import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/aws.dart';
import 'package:test/test.dart';

void main() {
  test('aws profile post-process removes blank lines and preserves names', () {
    final handlers = JsonHandlerRegistry();
    registerAwsHandlers(handlers);

    final handler = handlers.postProcess(awsProfilePostProcessHandler);
    expect(handler, isNotNull);
    final suggestions = handler!.call('default\nwork\n\n');

    expect(suggestions.map((item) => item.nameSingle), ['default', 'work']);
    expect(suggestions.every((item) => item.icon == '👤'), isTrue);
  });
}
