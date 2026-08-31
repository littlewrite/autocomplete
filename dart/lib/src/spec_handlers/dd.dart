// Hand-written dynamic handlers migrated from src/dd.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ddConvCustomHandler =
    'manual.src_dd.spec.options_12_.args.generators.custom';

/// The accepted `conv=` conversion values. Each one names a conversion that
/// `dd` applies to the input data (comma-separated list).
Future<List<FigSuggestion>> _convValues(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return const [
    FigSuggestion(
      name: 'ascii',
      icon: 'fig://icon?type=string',
      description:
          "The same as 'unblock' except characters are translated from "
          'EBCDIC to ASCII',
    ),
    FigSuggestion(
      name: 'oldascii',
      icon: 'fig://icon?type=string',
      description:
          "The same as 'unblock' except characters are translated from "
          'EBCDIC to ASCII',
    ),
    FigSuggestion(
      name: 'block',
      icon: 'fig://icon?type=string',
      description:
          'Treats the input as a sequence of newline or EOF-terminated '
          'variable length records of independent input and output block '
          'boundaries',
    ),
    FigSuggestion(
      name: 'ebcdic',
      icon: 'fig://icon?type=string',
      description:
          "The same as the 'block' value except that characters are "
          'translated from ASCII to EBCDIC after the records are converted',
    ),
    FigSuggestion(
      name: 'ibm',
      icon: 'fig://icon?type=string',
      description:
          "The same as the 'block' value except that characters are "
          'translated from ASCII to EBCDIC after the records are converted',
    ),
    FigSuggestion(
      name: 'oldebcdic',
      icon: 'fig://icon?type=string',
      description:
          "The same as the 'block' value except that characters are "
          'translated from ASCII to EBCDIC after the records are converted',
    ),
    FigSuggestion(
      name: 'oldibm',
      icon: 'fig://icon?type=string',
      description:
          "The same as the 'block' value except that characters are "
          'translated from ASCII to EBCDIC after the records are converted',
    ),
    FigSuggestion(
      name: 'lcase',
      icon: 'fig://icon?type=string',
      description: 'Transform uppercase characters into lowercase characters',
    ),
    FigSuggestion(
      name: 'noerror',
      icon: 'fig://icon?type=string',
      description: 'Do not stop processing on an input error',
    ),
    FigSuggestion(
      name: 'notrunc',
      icon: 'fig://icon?type=string',
      description: 'Do not truncate the output file. This will preserve any '
          'blocks in the output file not explicitly written by dd',
    ),
    FigSuggestion(
      name: 'osync',
      icon: 'fig://icon?type=string',
      description: 'Pad the final output block to the full output block size',
    ),
    FigSuggestion(
      name: 'sparse',
      icon: 'fig://icon?type=string',
      description: 'If one or more output blocks would consist solely of NUL '
          'bytes, try to seek the output file by the required space instead of '
          'filling them with NULs, resulting in a sparse file',
    ),
    FigSuggestion(
      name: 'swab',
      icon: 'fig://icon?type=string',
      description: 'Swap every pair of input bytes',
    ),
    FigSuggestion(
      name: 'sync',
      icon: 'fig://icon?type=string',
      description: 'Pad every input block to the input buffer size',
    ),
    FigSuggestion(
      name: 'ucase',
      icon: 'fig://icon?type=string',
      description: 'Transform lowercase characters into uppercase characters',
    ),
    FigSuggestion(
      name: 'unblock',
      icon: 'fig://icon?type=string',
      description: 'Treats the input as a sequence of fixed length records '
          'independent of input and output block boundaries',
    ),
  ];
}

/// Registers the dd generator referenced by the shipped dd JSON.
void registerDdHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(ddConvCustomHandler, _convValues);
}
