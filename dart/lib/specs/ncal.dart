// Auto-generated from TypeScript source: ncal.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<FigSuggestion> monthSuggestions = [

  FigSuggestion(name: 'january'),
  FigSuggestion(name: 'february'),
  FigSuggestion(name: 'march'),
  FigSuggestion(name: 'april'),
  FigSuggestion(name: 'may'),
  FigSuggestion(name: 'june'),
  FigSuggestion(name: 'july'),
  FigSuggestion(name: 'august'),
  FigSuggestion(name: 'september'),
  FigSuggestion(name: 'october'),
  FigSuggestion(name: 'november'),
  FigSuggestion(name: 'december')
];

final List<FigSuggestion> countryCodeSuggestion = [

];

/// Completion spec for `ncal` CLI
final FigSpec ncalSpec = FigSpec(
  name: 'ncal',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  description: 'Displays a calendar and the date of Easter',
  options: [

    Option(
      name: '-h',
      description: 'Turns off highlighting of today'
    ),
    Option(
      name: '-J',
      description: 'Display Julian Calendar, if combined with the -e option, display date of Easter according to the Julian Calendar'
    ),
    Option(
      name: '-e',
      description: 'Display date of Easter (for western churches)'
    ),
    Option(
      name: '-j',
      description: 'Display Julian days (days one-based, numbered from January 1)'
    ),
    Option(
      name: '-m',
      description: 'Display the specified month.  If month is specified as a decimal number, it may be followed by the letter ‘f’ or ‘p’ to indicate the following or preceding month of that number, respectively',
      exclusiveOn: ['-y', '-p'],
      args: [
        Arg(
        name: 'month',
        description: 'Display the specified month.  If month is specified as a decimal number, it may be followed by the letter ‘f’ or ‘p’ to indicate the following or preceding month of that number, respectively',
        suggestions: monthSuggestions
      )
      ]
    ),
    Option(
      name: '-y',
      description: 'Display a calendar for the specified year',
      args: [
        Arg(
        name: 'year'
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Display date of Orthodox Easter (Greek and Russian Orthodox Churches)'
    ),
    Option(
      name: '-p',
      description: 'Print the country codes and switching days from Julian to Gregorian Calendar as they are assumed by ncal.  The country code as determined from the local environment is marked with an asterisk'
    ),
    Option(
      name: '-s',
      description: 'Assume the switch from Julian to Gregorian Calendar at the date associated with the country_code.  If not specified, ncal tries to guess the switch date from the local environment or falls back to September 2, 1752.  This was when Great Britain and her colonies switched to the Gregorian Calendar',
      args: [
        Arg(
        name: 'country_code',
        suggestions: countryCodeSuggestion
      )
      ]
    ),
    Option(
      name: '-w',
      description: 'Print the number of the week below each week column'
    ),
    Option(
      name: '-3',
      description: 'Display the previous, current and next month surrounding today',
      exclusiveOn: ['-y', '-A', '-B', '-p']
    ),
    Option(
      name: '-A',
      description: 'Display the number of months after the current month',
      args: [
        Arg(
        name: 'number',
        description: 'Number of months to display'
      )
      ]
    ),
    Option(
      name: '-B',
      description: 'Display the number of months before the current month',
      args: [
        Arg(
        name: 'number',
        description: 'Number of months to display'
      )
      ]
    ),
    Option(
      name: '-C',
      description: 'Switch to cal mode'
    ),
    Option(
      name: '-N',
      description: 'Switch to ncal mode'
    ),
    Option(
      name: '-d',
      description: 'Use yyyy-mm as the current date (for debugging of date selection)',
      args: [
        Arg(
        name: 'yyyy-mm',
        description: 'Date to use as the current date'
      )
      ]
    ),
    Option(
      name: '-H',
      description: 'Use yyyy-mm-dd as the current date (for debugging of highlighting)',
      args: [
        Arg(
        name: 'yyyy-mm-dd',
        description: 'Date to use as the current date'
      )
      ]
    )
  ]
);
