// Auto-generated from TypeScript source: sam.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sam` CLI
final FigSpec samSpec = FigSpec(
  name: 'sam',
  description: 'AWS Serverless Application Model CLI',
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Init an AWS SAM application',
      options: [

        Option(
          name: '--no-interactive',
          description: 'Disable interactive prompting for init parameters, and fail if any required values are missing'
        ),
        Option(
          name: ['-a', '--architecture'],
          description: 'Architectures your Lambda function will run on',
          args: [
            Arg(
            name: 'architecture',
            suggestions: [

              FigSuggestion(name: 'arm64'),
              FigSuggestion(name: 'x86_64')
            ]
          )
          ]
        ),
        Option(
          name: ['-l', '--location'],
          description: 'Template location (git, mercurial, http(s), zip, path)',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['-r', '--runtime'],
          description: 'Lambda Runtime for your app',
          args: [
            Arg(
            name: 'runtime',
            suggestions: [

              FigSuggestion(name: 'dotnet8'),
              FigSuggestion(name: 'dotnet6'),
              FigSuggestion(name: 'go1.x'),
              FigSuggestion(name: 'java21'),
              FigSuggestion(name: 'java17'),
              FigSuggestion(name: 'java11'),
              FigSuggestion(name: 'java8.al2'),
              FigSuggestion(name: 'nodejs20.x'),
              FigSuggestion(name: 'nodejs18.x'),
              FigSuggestion(name: 'nodejs16.x'),
              FigSuggestion(name: 'provided.al2023'),
              FigSuggestion(name: 'provided.al2'),
              FigSuggestion(name: 'provided'),
              FigSuggestion(name: 'python3.12'),
              FigSuggestion(name: 'python3.11'),
              FigSuggestion(name: 'python3.10'),
              FigSuggestion(name: 'python3.9'),
              FigSuggestion(name: 'python3.8'),
              FigSuggestion(name: 'ruby3.2')
            ]
          )
          ]
        ),
        Option(
          name: ['-p', '--package-type'],
          description: 'Package type for your app',
          args: [
            Arg(
            name: 'type',
            suggestions: [

              FigSuggestion(name: 'zip'),
              FigSuggestion(name: 'image')
            ]
          )
          ]
        ),
        Option(
          name: ['-i', '--base-image'],
          description: 'Lambda Image of your app',
          args: [
            Arg(
            name: 'image name',
            suggestions: [

              FigSuggestion(name: 'amazon/dotnet8-base'),
              FigSuggestion(name: 'amazon/dotnet6-base'),
              FigSuggestion(name: 'amazon/go1.x-base'),
              FigSuggestion(name: 'amazon/go-provided.al2-base'),
              FigSuggestion(name: 'amazon/go-provided.al2023-base'),
              FigSuggestion(name: 'amazon/java21-base'),
              FigSuggestion(name: 'amazon/java17-base'),
              FigSuggestion(name: 'amazon/java11-base'),
              FigSuggestion(name: 'amazon/java8.al2-base'),
              FigSuggestion(name: 'amazon/nodejs20.x-base'),
              FigSuggestion(name: 'amazon/nodejs18.x-base'),
              FigSuggestion(name: 'amazon/nodejs16.x-base'),
              FigSuggestion(name: 'amazon/python3.12-base'),
              FigSuggestion(name: 'amazon/python3.11-base'),
              FigSuggestion(name: 'amazon/python3.10-base'),
              FigSuggestion(name: 'amazon/python3.9-base'),
              FigSuggestion(name: 'amazon/python3.8-base'),
              FigSuggestion(name: 'amazon/ruby3.2-base')
            ]
          )
          ]
        ),
        Option(
          name: ['-d', '--dependency-manager'],
          description: 'Dependency manager for your Lambda runtime',
          args: [
            Arg(
            name: 'manager',
            suggestions: [

              FigSuggestion(name: 'npm'),
              FigSuggestion(name: 'mod'),
              FigSuggestion(name: 'gradle'),
              FigSuggestion(name: 'cli-package'),
              FigSuggestion(name: 'bundler'),
              FigSuggestion(name: 'pip'),
              FigSuggestion(name: 'maven')
            ]
          )
          ]
        ),
        Option(
          name: ['-o', '--output-dir'],
          description: 'Where to output the initialized app into',
          args: [
            Arg(
            name: 'pat'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name of your project to be generated as a folder',
          args: [
            Arg(
            name: 'tex'
          )
          ]
        ),
        Option(
          name: '--app-template',
          description: 'Identifier of the managed application template you want to use',
          args: [
            Arg(
            name: 'text',
            description: 'Template nam'
          )
          ]
        ),
        Option(
          name: '--no-input',
          description: 'Disable Cookiecutter prompting and accept default values defined template config'
        ),
        Option(
          name: '--extra-context',
          description: 'Override any custom parameters in the template\'s cookiecutter.json configuration',
          args: [
            Arg(
            name: 'text',
            description: 'E.g. {"customParam1": "customValue1", "customParam2":"customValue2"}'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'Validate an AWS SAM template',
      options: []
    ),
    Subcommand(
      name: 'build',
      description: 'Build your Lambda function code',
      options: [

        Option(
          name: ['-u', '--use-container'],
          description: 'If your functions depend on packages that have natively compiled dependencies, " +\n            "use this flag to build your function inside an AWS Lambda-like Docker container'
        ),
        Option(
          name: ['-e', '--container-env-var'],
          description: 'Input environment variables through command line to pass into build containers, " +\n            "you can either input function specific format (FuncName.VarName=Value) or global format (VarName=Value)',
          args: [
            Arg(
            name: 'env va'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: ['-ef', '--container-env-var-file'],
          description: 'Path to environment variable json file (e.g., env_vars.json) to pass into build containers',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-bi', '--build-image'],
          description: 'Container image URIs',
          args: [
            Arg(
            name: 'image uri',
            description: 'Container image URIs for building functions/layers. " +\n              "You can specify for all functions/layers with just the image URI (--build-image public.ecr.aws/sam/build-nodejs14.x:latest). " +\n              "You can specify for each individual function with (--build-image FunctionLogicalID=public.ecr.aws/sam/build-nodejs14.x:latest). " +\n              "A combination of the two can be used. If a function does not have build image specified or " +\n              "an image URI for all functions, the default SAM CLI build images will be used.'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: ['-p', '--parallel'],
          description: 'Enabled parallel builds'
        ),
        Option(
          name: ['-b', '--build-dir'],
          description: 'Path to a folder where the built artifacts will be stored',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['-cd', '--cache-dir'],
          description: 'The folder where the cached artifacts are stored with `--cached` is specified',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['-s', '--base-dir'],
          description: 'Resolve relative paths to function\'s source code with respect to this folder',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['-m', '--manifest'],
          description: 'Path to a custom dependency manifest to use instead of the default one',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['-c', '--cached'],
          description: 'Enable cached builds. Use this flag to reuse build artifacts that have not changed from previous builds'
        ),
        Option(
          name: ['--beta-features', '--no-beta-features'],
          description: 'Should beta features be enabled'
        )
      ]
    ),
    Subcommand(
      name: 'local',
      description: 'Run your Serverless application locally for quick development & testing',
      options: [],
      subcommands: [

        Subcommand(
          name: 'generate-event',
          description: 'You can use this command to generate sample payloads from different event sources such as S3, API Gateway, and SNS',
          options: []
        ),
        Subcommand(
          name: 'invoke',
          description: 'Invokes a local Lambda function once',
          options: [

            Option(
              name: ['-e', '--event'],
              description: 'JSON file containing event data passed to the Lambda function',
              args: [
                Arg(
                name: 'path',
                template: 'filepath'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start-api',
          description: 'Sets up a local endpoint you can use to test your API',
          options: [

            Option(
              name: ['-s', '--static-dir'],
              description: 'Any static assets files locates in this directory will be presented at /',
              args: [
                Arg(
                name: 'path',
                template: 'filepath'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start-lambda',
          description: 'Starts a local endpoint you can use to invoke your local Lambda functions',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'package',
      description: 'Package an AWS SAM application',
      options: [

        Option(
          name: '--output-template-file',
          description: 'The path to the file where the command writes the output AWS CloudFormation template. If unspecified, the command writes the template to the standard output',
          args: [
            Arg(
            name: 'pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy an AWS SAM application',
      options: []
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete an AWS SAM application and the artifacts created by `sam deploy`',
      options: [

        Option(
          name: '--no-prompts',
          description: 'Specify this flag to allow SAM CLI to skip through the guided prompts',
          isDangerous: true
        )
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'Fetch logs for a function',
      options: []
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish a packaged AWS SAM template to the AWS Serverless Application Repository',
      options: [

        Option(
          name: '--semantic-version',
          description: 'The value provided here overrides SemanticVersion in the template metadata',
          args: [
            Arg(
            name: 'tex'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'traces',
      description: '[Beta Feature] Fetch AWS X-Ray traces'
    ),
    Subcommand(
      name: 'sync',
      description: '[Beta Feature] Sync a project to AWS'
    ),
    Subcommand(
      name: 'pipeline',
      description: 'Manage the continuous delivery of the application',
      options: [],
      subcommands: [

        Subcommand(
          name: 'init',
          description: 'Generates a CI/CD pipeline configuration file'
        ),
        Subcommand(
          name: 'bootstrap',
          description: 'Generates the required AWS resources to connect your CI/CD system'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--version',
      description: 'Show the version and exit'
    ),
    Option(
      name: '--info'
    )
  ]
);
