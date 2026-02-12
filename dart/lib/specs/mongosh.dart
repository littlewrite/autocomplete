// Auto-generated from TypeScript source: mongosh.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mongosh` CLI
final FigSpec mongoshSpec = FigSpec(
  name: 'mongosh',
  description: 'The MongoDB Shell, mongosh  is a fully functional JavaScript and Node.js 14.x REPL environment for interacting with MongoDB deployments',
  args: [
    Arg(
    name: 'Connection String',
    isOptional: true,
    defaultValue: 'mongodb://localhost:27017',
    suggestions: [
      FigSuggestion(
        name: 'mongodb://localhost:27017',
        description: 'Default Connection String; Equivalent to running mongosh without any commands'
      ),
      FigSuggestion(
        name: 'mongodb+srv://cluster0.example.mongodb.net/sample_geospatial',
        description: 'Atlas Connection String Example',
        priority: 35
      )
    ]
  )
  ],
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'View your current mongosh version'
    ),
    Option(
      name: '--shell',
      description: 'Enables the shell interface. If you invoke the mongosh command and specify a JavaScript file as an argument, or use --eval to specify JavaScript on the command line, the --shell option provides the user with a shell prompt after the file finishes executing'
    ),
    Option(
      name: '--eval',
      description: 'Evaluates a JavaScript expression that is specified as an argument. mongosh does not load its own environment when evaluating code. As a result many options of the shell environment are not available. The result of evaluating a JavaScript argument is printed to your command line',
      args: [
        Arg(
        name: 'javascript'
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Returns information on the options and use of the MongoDB Shell'
    ),
    Option(
      name: '--authenticationDatabase',
      description: 'Specifies the authentication database where the specified --username has been created. See Authentication Database',
      args: [
        Arg(
        name: 'dbname'
      )
      ]
    ),
    Option(
      name: '--gssapiHostName',
      description: 'Specify the hostname of a service using GSSAPI/Kerberos. Only required if the hostname of a machine does not match the hostname resolved by DNS',
      args: [
        Arg(
        name: 'hostname',
        description: 'This option is available only in MongoDB Enterprise'
      )
      ]
    ),
    Option(
      name: '--gssapiServiceName',
      description: 'Specify the name of the service using GSSAPI/Kerberos. Only required if the service does not use the default name of mongodb',
      args: [
        Arg(
        name: 'saslServiceName',
        description: 'GssapiServiceName defaults to mongodb for all clients and MongoDB instances. If you change saslServiceName setting on a MongoDB instance, you must set gssapiServiceName to match that setting'
      )
      ]
    ),
    Option(
      name: ['--password', '-p'],
      description: 'Specifies a password with which to authenticate to a MongoDB database that uses authentication. Use in conjunction with the --username and --authenticationDatabase options',
      args: [
        Arg(
        name: 'password'
      )
      ]
    ),
    Option(
      name: ['--username', '-u'],
      description: 'Specifies a username with which to authenticate to a MongoDB database that uses authentication. Use in conjunction with the --password and --authenticationDatabase options',
      args: [
        Arg(
        name: 'username'
      )
      ]
    ),
    Option(
      name: '--retryWrites',
      description: 'Enables retryable writes as the default for sessions in the MongoDB Shell'
    ),
    Option(
      name: '--authenticationMechanism',
      description: 'Specifies the authentication mechanism the MongoDB Shell uses to authenticate to the mongod or mongos',
      args: [
        Arg(
        name: 'authentication mechanism',
        suggestions: [
          FigSuggestion(
            name: 'SCRAM-SHA-1',
            description: 'RFC 5802 standard Salted Challenge Response Authentication Mechanism using the SHA-1 hash function'
          ),
          FigSuggestion(
            name: 'SCRAM-SHA-256',
            description: 'RFC 7677 standard Salted Challenge Response Authentication Mechanism using the SHA-256 hash function'
          ),
          FigSuggestion(
            name: 'MONGODB-X509',
            description: 'MongoDB TLS SSL certificate authentication'
          ),
          FigSuggestion(
            name: 'GSSAPI (Kerberos)',
            description: 'External authentication using Kerberos. This mechanism is available only in MongoDB Enterprise'
          ),
          FigSuggestion(
            name: 'PLAIN (LDAP SASL)',
            description: 'External authentication using LDAP. You can also use PLAIN for authenticating in-database users. PLAIN transmits passwords in plain text. This mechanism is available only in MongoDB Enterprise'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--nodb',
      description: 'Prevents the shell from connecting to any database instances'
    ),
    Option(
      name: '--norc',
      description: 'Prevents the shell from sourcing and evaluating ~/.mongoshrc.js on startup'
    ),
    Option(
      name: '--quiet',
      description: 'Skips all messages during startup (such as welcome messages and startup warnings) and goes directly to the prompt'
    ),
    Option(
      name: '--verbose',
      description: 'Increases the verbosity of the shell output during the connection process and when running commands'
    ),
    Option(
      name: '--port',
      description: 'Specifies the port where the mongod or mongos instance is listening. If --port is not specified, the MongoDB Shell attempts to connect to port 27017',
      args: [
        Arg(
        name: 'port',
        suggestions: [
          FigSuggestion(
            name: '27017',
            description: 'Default-port'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--tls',
      description: 'Enables connection to a mongod or mongos that has TLS SSL support enabled'
    ),
    Option(
      name: '--tlsAllowInvalidHostnames',
      description: 'Disables the validation of the hostnames in the certificate presented by the mongod/mongos instance. Allows the MongoDB Shell to connect to MongoDB instances even if the hostname in the server certificates do not match the server\'s host'
    ),
    Option(
      name: '--tlsAllowInvalidCertificates',
      description: 'Bypasses the validation checks for the certificates presented by the mongod/mongos instance and allows connections to servers that present invalid certificates'
    ),
    Option(
      name: '--tlsDisabledProtocols',
      description: 'Disables the specified TLS protocols',
      args: [
        Arg(
        name: 'protocols',
        suggestions: [
          FigSuggestion(
            name: 'TLS1_0'
          ),
          FigSuggestion(
            name: 'TLS1_1'
          ),
          FigSuggestion(
            name: 'TLS1_2'
          ),
          FigSuggestion(
            name: 'TLS1_3',
            description: '(Starting in version 4.0.4, 3.6.9, 3.4.24)'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--tlsCAFile',
      description: 'Specifies the .pem file that contains the root certificate chain from the Certificate Authority. This file is used to validate the certificate presented by the mongod/mongos instance',
      args: [
        Arg(
        name: 'filePath'
      )
      ]
    ),
    Option(
      name: '--tlsCRLFile',
      description: 'Specifies the .pem file that contains the root certificate chain from the Certificate Authority. This file is used to validate the certificate presented by the mongod/mongos instance',
      args: [
        Arg(
        name: 'filePath'
      )
      ]
    ),
    Option(
      name: '--tlsCertificateKeyFile',
      description: 'Enables connection to a mongod or mongos that has TLS SSL support enabled',
      args: [
        Arg(
        name: 'filePath'
      )
      ]
    )
  ]
);
