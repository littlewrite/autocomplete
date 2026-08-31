import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/sequelize.dart';
import 'package:test/test.dart';

/// The subcommand names (including aliases for list-name subcommands) ported
/// from the `subCommands` list in src/sequelize.ts.
const _allNames = <String>{
  'db:migrate',
  'db:migrate:schema:timestamps:add',
  'db:migrate:status',
  'db:migrate:undo',
  'db:migrate:undo:all',
  'db:seed',
  'db:seed:undo',
  'db:seed:all',
  'db:seed:undo:all',
  'db:create',
  'db:drop',
  'init',
  'init:config',
  'init:migrations',
  'init:models',
  'init:seeders',
  'migration:generate',
  'migration:create',
  'model:generate',
  'model:create',
  'seed:generate',
  'seed:create',
};

void main() {
  test('sequelize JSON resolves the whole-subcommands handler to all subcommands',
      () async {
    final registry = JsonHandlerRegistry();
    registerSequelizeHandlers(registry);
    final source = await File('assets/specs/s/sequelize.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    // Root `subcommands` is the whole-`subcommands` handler reference resolved
    // to the `subCommands` list from src/sequelize.ts.
    expect(spec.subcommands, isNotNull);
    final names = <String>{};
    for (final subcommand in spec.subcommands!) {
      names.addAll(subcommand.nameList);
    }
    expect(names, _allNames);
    expect(names.length, _allNames.length);
  });

  test('sequelize subcommands keep their own options then commonOptions',
      () async {
    final registry = JsonHandlerRegistry();
    registerSequelizeHandlers(registry);
    final source = await File('assets/specs/s/sequelize.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    // Every subcommand carries the shared common options (--env, --debug,
    // --version, ...) appended after its own options.
    for (final subcommand in spec.subcommands!) {
      final options = subcommand.options;
      expect(options, isNotNull,
          reason: '${subcommand.nameList} should have options');
      final names = <String>{};
      for (final option in options!) {
        names.addAll(option.nameList);
      }
      expect(names, contains('--env'),
          reason: '${subcommand.nameList} should include common --env');
      expect(names, contains('--version'),
          reason: '${subcommand.nameList} should include common --version');
    }

    // Own options come first: db:migrate lists --to/--from before --env.
    final migrate = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('db:migrate'));
    expect(migrate.options![0].nameList, contains('--to'));
    expect(migrate.options![1].nameList, contains('--from'));
    expect(migrate.options![2].nameList, contains('--env'));

    // A subcommand with no own options (db:seed:all) is exactly commonOptions.
    final seedAll = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('db:seed:all'));
    expect(seedAll.options!.first.nameList, contains('--env'));
    expect(seedAll.options!.map((o) => o.nameList).map((n) => n.first),
        [
          '--env',
          '--config',
          '--options-path',
          '--migrations-path',
          '--seeders-path',
          '--models-path',
          '--url',
          '--debug',
          '--help',
          '--version',
        ]);
  });

  test('sequelize JSON rejects an unregistered subcommands handler', () async {
    final registry = JsonHandlerRegistry();
    final source = await File('assets/specs/s/sequelize.json').readAsString();
    expect(() => figSpecFromJsonString(source, handlers: registry),
        throwsA(isA<JsonSpecFormatException>()));
  });
}
