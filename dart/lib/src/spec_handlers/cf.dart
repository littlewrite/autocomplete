// Hand-written dynamic handlers migrated from src/cf.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const cfAppNamesPostProcessHandler =
    'manual.src_cf.definition.generateappnames.postprocess';
const cfOrgsPostProcessHandler =
    'manual.src_cf.definition.generateorgs.postprocess';
const cfSpacesPostProcessHandler =
    'manual.src_cf.definition.generatespaces.postprocess';
const cfServicesPostProcessHandler =
    'manual.src_cf.definition.generateservices.postprocess';

/// Trims [output], splits it on newlines, drops the first [leadingLines] rows,
/// and suggests every remaining line with a fixed [description].
List<FigSuggestion> _cfList(
    String output, String description, int leadingLines) {
  return output
      .trim() // output can have a trailing newline, prevents empty suggestion
      .split('\n')
      .skip(leadingLines)
      .map((name) => FigSuggestion(name: name, description: description))
      .toList();
}

/// `cf apps | cut -d " " -f1` output: app names begin on line 4.
List<FigSuggestion> _appNames(String output, [List<String>? tokens]) =>
    _cfList(output, 'App name', 4);

/// `cf orgs` output: org names begin on line 3.
List<FigSuggestion> _orgs(String output, [List<String>? tokens]) =>
    _cfList(output, 'Org', 3);

/// `cf spaces` output: space names begin on line 3.
List<FigSuggestion> _spaces(String output, [List<String>? tokens]) =>
    _cfList(output, 'Space', 3);

/// `cf services | cut -d " " -f1` output: service names begin on line 4.
List<FigSuggestion> _services(String output, [List<String>? tokens]) =>
    _cfList(output, 'Service', 4);

/// Registers the cf generators referenced by the shipped cf JSON.
void registerCfHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(cfAppNamesPostProcessHandler, _appNames);
  registry.registerPostProcess(cfOrgsPostProcessHandler, _orgs);
  registry.registerPostProcess(cfSpacesPostProcessHandler, _spaces);
  registry.registerPostProcess(cfServicesPostProcessHandler, _services);
}
