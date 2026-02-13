// Auto-generated from TypeScript source: suitecloud.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `suitecloud` CLI
final FigSpec suitecloudSpec = FigSpec(
  name: 'suitecloud',
  description: 'SuiteCloud CLI',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  subcommands: [

    Subcommand(
      icon: '🧩',
      name: 'account:manageauth',
      description: 'Manages authentication IDs (authID) for all your projects. An authentication ID is a custom alias you gave to a specific account-role combination',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--info',
          description: 'Prints the following information for the specified authentication ID (authID): account ID, role ID, and url. Usage: account:manageauth --info {authID}',
          args: [
            Arg(
            name: 'authID'
          )
          ]
        ),
        Option(
          name: '--list',
          description: 'Prints a list of all the configured authentication IDs (authID). Usage: account:manageauth --list'
        ),
        Option(
          name: '--remove',
          description: 'Removes an authentication ID (authID). Usage: account:manageauth --remove {authID}',
          args: [
            Arg(
            name: 'authID'
          )
          ]
        ),
        Option(
          name: '--rename',
          description: 'Renames an authentication ID (authID). You must specify it together with the renameto option. Usage: account:manageauth --rename {authID} --renameto {newauthID}',
          args: [
            Arg(
            name: 'authID'
          )
          ]
        ),
        Option(
          name: '--renameto',
          description: 'Specifies the new ID for an authentication ID (authID). You must specify it together with the rename option. Usage: account:manageauth --rename {authID} --renameto {newauthID}',
          dependsOn: ['--rename'],
          args: [
            Arg(
            name: 'authID'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '🎫',
      name: 'account:savetoken',
      description: 'Saves a TBA token that you issued previously in NetSuite',
      options: [

        Option(
          name: '--account',
          description: 'Specifies the ID of the account to log in to',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--authid',
          description: 'References the custom name you gave to a specific account-role combination',
          args: [
            Arg(
            name: 'auth id'
          )
          ]
        ),
        Option(
          name: '--tokenid',
          description: 'Specifies the token ID of a TBA token you issued previously in NetSuite',
          args: [
            Arg(
            name: 'token id'
          )
          ]
        ),
        Option(
          name: '--tokensecret',
          description: 'Specifies the token secret of a TBA token you issued previously in NetSuite',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Specifies the NetSuite domain of the account you want to use. You only need to specify the NetSuite domain if you are not using a production account',
          args: [
            Arg(
            name: 'domain'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '⭐️',
      name: 'account:setup',
      description: 'Sets up an account to use with the SuiteCloud CLI for Node.js',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: ['-d', '--dev'],
          description: 'Specifies the NetSuite domain of the account you want to use. You only need to specify the NetSuite domain if you are not using a production account'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '📂',
      name: 'file:create',
      description: 'Creates a SuiteScript file',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--module',
          description: 'Specifies the SuiteScript modules you want to add to the SuiteScript file. For example, "N/record"',
          args: [
            Arg(
            name: 'module'
          )
          ]
        ),
        Option(
          name: '--path',
          description: 'Specifies the File Cabinet path of the SuiteScript file to create. For example, "/SuiteScripts/ClientScipt.js"',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Specifies the type of the SuiteScript file that you want to create. For example, "ClientScript"',
          args: [
            Arg(
            name: 'type'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '⬇️',
      name: 'file:import',
      description: 'Imports files from an account to your account customization project. You cannot import files from a SuiteApp',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--path',
          description: 'Specifies the File Cabinet paths of the files to import. For example, "/SuiteScripts/file.js"',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: '--calledfromcomparefiles',
          description: 'Message displayed should be different if called from Compare Files'
        ),
        Option(
          name: '--excludeproperties',
          description: 'Excludes all file properties within the .attributes folder'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '🗒️',
      name: 'file:list',
      description: 'Lists the files in the File Cabinet of your account',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--folder',
          description: 'Specifies the File Cabinet path, for example, "/SuiteScripts". All files within subfolders are included',
          args: [
            Arg(
            name: 'cabinet',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '⬆️',
      name: 'file:upload',
      description: 'Uploads files from your project to an account',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--paths',
          description: 'Specifies the file cabinet paths of the files to upload. To specify multiple paths, enter a space between paths and enclose the entire argument in double quotes. For example, "/SuiteScripts/file.js" for account customization projects, and "/SuiteApps/com.project.example/script.js" for SuiteApp projects',
          args: [
            Arg(
            name: 'files',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '⬇️',
      name: 'object:import',
      description: 'Imports custom objects from your NetSuite account to the SuiteCloud project. In account customization projects (ACP), if SuiteScript files are referenced in the custom objects you import, these files get imported by default',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--appid',
          description: 'Specifies your application ID. If specified, only custom objects with that application ID are imported. Otherwise, only custom objects with no application ID are imported',
          args: [
            Arg(
            name: 'app id'
          )
          ]
        ),
        Option(
          name: '--destinationfolder',
          description: 'Specifies the project folder where objects will be stored. It must be within the Objects folder of your project. For example, /Objects/MyObjects'
        ),
        Option(
          name: '--excludefiles',
          description: 'Indicates that the SuiteScript files referenced in custom objects are not imported. It can only be used in account customization projects (ACP)'
        ),
        Option(
          name: '--scriptid',
          description: 'Specifies the script ID. To specify multiple IDs, enter the IDs separated by spaces. Enter "ALL" to import all custom objects of the specified type'
        ),
        Option(
          name: '--type',
          description: 'Specifies the type of custom objects to import. Enter "ALL" to import all custom objects. To see what custom objects are supported by SDF, see https://system.netsuite.com/app/help/helpcenter.nl?fid=sdfxml.html'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '🗒️',
      name: 'object:list',
      description: 'Lists the custom objects deployed in an account',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--appid',
          description: 'Specifies your application ID. If specified, only custom objects with that application ID are listed. Otherwise, only custom objects with no application ID are listed',
          args: [
            Arg(
            name: 'app id'
          )
          ]
        ),
        Option(
          name: '--scriptid',
          description: 'Specifies the script ID. If you specify it, only objects containing that script ID will be listed. Otherwise, all objects are listed',
          args: [
            Arg(
            name: 'script id'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Specifies the type of custom objects to list. To specify multiple types, enter the types separated by spaces. Otherwise, all types are listed. To see what custom objects are supported by SDF, see https://system.netsuite.com/app/help/helpcenter.nl?fid=sdfxml.html',
          args: [
            Arg(
            name: 'types',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '♻️',
      name: 'object:update',
      description: 'Overwrites the custom objects in the project with the custom objects in an account',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--includeinstances',
          description: 'Includes instances. This is only available for custom records'
        ),
        Option(
          name: '--scriptid',
          description: 'Specifies the script ID of the objects you want to overwrite',
          args: [
            Arg(
            name: 'script id'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '🍺',
      name: 'project:adddependencies',
      description: 'Adds the missing dependencies to the manifest file'
    ),
    Subcommand(
      icon: '🆕',
      name: 'project:create',
      description: 'Creates a SuiteCloud project, either a SuiteApp or an account customization project (ACP)',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--overwrite',
          description: 'Overwrites the existing project'
        ),
        Option(
          name: '--projectid',
          description: 'Specifies the project ID. It is mandatory for SuiteApps',
          args: [
            Arg(
            name: 'project id'
          )
          ]
        ),
        Option(
          name: '--projectname',
          description: 'Specifies the project name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--projectversion',
          description: 'Specifies the project version. It is mandatory for SuiteApps',
          args: [
            Arg(
            name: 'project version'
          )
          ]
        ),
        Option(
          name: '--publisherid',
          description: 'Specifies the publisher ID. It is mandatory for SuiteApps',
          args: [
            Arg(
            name: 'publisher id'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Specifies the project type. Enter one of the following options: ACCOUNTCUSTOMIZATION or SUITEAPP',
          args: [
            Arg(
            suggestions: [

              FigSuggestion(name: 'ACCOUNTCUSTOMIZATION'),
              FigSuggestion(name: 'SUITEAPP')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '🚀',
      name: 'project:deploy',
      description: 'Deploys the folder containing the project. The project folder is zipped before deployment, only including the files and folders referenced in the deploy.xml file',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--dryrun',
          description: 'Runs a preview of your deploy process. Your project is not deployed'
        ),
        Option(
          name: '--log',
          description: 'Sets the deployment log file location, as either a directory or a file name. If it is a directory, a default log file is generated in the specified location. If a log file already exists in the specified location, deployment log details are appended to that existing file',
          args: [
            Arg(
            name: 'location',
            template: ['folders', 'filepaths']
          )
          ]
        ),
        Option(
          name: '--validate',
          description: 'Validates the project before deploying. If an error ocurrs during the deployment, the process is stopped'
        ),
        Option(
          name: '--accountspecificvalues',
          description: 'Indicates how to handle the presence of account-specific values in an account customization project. If there are account-specific values in the project, enter WARNING to continue with the deployment process, or ERROR to stop it. If the option is not specified, the default value is ERROR. It only applies to account customization projects',
          args: [
            Arg(
            suggestions: [

              FigSuggestion(name: 'ERROR'),
              FigSuggestion(name: 'WARNING')
            ],
            defaultValue: 'ERROR'
          )
          ]
        ),
        Option(
          name: ['-a', '--applyinstallprefs'],
          description: 'Applies the settings from the hiding.xml, locking.xml, and overwriting.xml files. It only applies to SuiteApps'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '📦',
      name: 'project:package',
      description: 'Generates a ZIP file from your project, respecting the structure specified in the deploy.xml file',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    ),
    Subcommand(
      icon: '✅',
      name: 'project:validate',
      description: 'Validates the folder containing the SuiteCloud project',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Runs the command in interactive mode'
        ),
        Option(
          name: '--log',
          description: 'Sets the validation log file location, as either a directory or a file name. If it is a directory, a default log file is generated in the specified location. If a log file already exists in the specified location, validation log details are appended to that existing file',
          args: [
            Arg(
            name: 'location',
            template: ['folders', 'filepaths']
          )
          ]
        ),
        Option(
          name: '--server',
          description: 'Indicates that the server will perform the validation'
        ),
        Option(
          name: '--accountspecificvalues',
          description: 'Indicates how to handle the presence of account-specific values in an account customization project. If there are account-specific values in the project, enter WARNING to continue with the deployment process, or ERROR to stop it. If the option is not specified, the default value is ERROR. It only applies to account customization projects',
          args: [
            Arg(
            suggestions: [

              FigSuggestion(name: 'ERROR'),
              FigSuggestion(name: 'WARNING')
            ],
            defaultValue: 'ERROR'
          )
          ]
        ),
        Option(
          name: ['-a', '--applyinstallprefs'],
          description: 'Applies the settings from the hiding.xml, locking.xml, and overwriting.xml files. It only applies to SuiteApps'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Displays help for the command'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--version',
      description: 'Outputs the version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Displays help for the command'
    )
  ]
);
