// Auto-generated from TypeScript source: rest.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rest` CLI
final FigSpec restSpec = FigSpec(
  name: 'rest',
  description: 'Invoke a custom request',
  options: [

    Option(
      name: ['--uri', '--url', '-u'],
      description: 'Request URL. If it doesn\'t start with a host, CLI assumes it as an Azure resource ID and prefixes it with the ARM endpoint of the current cloud shown by az cloud show --query endpoints.resourceManager. Common token {subscriptionId} will be replaced with the current subscription ID specified by az account set',
      args: [
        Arg(
        name: 'ur'
      )
      ]
    ),
    Option(
      name: ['--body', '-b'],
      description: 'Request body. Use @{file} to load from a file. For quoting issues in different terminals, see https://github.com/Azure/azure-cli/blob/dev/doc/use_cli_effectively.md#quoting-issues',
      args: [
        Arg(
        name: 'bod'
      )
      ]
    ),
    Option(
      name: '--headers',
      description: 'Space-separated headers in KEY=VALUE format or JSON string. Use @{file} to load from a file',
      args: [
        Arg(
        name: 'header'
      )
      ]
    ),
    Option(
      name: ['--method', '-m'],
      description: 'HTTP request method',
      args: [
        Arg(
        name: 'method',
        suggestions: [

          FigSuggestion(name: 'delete'),
          FigSuggestion(name: 'get'),
          FigSuggestion(name: 'head'),
          FigSuggestion(name: 'options'),
          FigSuggestion(name: 'patch'),
          FigSuggestion(name: 'post'),
          FigSuggestion(name: 'put')
        ]
      )
      ]
    ),
    Option(
      name: '--output-file',
      description: 'Save response payload to a file',
      args: [
        Arg(
        name: 'output-fil'
      )
      ]
    ),
    Option(
      name: '--resource',
      description: 'Resource url for which CLI should acquire a token from AAD in order to access the service. The token will be placed in the Authorization header. By default, CLI can figure this out based on --url argument, unless you use ones not in the list of "az cloud show --query endpoints"',
      args: [
        Arg(
        name: 'resourc'
      )
      ]
    ),
    Option(
      name: '--skip-authorization-header',
      description: 'Do not auto-append Authorization header'
    ),
    Option(
      name: ['--uri-parameters', '--url-parameters'],
      description: 'Query parameters in the URL. Space-separated queries in KEY=VALUE format or JSON string. Use @{file} to load from a file',
      args: [
        Arg(
        name: 'uri-parameter'
      )
      ]
    )
  ]
);
