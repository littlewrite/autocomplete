import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/chown.dart';
import 'package:test/test.dart';

class _AssetTestAdapter implements CompleteAdapter {
  @override
  Map<String, String> getEnvs() => const {};

  @override
  String? getEnv(String envKey) => null;

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async {
    return const [
      FileSystemEntry(name: 'folder', isDirectory: true),
      FileSystemEntry(name: 'file.txt', isDirectory: false),
    ].where((entry) => !foldersOnly || entry.isDirectory).toList();
  }

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    final groupQuery = arguments.join(' ').contains('/Groups');
    return ProcessRunResult(
      stdout: groupQuery ? 'staff 20\nwheel 0\n' : 'alice 501\nroot 0\n',
    );
  }
}

void main() {
  test('package assets load cd folders and the chown dynamic handler lazily',
      () async {
    final assetRoot = Directory.current.uri.resolve('assets/specs/');
    final reads = <String>[];
    final handlers = JsonHandlerRegistry();
    registerChownHandlers(handlers);
    await registerJsonSpecs(
      reader: (path) {
        reads.add(path);
        return File.fromUri(assetRoot.resolve(path)).readAsString();
      },
      handlers: handlers,
    );
    expect(reads, ['index.json']);

    final engine = AutocompleteEngine(adapter: _AssetTestAdapter());
    final cd = await engine.getSuggestions('cd ', '/work', Shell.bash);
    expect(cd!.suggestions.map((item) => item.name), contains('folder/'));
    expect(
        cd.suggestions.map((item) => item.name), isNot(contains('file.txt')));
    expect(reads, ['index.json', 'c/cd.json']);

    final chown = await engine.getSuggestions('chown ', '/work', Shell.bash);
    expect(chown!.suggestions.map((item) => item.name), contains('alice'));
    expect(reads, ['index.json', 'c/cd.json', 'c/chown.json']);

    final groupEngine = AutocompleteEngine(adapter: _AssetTestAdapter());
    final group =
        await groupEngine.getSuggestions('chown owner:st', '/work', Shell.bash);
    expect(group!.suggestions.map((item) => item.name), contains('staff'));
    expect(group.charactersToDrop, 2);

    final numericGroup = handlers.custom(chownUsersAndGroupsHandler)!;
    final generated = await numericGroup(
      ['chown', '-n', ':'],
      (input) async => const ExecuteCommandOutput(
        stdout: 'staff 20\n',
        stderr: '',
        status: 0,
      ),
      null,
    );
    expect(generated.single.nameSingle, '20');
    expect(generated.single.description, 'Group - staff');
  });
}
