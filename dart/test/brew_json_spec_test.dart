import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/brew.dart';
import 'package:test/test.dart';

void main() {
  test('brew JSON uses reviewed shared handlers', () async {
    final handlers = JsonHandlerRegistry();
    registerBrewHandlers(handlers);
    final source = await File('assets/specs/b/brew.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(brewFormulaePostProcessHandler));
    expect(source, contains(brewStartServicesCustomHandler));
    expect(document['name'], 'brew');

    final installed = handlers.postProcess(brewFormulaePostProcessHandler)!(
      'ripgrep\nold=1\n',
    );
    expect(installed.map((item) => item.name), ['ripgrep', '']);
    expect(installed.first.description, 'Installed formula');

    final allFormulae =
        handlers.postProcess(brewAllFormulaePostProcessHandler)!(
      'dart\n',
    );
    expect(allFormulae.first.priority, 51);
    expect(allFormulae.first.description, 'Formula');

    final analytics = await handlers.custom(brewAnalyticsCustomHandler)!(
      ['brew', 'info', 'dart', '--analytics', ''],
      null,
      null,
    );
    expect(analytics.map((item) => item.name),
        ['install', 'install-on-request', 'build-error']);

    final services = await handlers.custom(brewStartServicesCustomHandler)!(
      ['brew', 'services', 'start', ''],
      (input) async {
        expect(input.command, 'bash');
        expect(input.args, [
          '-c',
          "brew services list | sed -e 's/ .*//' | tail -n +2",
        ]);
        return const ExecuteCommandOutput(
          stdout: 'postgresql\nunbound\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    final postgresql = services
        .firstWhere((suggestion) => suggestion.nameSingle == 'postgresql');
    expect(postgresql.description, 'Start postgresql');

    final repositories = await handlers.custom(brewRepositoriesCustomHandler)!(
      ['brew', 'untap', ''],
      (input) async {
        expect(input.command, 'brew');
        expect(input.args, ['tap']);
        return const ExecuteCommandOutput(
          stdout: 'homebrew/cask\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    expect(repositories.first.nameSingle, 'homebrew/cask');
  });
}
