// Auto-generated from TypeScript source: git-quick-stats.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `git-quick-stats` CLI
final FigSpec gitQuickStatsSpec = FigSpec(
  name: 'git-quick-stats',
  description: 'Git quick statistics is a simple and efficient way to access various statistics in git repository',
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for git-quick-stats'
    ),
    Option(
      name: ['--suggest-reviewers', '-r'],
      description: 'Show the best people to contact to review code'
    ),
    Option(
      name: ['--detailed-git-stats', '-T'],
      description: 'Give a detailed list of git stats'
    ),
    Option(
      name: ['---git-stats-by-branch', '-R'],
      description: 'Show detailed list of git stats by branch'
    ),
    Option(
      name: ['--changelogs', '-c'],
      description: 'Show changelogs'
    ),
    Option(
      name: ['--changelogs-by-author', '-L'],
      description: 'Show changelogs by author'
    ),
    Option(
      name: ['--my-daily-stats', '-S'],
      description: 'Show your current daily stats'
    ),
    Option(
      name: ['--my-csv-output-by-branch-stats', '-V'],
      description: 'Output daily stats by branch in CSV format'
    ),
    Option(
      name: ['--json-output', '-j'],
      description: 'Save git log as a JSON formatted file to a specified area'
    ),
    Option(
      name: ['--branch-tree', '-b'],
      description: 'Show an ASCII graph of the git repo branch history'
    ),
    Option(
      name: ['--branches-by-date', '-D'],
      description: 'Show branches by date'
    ),
    Option(
      name: ['--contributors', '-C'],
      description: 'See a list of everyone who contributed to the repo'
    ),
    Option(
      name: ['--commits-per-author', '-a'],
      description: 'Displays a list of commits per author'
    ),
    Option(
      name: ['--commits-per-day', '-d'],
      description: 'Displays a list of commits per day'
    ),
    Option(
      name: ['--commits-by-month', '-m'],
      description: 'Displays a list of commits per month'
    ),
    Option(
      name: ['--commits-by-year', '-Y'],
      description: 'Displays a list of commits per year'
    ),
    Option(
      name: ['--commits-by-weekday', '-w'],
      description: 'Displays a list of commits per weekday'
    ),
    Option(
      name: ['--commits-by-hour', '-o'],
      description: 'Displays a list of commits per hour'
    ),
    Option(
      name: ['--commits-by-author-by-hour', '-A'],
      description: 'Displays a list of commits per hour by author'
    ),
    Option(
      name: ['--commits-by-timezone', '-z'],
      description: 'Displays a list of commits per timezone'
    ),
    Option(
      name: ['--commits-by-author-by-timezone', '-Z'],
      description: 'Displays a list of commits per timezone by author'
    )
  ]
);
