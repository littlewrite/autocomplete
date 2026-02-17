// AI-generated from TypeScript source: envchain.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

final FigGenerator namespaces = FigGenerator(
  script: ['envchain', '--list'],
  postProcess: (String output, [List<String>? tokens]) {
    try {
      // 分割、去重、过滤、排序
      final namespaceList = output
          .split('\n')
          .map((line) => line.trim())
          .where((line) => line.isNotEmpty)
          .toSet() // 去重
          .toList()
        ..sort(); // 排序

      return namespaceList
          .map((namespace) => FigSuggestion(
                name: namespace,
                description: 'NAMESPACE $namespace',
                icon: '🔐', // 添加图标表示环境变量
                priority: 50,
              ))
          .toList();
    } catch (e) {
      print('Error processing namespaces: $e');
      return <FigSuggestion>[];
    }
  },
);

/// Completion spec for `envchain` CLI
final FigSpec envchainSpec = FigSpec(
    name: 'envchain',
    description:
        'Set environment variables with macOS keychain or D-Bus secret service',
    args: [
      Arg(name: 'NAMESPACE', generators: namespaces),
      Arg(name: 'CMD')
    ],
    subcommands: [
      Subcommand(
          name: ['-s', '--set'],
          description:
              'Add keychain item of environment variable +ENV+ for namespace +NAMESPACE+',
          icon: 'fig://icon?type=option',
          args: [
            Arg(name: 'NAMESPACE', generators: namespaces),
            Arg(name: 'ENV', isVariadic: true)
          ],
          options: [
            Option(
                name: ['-n', '--noecho'],
                description: 'Do not echo user input'),
            Option(
                name: ['-p', '--require-passphrase'],
                description: 'Always ask for keychain passphrase',
                exclusiveOn: ['--no-require-passphrase']),
            Option(
                name: ['-P', '--no-require-passphrase'],
                description: 'Do not ask for keychain passphrase',
                exclusiveOn: ['--require-passphrase'])
          ]),
      Subcommand(
          name: ['-l', '--list'],
          description: 'List namespaces that have been created',
          icon: 'fig://icon?type=option')
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (namespaces)
// const namespaces: Fig.Generator = {
//   script: ["envchain", "--list"],
//   postProcess: (output) => {
//     return Array.from(new Set(output.split("\n"))).map((namespace) => {
//       return {
//         name: namespace,
//         description: `NAMESPACE ${namespace}`,
//       };
//     });
//   }
// TS_GENERATOR_BLOCK_END
