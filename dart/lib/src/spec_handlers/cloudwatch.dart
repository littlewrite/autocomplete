// Hand-written dynamic handlers migrated from src/aws/cloudwatch.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const cloudwatchGetInsightRuleReportMaxContributorCountHandler =
    'manual.src_aws_cloudwatch.spec.subcommands_15_.options_4_.args.suggestions';

/// `--max-contributor-count` values 1..100, mirroring
/// `Array.from({ length: 101 - 1 }, (_, k) => String(k + 1))`.
List<FigSuggestion> _maxContributorCounts() {
  return List.generate(100, (index) => FigSuggestion(name: '${index + 1}'));
}

/// Registers the cloudwatch suggestions handler referenced by the shipped
/// cloudwatch JSON.
void registerCloudwatchHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      cloudwatchGetInsightRuleReportMaxContributorCountHandler,
      (tokens, executeCommand, context) async => _maxContributorCounts());
}
