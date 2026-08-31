// Hand-written dynamic handlers migrated from src/aws/s3api.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Every `--bucket` postProcess handler ID referenced by the shipped s3api
/// JSON (`dart/assets/specs/s/s3api.json`). All 97 point at the same
/// `bucketGenerator` from `src/aws/s3api.ts` (static script
/// `['aws', 's3api', 'list-buckets']`), so each registers the shared
/// [_bucketPostProcess] implementation below.
const List<String> s3apiBucketPostProcessHandlers = <String>[
  'manual.src_aws_s3api.spec.subcommands_0_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_1_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_2_.options_1_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_5_.options_1_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_7_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_8_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_9_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_10_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_11_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_12_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_13_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_15_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_16_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_17_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_18_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_19_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_20_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_21_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_22_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_23_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_24_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_25_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_26_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_27_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_28_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_29_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_30_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_31_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_32_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_33_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_34_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_35_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_37_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_38_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_39_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_40_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_41_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_42_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_43_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_44_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_45_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_46_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_47_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_48_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_49_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_51_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_52_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_53_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_54_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_55_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_56_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_57_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_58_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_59_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_60_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_61_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_62_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_65_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_66_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_67_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_68_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_69_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_70_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_71_.options_2_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_72_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_73_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_74_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_75_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_76_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_77_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_78_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_79_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_80_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_81_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_82_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_83_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_84_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_85_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_86_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_87_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_88_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_89_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_90_.options_2_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_91_.options_2_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_92_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_93_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_94_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_95_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_96_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_97_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_98_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_99_.options_1_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_100_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_102_.subcommands_0_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_102_.subcommands_1_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_102_.subcommands_2_.options_0_.args.generators.postprocess',
  'manual.src_aws_s3api.spec.subcommands_102_.subcommands_3_.options_0_.args.generators.postprocess',
];

/// `aws s3api list-buckets` output: map every entry in the `Buckets` array to
/// a bucket suggestion, mirroring the `bucketGenerator` in src/aws/s3api.ts.
///
/// Empty/invalid output and missing `Buckets` all return no suggestions.
List<FigSuggestion> _bucketPostProcess(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.trim().isEmpty) return const <FigSuggestion>[];
  dynamic json;
  try {
    json = jsonDecode(output);
  } on FormatException {
    return const <FigSuggestion>[];
  }
  if (json is! Map) return const <FigSuggestion>[];
  final buckets = json['Buckets'];
  if (buckets is! List) return const <FigSuggestion>[];
  final suggestions = <FigSuggestion>[];
  for (final bucket in buckets) {
    if (bucket is! Map) continue;
    final name = bucket['Name'];
    if (name is! String || name.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: name,
      description: 'Created: ${_createdDate(bucket['CreationDate'])}',
    ));
  }
  return suggestions;
}

/// Formats an S3 bucket `CreationDate` as `YYYY/M/D`, the Dart mirror of the
/// TS `new Date(...).toLocaleDateString()`. Falls back to the raw value when
/// it cannot be parsed; empty string when the field is absent.
String _createdDate(dynamic creationDate) {
  if (creationDate is! String || creationDate.isEmpty) return '';
  final parsed = DateTime.tryParse(creationDate);
  if (parsed == null) return creationDate;
  return '${parsed.year}/${parsed.month}/${parsed.day}';
}

/// Registers the shared bucket generator for every `--bucket` option in the
/// shipped s3api JSON.
void registerS3apiHandlers(JsonHandlerRegistry registry) {
  for (final id in s3apiBucketPostProcessHandlers) {
    registry.registerPostProcess(id, _bucketPostProcess);
  }
}
