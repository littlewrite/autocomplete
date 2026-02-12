// Auto-generated from TypeScript source: ddosify.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ddosify` CLI
final FigSpec ddosifySpec = FigSpec(
  name: 'ddosify',
  description: 'High-performance load testing tool, written in Golang',
  options: [
    Option(
      name: '-t',
      description: 'Target website URL. Example: https://ddosify.com',
      insertValue: '-t https://{cursor}',
      priority: 90,
      args: [
        Arg(
        name: 'URL'
      )
      ]
    ),
    Option(
      name: '-n',
      priority: 80,
      description: 'Total request count. Default: 100',
      args: [
        Arg(
        name: 'RequestCount',
        defaultValue: '100'
      )
      ]
    ),
    Option(
      name: '-d',
      priority: 80,
      description: 'Test duration in seconds. Default: 10',
      args: [
        Arg(
        name: 'Duration',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: '-l',
      priority: 70,
      description: 'Type of the request. Default: linear',
      args: [
        Arg(
        name: 'RequestType',
        defaultValue: 'linear',
        suggestions: [
          FigSuggestion(
            name: 'linear'
          ),
          FigSuggestion(
            name: 'incremental'
          ),
          FigSuggestion(
            name: 'waved'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-m',
      description: 'HTTP Methods. Default: GET',
      args: [
        Arg(
        name: 'HTTPMethod',
        defaultValue: 'GET',
        suggestions: [
          FigSuggestion(
            name: 'GET'
          ),
          FigSuggestion(
            name: 'POST'
          ),
          FigSuggestion(
            name: 'PUT'
          ),
          FigSuggestion(
            name: 'DELETE'
          ),
          FigSuggestion(
            name: 'HEAD'
          ),
          FigSuggestion(
            name: 'PATCH'
          ),
          FigSuggestion(
            name: 'OPTIONS'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-b',
      description: 'Body for the request',
      insertValue: '-b \'{cursor}\'',
      args: [
        Arg(
        name: 'Body'
      )
      ]
    ),
    Option(
      name: '-a',
      description: 'Basic authentication',
      args: [
        Arg(
        name: 'BasicAuth',
        suggestions: [
          FigSuggestion(
            name: 'username:password'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-h',
      description: 'Headers of the request. You can provide multiple headers',
      insertValue: '-h \'{cursor}\'',
      isRepeatable: true,
      args: [
        Arg(
        name: 'header',
        suggestions: [
          FigSuggestion(
            name: 'Content-Type: application/json'
          ),
          FigSuggestion(
            name: 'User-Agent: DdosifyLoadGenerator/0.8.1'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-T',
      description: 'Timeout in seconds. Default: 5',
      args: [
        Arg(
        name: 'Timeout',
        defaultValue: '5'
      )
      ]
    ),
    Option(
      name: '-P',
      description: 'Proxy address',
      args: [
        Arg(
        name: 'Proxy',
        suggestions: [
          FigSuggestion(
            name: 'http://user:pass@proxy_host.com:port'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Test result output format. Default: stdout',
      args: [
        Arg(
        name: 'OutputFormat',
        defaultValue: 'stdout',
        suggestions: [
          FigSuggestion(
            name: 'stdout'
          ),
          FigSuggestion(
            name: 'stdout-json'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'Config file of the load test i.e example_ddosify_config.json',
      args: [
        Arg(
        name: 'ConfigFile'
      )
      ]
    ),
    Option(
      name: '--version',
      description: 'Prints version, git commit, built date (utc)'
    ),
    Option(
      name: '--debug',
      description: 'Iterates the scenario once and prints curl-like verbose result'
    ),
    Option(
      name: '--help',
      description: 'Prints CLI flags'
    )
  ]
);
