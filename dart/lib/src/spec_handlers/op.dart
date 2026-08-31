// Hand-written dynamic handlers migrated from src/op.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const opAccountsPostProcessHandler =
    'manual.src_op.spec.options_0_.args.generators.postprocess';

/// 1Password CLI icon shipped by src/op.ts.
const _accountIcon = 'data:image/png;base64,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';

/// `op account list --format json` output: a JSON array of 1Password
/// accounts. Suggest the account email, described by its sign-in URL, and
/// insert the account uuid, mirroring the original TS post-processor.
List<FigSuggestion> _accounts(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.trim().isEmpty) return const [];
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! List) return const [];
  final accounts = <FigSuggestion>[];
  for (final item in decoded) {
    if (item is! Map) continue;
    accounts.add(FigSuggestion(
      name: item['email']?.toString(),
      description: item['url']?.toString(),
      insertValue: item['account_uuid']?.toString(),
      icon: _accountIcon,
    ));
  }
  return accounts;
}

/// Registers the op generator referenced by the shipped op JSON.
void registerOpHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(opAccountsPostProcessHandler, _accounts);
}
