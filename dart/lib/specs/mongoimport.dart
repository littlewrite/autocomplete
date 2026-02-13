// Auto-generated from TypeScript source: mongoimport.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mongoimport` CLI
final FigSpec mongoimportSpec = FigSpec(
  name: 'mongoimport',
  description: 'Import data from a JSON, CSV, or TSV file into a MongoDB instance',
  options: [

    Option(
      name: '--help',
      description: 'Returns information on the options and use of mongoimport'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Increases the amount of internal reporting returned on standard output or in log files'
    ),
    Option(
      name: '--quiet',
      description: 'Runs mongoimport in a quiet mode that attempts to limit the amount of output'
    ),
    Option(
      name: '--version',
      description: 'Returns the mongoimport release number'
    ),
    Option(
      name: '--config',
      description: 'Specifies the full path to a YAML configuration file containing sensitive values for the following options to mongoimport',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--uri',
      description: 'Specifies the resolvable URI connection string of the MongoDB deployment',
      priority: 100,
      args: [
        Arg(
        name: 'connectionString',
        description: 'MongoDB connection string',
        suggestions: [

          FigSuggestion(
            name: 'mongodb://localhost:27017',
            description: 'Default Connection String'
          ),
          FigSuggestion(
            name: 'mongodb+srv://username:password@cluster0.example.mongodb.net/database',
            description: 'Atlas Connection String Example',
            priority: 35
          )
        ]
      )
      ]
    ),
    Option(
      name: ['--host', '-h'],
      description: 'Specifies the resolvable hostname of the MongoDB deployment',
      args: [
        Arg(
        name: 'hostname:port',
        suggestions: [

          FigSuggestion(
            name: 'localhost:27017',
            description: 'Default host'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--port',
      description: 'Specifies the TCP port on which the MongoDB instance listens for client connections',
      args: [
        Arg(
        name: 'port',
        suggestions: [

          FigSuggestion(
            name: '27017',
            description: 'Default port'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--ssl',
      description: 'Enables connection to a mongod or mongos that has TLS/SSL support enabled'
    ),
    Option(
      name: '--sslCAFile',
      description: 'Specifies the .pem file that contains the root certificate chain from the Certificate Authority',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--sslPEMKeyFile',
      description: 'Specifies the .pem file that contains both the TLS/SSL certificate and key',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--sslPEMKeyPassword',
      description: 'Specifies the password to de-crypt the certificate-key file (i.e. --sslPEMKeyFile)',
      args: [
        Arg(
        name: 'value',
        description: 'Password',
        isDangerous: true
      )
      ]
    ),
    Option(
      name: '--sslCRLFile',
      description: 'Specifies the .pem file that contains the Certificate Revocation List',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--sslAllowInvalidCertificates',
      description: 'Bypasses the validation checks for server certificates and allows the use of invalid certificates'
    ),
    Option(
      name: '--sslAllowInvalidHostnames',
      description: 'Disables the validation of the hostnames in TLS/SSL certificates'
    ),
    Option(
      name: ['--username', '-u'],
      description: 'Specifies a username with which to authenticate to a MongoDB database that uses authentication',
      args: [
        Arg(
        name: 'usernam'
      )
      ]
    ),
    Option(
      name: ['--password', '-p'],
      description: 'Specifies a password with which to authenticate to a MongoDB database that uses authentication',
      dependsOn: ['--username'],
      args: [
        Arg(
        name: 'password',
        isDangerous: true
      )
      ]
    ),
    Option(
      name: '--awsSessionToken',
      description: 'Specifies the session token for MONGODB-AWS authentication mechanism',
      args: [
        Arg(
        name: 'AWS Session Toke'
      )
      ]
    ),
    Option(
      name: '--authenticationDatabase',
      description: 'Specifies the authentication database where the specified --username has been created',
      args: [
        Arg(
        name: 'dbname',
        description: 'Database name'
      )
      ]
    ),
    Option(
      name: '--authenticationMechanism',
      description: 'Specifies the authentication mechanism the mongoimport instance uses to authenticate to the mongod or mongos',
      args: [
        Arg(
        name: 'name',
        suggestions: [

          FigSuggestion(
            name: 'SCRAM-SHA-1',
            description: 'Default'
          ),
          FigSuggestion(
            name: 'SCRAM-SHA-256'
          ),
          FigSuggestion(
            name: 'MONGODB-X509'
          ),
          FigSuggestion(
            name: 'MONGODB-AWS'
          ),
          FigSuggestion(
            name: 'GSSAPI'
          ),
          FigSuggestion(
            name: 'PLAIN'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--gssapiServiceName',
      description: 'Specify the name of the service using GSSAPI/Kerberos. This option is available only in MongoDB Enterprise',
      args: [
        Arg(
        name: 'serviceName'
      )
      ]
    ),
    Option(
      name: '--gssapiHostName',
      description: 'Specify the hostname of the service using GSSAPI/Kerberos. This option is available only in MongoDB Enterprise',
      args: [
        Arg(
        name: 'hostnam'
      )
      ]
    ),
    Option(
      name: ['--db', '-d'],
      description: 'Specifies the name of the database on which to run the mongoimport',
      args: [
        Arg(
        name: 'databas'
      )
      ]
    ),
    Option(
      name: ['--collection', '-c'],
      description: 'Specifies the name of the collection to import',
      priority: 90,
      args: [
        Arg(
        name: 'collectio'
      )
      ]
    ),
    Option(
      name: ['--fields', '-f'],
      description: 'Specify a comma separated list of field names when importing CSV or TSV files that do not have field names in the first (i.e. header) line of the file',
      exclusiveOn: ['--fieldFile'],
      args: [
        Arg(
        name: 'field1,field2,...',
        description: 'Comma separated list of fields'
      )
      ]
    ),
    Option(
      name: '--fieldFile',
      description: 'Specify a file containing a comma separated list of field names when importing CSV or TSV files that do not have field names in the first (i.e. header) line of the file',
      exclusiveOn: ['--fields', '-f'],
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--ignoreBlanks',
      description: 'Ignores empty fields in CSV and TSV exports'
    ),
    Option(
      name: '--type',
      description: 'Specifies the file type to import',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(
            name: 'json',
            description: 'JSON'
          ),
          FigSuggestion(
            name: 'csv',
            description: 'Comma-separated values'
          ),
          FigSuggestion(
            name: 'tsv',
            description: 'Tab-separated values'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--file',
      description: 'Specifies the location and name of a file containing the data to import',
      priority: 80,
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--drop',
      description: 'Modifies the import process so that the target instance drops the collection before importing the data from the input'
    ),
    Option(
      name: '--headerline',
      description: 'Treats the first line of the input file as a header line'
    ),
    Option(
      name: '--useArrayIndexFields',
      description: 'Interpret natural numbers in fields as array indexes when importing CSV or TSV files'
    ),
    Option(
      name: '--mode',
      description: 'Specifies how the import process should handle existing documents in the database that match documents in the import file',
      priority: 80,
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(
            name: 'insert',
            description: 'Insert the documents in the import file'
          ),
          FigSuggestion(
            name: 'upsert',
            description: 'Replace existing documents in the database with matching documents from the import file'
          ),
          FigSuggestion(
            name: 'merge',
            description: 'Merge existing documents that match a document in the import file with the new document'
          ),
          FigSuggestion(
            name: 'delete',
            description: 'Delete existing documents in the database that match a document in the import file'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--upsertFields',
      description: 'Specifies a list of fields for the query portion of the import process',
      args: [
        Arg(
        name: 'field1,field2,...',
        description: 'Comma separated list of fields'
      )
      ]
    ),
    Option(
      name: '--stopOnError',
      description: 'Forces mongoimport to halt the insert operation at the first error rather than continuing the operation despite errors'
    ),
    Option(
      name: 'jsonArray',
      description: 'Accepts the import of data expressed with multiple MongoDB documents within a single JSON array'
    ),
    Option(
      name: '--legacy',
      description: 'Indicates that the import data is in Extended JSON v1 format'
    ),
    Option(
      name: '--maintainInsertionOrder',
      description: 'Maintains the order of documents in the import file when inserting documents into the database'
    ),
    Option(
      name: '--numInsertionWorkers',
      description: 'Specifies the number of insertion workers to run concurrently',
      args: [
        Arg(
        name: 'number',
        description: 'Number of workers',
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: '--writeConcern',
      description: 'Specifies the write concern for each write operation that mongoimport performs',
      args: [
        Arg(
        name: 'document',
        defaultValue: '{w:\'majority\'}'
      )
      ]
    ),
    Option(
      name: '--bypassDocumentValidation',
      description: 'Enables mongoimport to bypass document validation during the operation'
    ),
    Option(
      name: '--columnsHaveTypes',
      description: 'Instructs mongoimport that the field list specified in --fields, --fieldFile, or --headerline specifies the types of each field'
    ),
    Option(
      name: '--parseGrace',
      description: 'Specifies how mongoimport handles type coercion failures when importing CSV or TSV files with --columnsHaveTypes',
      args: [
        Arg(
        name: 'grace',
        defaultValue: 'stop',
        suggestions: [

          FigSuggestion(
            name: 'autoCast'
          ),
          FigSuggestion(
            name: 'skipField'
          ),
          FigSuggestion(
            name: 'skipRow'
          ),
          FigSuggestion(
            name: 'stop'
          )
        ]
      )
      ]
    )
  ]
);
