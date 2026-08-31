// Hand-written dynamic handlers migrated from src/aws/secretsmanager.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const secretsmanagerDeleteSecretRecoveryWindowInDaysHandler =
    'manual.src_aws_secretsmanager.spec.subcommands_4_.options_1_.args.suggestions';

/// `delete-secret --recovery-window-in-days` values 7..30, mirroring
/// `Array.from({ length: 31 - 7 }, (_, k) => String(k + 7))`.
List<FigSuggestion> _recoveryWindowDays() {
  return List.generate(24, (index) => FigSuggestion(name: '${index + 7}'));
}

/// Registers the secretsmanager suggestions handler referenced by the shipped
/// secretsmanager JSON.
void registerSecretsmanagerHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      secretsmanagerDeleteSecretRecoveryWindowInDaysHandler,
      (tokens, executeCommand, context) async => _recoveryWindowDays());
}
