// Auto-generated from TypeScript source: autocannon.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `autocannon` CLI
final FigSpec autocannonSpec = FigSpec(
  name: 'autocannon',
  description: 'Fast HTTP/1.1 benchmarking tool written in Node.js',
  icon: 'https://raw.githubusercontent.com/mcollina/autocannon/master/autocannon-logo-icon-100px.png',
  args: [
    Arg(
    name: 'URL',
    description: 'The URL to benchmark'
  )
  ],
  options: [

    Option(
      name: ['-c', '--connections'],
      description: 'The number of concurrent connections to use',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['-p', '--pipelining'],
      description: 'The number of pipelined requests to use',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: ['-d', '--duration'],
      description: 'The number of seconds to run the autocannon',
      exclusiveOn: ['-a', '--amount'],
      args: [
        Arg(
        name: 'SEC',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['-a', '--amount'],
      description: 'The number of requests to make before exiting the benchmark',
      exclusiveOn: ['-d', '--duration'],
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '-L',
      description: 'The number of milliseconds to elapse between taking samples. This controls the sample interval, & therefore the total number of samples, which affects statistical analyses',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: ['-S', '--socketPath'],
      description: 'A path to a Unix Domain Socket or a Windows Named Pipe. A URL is still required to send the correct Host header and path',
      args: [
        Arg(
        name: 'PATH'
      )
      ]
    ),
    Option(
      name: ['-w', '--workers'],
      description: 'Number of worker threads to use to fire requests',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: ['-W', '--warmup'],
      description: 'Use a warm up interval before starting sampling. This enables startup processes to finish and traffic to normalize before sampling begins',
      args: [

        Arg(
          name: '-c',
          defaultValue: '1'
        ),
        Arg(
          name: '-d',
          defaultValue: '3'
        )
      ]
    ),
    Option(
      name: '--on-port',
      description: 'Start the command listed after -- on the command line. When it starts listening on a port, start sending requests to that port. A URL is still required to send requests to the correct path. The hostname can be omitted, `localhost` will be used by default',
      args: [
        Arg(
        name: 'PORT'
      )
      ]
    ),
    Option(
      name: ['-m', '--method'],
      description: 'The HTTP method to use',
      args: [
        Arg(
        name: 'METHOD',
        defaultValue: 'GET',
        suggestions: [

          FigSuggestion(name: 'GET'),
          FigSuggestion(name: 'POST'),
          FigSuggestion(name: 'PUT'),
          FigSuggestion(name: 'DELETE'),
          FigSuggestion(name: 'PATCH'),
          FigSuggestion(name: 'HEAD'),
          FigSuggestion(name: 'OPTIONS'),
          FigSuggestion(name: 'TRACE')
        ]
      )
      ]
    ),
    Option(
      name: ['-t', '--timeout'],
      description: 'The number of seconds before timing out and resetting a connection',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['-T', '--title'],
      description: 'The title to place in the results for identification',
      args: [
        Arg(
        name: 'TITLE'
      )
      ]
    ),
    Option(
      name: ['-b', '--body'],
      description: 'The body of the request',
      dependsOn: ['-H', '--headers'],
      args: [
        Arg(
        name: 'BODY'
      )
      ]
    ),
    Option(
      name: ['-F', '--form'],
      args: [
        Arg(
        name: 'FORM'
      )
      ]
    ),
    Option(
      name: ['-i', '--input'],
      description: 'The body of the request',
      dependsOn: ['-H', '--headers'],
      args: [
        Arg(
        name: 'FILE',
        generators: Generator(
          template: 'filepaths'
        )
      )
      ]
    ),
    Option(
      name: ['-H', '--headers'],
      description: 'The request headers',
      isRepeatable: true,
      args: [
        Arg(
        name: 'K=V'
      )
      ]
    ),
    Option(
      name: '--har',
      description: 'When provided, Autocannon will use requests from the HAR file',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-B', '--bailout'],
      description: 'The number of failures before initiating a bailout',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '0'
      )
      ]
    ),
    Option(
      name: ['-M', '--maxConnectionRequests'],
      description: 'The max number of requests to make per connection to the server',
      args: [
        Arg(
        name: 'NU'
      )
      ]
    ),
    Option(
      name: ['-O', '--maxOverallRequests'],
      description: 'The max number of requests to make overall to the server',
      args: [
        Arg(
        name: 'NU'
      )
      ]
    ),
    Option(
      name: ['-r', '--connectionRate'],
      description: 'The max number of requests to make per second from an individual connection',
      args: [
        Arg(
        name: 'NU'
      )
      ]
    ),
    Option(
      name: ['-R', '--overallRate'],
      description: 'The max number of requests to make per second from all connections',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: ['-C', '--ignoreCoordinatedOmission'],
      description: 'Ignore the coordinated omission issue when requests should be sent at a fixed rate using \'connectionRate\' or \'overallRate\''
    ),
    Option(
      name: ['-D', '--reconnectRate'],
      description: 'The number of requests to make before resetting a connections connection to the server',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: ['-n', '--no-progress'],
      description: 'Don\'t render the progress bar. default: false'
    ),
    Option(
      name: ['-l', '--latency'],
      description: 'Print all the latency data. default: false'
    ),
    Option(
      name: ['-I', '--idReplacement'],
      description: 'Enable replacement of [<id>] with a randomly generated ID within the request body. default: false'
    ),
    Option(
      name: ['-j', '--jsonPath'],
      description: 'Print the output as newline delimited JSON. This will cause the progress bar and results not to be rendered'
    ),
    Option(
      name: ['-f', '--forever'],
      description: 'Run the benchmark forever. Efficiently restarts the benchmark on completion'
    ),
    Option(
      name: ['-s', '--servername'],
      description: 'Server name for the SNI (Server Name Indication) TLS extension. Defaults to the hostname of the URL when it is not an IP address'
    ),
    Option(
      name: ['-x', '--excludeErrorStats'],
      description: 'Exclude error statistics (non-2xx HTTP responses) from the final latency and bytes per second averages. default: false'
    ),
    Option(
      name: ['-E', '--expectBody'],
      description: 'Ensure the body matches this value. If enabled, mismatches count towards bailout. Enabling this option will slow down the load testing',
      args: [
        Arg(
        name: 'EXPECTED'
      )
      ]
    ),
    Option(
      name: '--renderStatusCodes',
      description: 'Print status codes and their respective statistics'
    ),
    Option(
      name: '--cert',
      description: 'Path to cert chain in pem format',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--key',
      description: 'Path to private key for specified cert in pem format',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ca',
      description: 'Path to trusted ca certificates for the test. This argument accepts both a single file as well as a list of files',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Print connection errors to stderr'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print the version number'
    ),
    Option(
      name: ['-V', '--verbose'],
      description: 'Print the table with results (default: true)'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help'
    )
  ]
);
