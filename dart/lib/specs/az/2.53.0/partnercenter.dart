// Auto-generated from TypeScript source: partnercenter.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `partnercenter` CLI
final FigSpec partnercenterSpec = FigSpec(
  name: 'partnercenter',
  description: 'Partner Center management',
  subcommands: [

    Subcommand(
      name: 'marketplace',
      description: 'Commands to manage the Partner Center Marketplace',
      subcommands: [

        Subcommand(
          name: 'offer',
          description: 'Manage Marketplace offers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a marketplace offer',
              options: [

                Option(
                  name: ['--alias', '-a'],
                  description: 'This name won\'t be used in the marketplace listing and is solely for reference within Partner Center',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: ['--offer-id', '--id'],
                  description: 'Use only lowercase, alphanumeric characters, dashes or underscores. ID cannot be modified',
                  args: [
                    Arg(
                    name: 'offer-i'
                  )
                  ]
                ),
                Option(
                  name: ['--type', '-t'],
                  description: 'The type of offer to create',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'AzureApplication'),
                      FigSuggestion(name: 'AzureConsultingService'),
                      FigSuggestion(name: 'AzureContainer'),
                      FigSuggestion(name: 'AzureDynamics365BusinessCentral'),
                      FigSuggestion(name: 'AzureDynamics365ForCustomerEngagement'),
                      FigSuggestion(name: 'AzureDynamics365ForOperations'),
                      FigSuggestion(name: 'AzureIoTEdgeModule'),
                      FigSuggestion(name: 'AzureManagedService'),
                      FigSuggestion(name: 'AzurePowerBIApp'),
                      FigSuggestion(name: 'AzurePowerBIVisual'),
                      FigSuggestion(name: 'AzureThirdPartyVirtualMachine'),
                      FigSuggestion(name: 'SoftwareAsAService')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a marketplace offer',
              options: [

                Option(
                  name: ['--offer-id', '--id'],
                  description: 'The offer ID',
                  args: [
                    Arg(
                    name: 'offer-i'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List marketplace offers'
            ),
            Subcommand(
              name: 'publish',
              description: 'Publishes all draft changes made to a marketplace offer',
              options: [

                Option(
                  name: ['--offer-id', '--id'],
                  description: 'The offer ID',
                  args: [
                    Arg(
                    name: 'offer-i'
                  )
                  ]
                ),
                Option(
                  name: '--target',
                  description: 'The target environment type to publish all draft resources',
                  args: [
                    Arg(
                    name: 'target',
                    suggestions: [

                      FigSuggestion(name: 'draft'),
                      FigSuggestion(name: 'live'),
                      FigSuggestion(name: 'preview')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a marketplace offer',
              options: [

                Option(
                  name: ['--offer-id', '--id'],
                  description: 'The offer ID',
                  args: [
                    Arg(
                    name: 'offer-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'listing',
              description: 'Manage a Marketplace Offer\'s listing',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Get the listing of a marketplace offer',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update the listing of a marketplace offer',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'The description of the listing',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
                      )
                      ]
                    ),
                    Option(
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--short-description',
                      description: 'The short description of the listing',
                      args: [
                        Arg(
                        name: 'short-descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--summary',
                      description: 'The summary that appears in search results',
                      args: [
                        Arg(
                        name: 'summar'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'contact',
                  description: 'Manage a Marketplace Offer listing\'s contacts',
                  subcommands: [

                    Subcommand(
                      name: 'add',
                      description: 'Add a contact to a marketplace offer listing',
                      options: [

                        Option(
                          name: '--offer-id',
                          description: 'The offerid',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--type',
                          description: 'The contact type',
                          args: [
                            Arg(
                            name: 'typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--add',
                          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                          args: [
                            Arg(
                            name: 'ad'
                          )
                          ]
                        ),
                        Option(
                          name: '--email',
                          description: 'The email address of the contact',
                          args: [
                            Arg(
                            name: 'emai'
                          )
                          ]
                        ),
                        Option(
                          name: '--force-string',
                          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                        ),
                        Option(
                          name: '--name',
                          description: 'The name of the contact',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--phone',
                          description: 'The phone number of the contact',
                          args: [
                            Arg(
                            name: 'phon'
                          )
                          ]
                        ),
                        Option(
                          name: '--remove',
                          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                          args: [
                            Arg(
                            name: 'remov'
                          )
                          ]
                        ),
                        Option(
                          name: '--set',
                          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                          args: [
                            Arg(
                            name: 'se'
                          )
                          ]
                        ),
                        Option(
                          name: '--uri',
                          description: 'The uri associated with the contact',
                          args: [
                            Arg(
                            name: 'ur'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'delete',
                      description: 'Delete a contact to a marketplace offer listing',
                      options: [

                        Option(
                          name: '--offer-id',
                          description: 'The offerid',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--type',
                          description: 'The contact type',
                          args: [
                            Arg(
                            name: 'typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--email',
                          description: 'The email address of the contact',
                          args: [
                            Arg(
                            name: 'emai'
                          )
                          ]
                        ),
                        Option(
                          name: '--name',
                          description: 'The name of the contact',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--phone',
                          description: 'The phone number of the contact',
                          args: [
                            Arg(
                            name: 'phon'
                          )
                          ]
                        ),
                        Option(
                          name: '--uri',
                          description: 'The uri associated with the contact',
                          args: [
                            Arg(
                            name: 'ur'
                          )
                          ]
                        ),
                        Option(
                          name: ['--yes', '-y'],
                          description: 'Do not prompt for confirmation'
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'list',
                      description: 'List the contacts for a marketplace offer listing',
                      options: [

                        Option(
                          name: '--offer-id',
                          description: 'The offerid',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'media',
                  description: 'Manage a Marketplace Offer listing\'s media including images, videos, and thumbnails',
                  subcommands: [

                    Subcommand(
                      name: 'add',
                      description: 'Add media for a marketplace offer listing',
                      options: [

                        Option(
                          name: ['--file', '-f'],
                          description: 'The path to the media file',
                          args: [
                            Arg(
                            name: 'fil'
                          )
                          ]
                        ),
                        Option(
                          name: ['--offer-id', '--id'],
                          description: 'The Offer ID',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: ['--type', '-t'],
                          description: 'The media type',
                          args: [
                            Arg(
                            name: 'type',
                            suggestions: [

                              FigSuggestion(name: 'AzureLogoLarge'),
                              FigSuggestion(name: 'AzureLogoMedium'),
                              FigSuggestion(name: 'AzureLogoSmall'),
                              FigSuggestion(name: 'AzureLogoWide'),
                              FigSuggestion(name: 'Image'),
                              FigSuggestion(name: 'Video')
                            ]
                          )
                          ]
                        ),
                        Option(
                          name: '--streaming-uri',
                          description: 'The streaming URI',
                          args: [
                            Arg(
                            name: 'streaming-ur'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'delete',
                      description: 'Delete media for a marketplace offer listing',
                      options: [

                        Option(
                          name: ['--offer-id', '--id'],
                          description: 'The Offer ID',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: ['--type', '-t'],
                          description: 'The media type',
                          args: [
                            Arg(
                            name: 'type',
                            suggestions: [

                              FigSuggestion(name: 'AzureLogoLarge'),
                              FigSuggestion(name: 'AzureLogoMedium'),
                              FigSuggestion(name: 'AzureLogoSmall'),
                              FigSuggestion(name: 'AzureLogoWide'),
                              FigSuggestion(name: 'Image'),
                              FigSuggestion(name: 'Video')
                            ]
                          )
                          ]
                        ),
                        Option(
                          name: ['--yes', '-y'],
                          description: 'Do not prompt for confirmation'
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'list',
                      description: 'List the media for a marketplace offer listing',
                      options: [

                        Option(
                          name: ['--offer-id', '--id'],
                          description: 'The Offer ID',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: ['--type', '-t'],
                          description: 'The media type',
                          args: [
                            Arg(
                            name: 'type',
                            suggestions: [

                              FigSuggestion(name: 'AzureLogoLarge'),
                              FigSuggestion(name: 'AzureLogoMedium'),
                              FigSuggestion(name: 'AzureLogoSmall'),
                              FigSuggestion(name: 'AzureLogoWide'),
                              FigSuggestion(name: 'Image'),
                              FigSuggestion(name: 'Video')
                            ]
                          )
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'uri',
                  description: 'Manage a Marketplace Offer listing\'s URIs',
                  subcommands: [

                    Subcommand(
                      name: 'add',
                      description: 'Add a URI for a marketplace offer listing',
                      options: [

                        Option(
                          name: '--display-text',
                          description: 'The display text of the uri',
                          args: [
                            Arg(
                            name: 'display-tex'
                          )
                          ]
                        ),
                        Option(
                          name: '--offer-id',
                          description: 'The offer id',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--subtype',
                          description: 'The subtype of the uri',
                          args: [
                            Arg(
                            name: 'subtyp'
                          )
                          ]
                        ),
                        Option(
                          name: '--type',
                          description: 'The type of the uri',
                          args: [
                            Arg(
                            name: 'typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--uri',
                          description: 'The value of the uri',
                          args: [
                            Arg(
                            name: 'ur'
                          )
                          ]
                        ),
                        Option(
                          name: '--add',
                          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                          args: [
                            Arg(
                            name: 'ad'
                          )
                          ]
                        ),
                        Option(
                          name: '--force-string',
                          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                        ),
                        Option(
                          name: '--remove',
                          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                          args: [
                            Arg(
                            name: 'remov'
                          )
                          ]
                        ),
                        Option(
                          name: '--set',
                          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                          args: [
                            Arg(
                            name: 'se'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'delete',
                      description: 'Delete a URI for a marketplace offer listing',
                      options: [

                        Option(
                          name: '--offer-id',
                          description: 'The offer id',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--display-text',
                          description: 'The display text of the uri',
                          args: [
                            Arg(
                            name: 'display-tex'
                          )
                          ]
                        ),
                        Option(
                          name: '--subtype',
                          description: 'The subtype of the uri',
                          args: [
                            Arg(
                            name: 'subtyp'
                          )
                          ]
                        ),
                        Option(
                          name: '--type',
                          description: 'The type of the uri',
                          args: [
                            Arg(
                            name: 'typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--uri',
                          description: 'The value of the uri',
                          args: [
                            Arg(
                            name: 'ur'
                          )
                          ]
                        ),
                        Option(
                          name: ['--yes', '-y'],
                          description: 'Do not prompt for confirmation'
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'list',
                      description: 'List the uri for a marketplace offer listing',
                      options: [

                        Option(
                          name: '--offer-id',
                          description: 'The offer id',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'package',
              description: 'Manage the creation of offer packages, including CNAB bundles for AKS (Azure Container offerings that you sell through Microsoft)',
              subcommands: [

                Subcommand(
                  name: 'build',
                  description: 'Builds the package for an offer, preparing it for upload or publishing to the offer\'s technical configuration',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--manifest-file',
                      description: 'The path to the package manifest YAML file that describes the package, the CNAB bundle, and dependent artifacts',
                      args: [
                        Arg(
                        name: 'manifest-fil'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    )
                  ]
                ),
                Subcommand(
                  name: 'verify',
                  description: 'Verifies the package contents for an offer prior to building it',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--manifest-file',
                      description: 'The path to the package manifest YAML file that describes the package, the CNAB bundle, and dependent artifacts',
                      args: [
                        Arg(
                        name: 'manifest-fil'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'plan',
              description: 'Manage a Marketplace offer plans',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a plan for a marketplace offer',
                  options: [

                    Option(
                      name: ['--plan-id', '--id'],
                      description: 'The Plan ID',
                      args: [
                        Arg(
                        name: 'plan-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The friendly name of the Plan',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--offer-id',
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--subtype', '-s'],
                      description: 'SubType of Azure Application plan. Allowed Values: solution-template, managed-application. Default: None',
                      args: [
                        Arg(
                        name: 'subtyp'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a plan for a marketplace offer',
                  options: [

                    Option(
                      name: ['--plan-id', '--id'],
                      description: 'The Plan ID',
                      args: [
                        Arg(
                        name: 'plan-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--offer-id',
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List the plans of a marketplace offer',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the plan of a marketplace offer',
                  options: [

                    Option(
                      name: ['--plan-id', '--id'],
                      description: 'The Plan ID',
                      args: [
                        Arg(
                        name: 'plan-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--offer-id',
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'listing',
                  description: 'Manage a Marketplace offer plan\'s listing',
                  subcommands: [

                    Subcommand(
                      name: 'show',
                      description: 'Get the plan listing of a marketplace offer',
                      options: [

                        Option(
                          name: ['--plan-id', '--id'],
                          description: 'The Plan ID',
                          args: [
                            Arg(
                            name: 'plan-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--offer-id',
                          description: 'The Offer ID',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'update',
                      description: 'Update the plan listing of a marketplace offer',
                      options: [

                        Option(
                          name: ['--plan-id', '--id'],
                          description: 'The Plan ID',
                          args: [
                            Arg(
                            name: 'plan-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--offer-id',
                          description: 'The Offer ID',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--add',
                          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                          args: [
                            Arg(
                            name: 'ad'
                          )
                          ]
                        ),
                        Option(
                          name: ['--description', '-d'],
                          description: 'The description of the plan listing',
                          args: [
                            Arg(
                            name: 'descriptio'
                          )
                          ]
                        ),
                        Option(
                          name: '--force-string',
                          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                        ),
                        Option(
                          name: ['--name', '-n'],
                          description: 'The name of the plan listing',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--remove',
                          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                          args: [
                            Arg(
                            name: 'remov'
                          )
                          ]
                        ),
                        Option(
                          name: '--set',
                          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                          args: [
                            Arg(
                            name: 'se'
                          )
                          ]
                        ),
                        Option(
                          name: ['--summary', '-s'],
                          description: 'The summary of the plan listing',
                          args: [
                            Arg(
                            name: 'summar'
                          )
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'technical-configuration',
                  description: 'Manage a Marketplace offer plan\'s technical configuration',
                  subcommands: [

                    Subcommand(
                      name: 'show',
                      description: 'Show a plan\'s technical configuration',
                      options: [

                        Option(
                          name: '--offer-id',
                          description: 'The Offer id',
                          args: [
                            Arg(
                            name: 'offer-i'
                          )
                          ]
                        ),
                        Option(
                          name: '--plan-id',
                          description: 'The Plan id',
                          args: [
                            Arg(
                            name: 'plan-i'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'package',
                      description: 'Manage packages for a plan\'s technical configuration',
                      subcommands: [

                        Subcommand(
                          name: 'add',
                          description: 'Adds a package to the technical configuration of a plan',
                          options: [

                            Option(
                              name: '--offer-id',
                              description: 'The Offer id',
                              args: [
                                Arg(
                                name: 'offer-i'
                              )
                              ]
                            ),
                            Option(
                              name: '--plan-id',
                              description: 'The Plan id',
                              args: [
                                Arg(
                                name: 'plan-i'
                              )
                              ]
                            ),
                            Option(
                              name: '--cluster-extension-type',
                              description: 'The Cluster Extension Type',
                              args: [
                                Arg(
                                name: 'cluster-extension-typ'
                              )
                              ]
                            ),
                            Option(
                              name: '--digest',
                              description: 'The digest of the bundle with a format of sha256:',
                              args: [
                                Arg(
                                name: 'diges'
                              )
                              ]
                            ),
                            Option(
                              name: '--no-wait',
                              description: 'Do not wait for the long-running operation to finish'
                            ),
                            Option(
                              name: '--registry',
                              description: 'The name of the Azure Container Registry',
                              args: [
                                Arg(
                                name: 'registr'
                              )
                              ]
                            ),
                            Option(
                              name: '--repository',
                              description: 'The name of the image repository in the Azure Container Registry',
                              args: [
                                Arg(
                                name: 'repositor'
                              )
                              ]
                            ),
                            Option(
                              name: ['--resource-group', '-g'],
                              description: 'The Resource Group name for the Azure Container Registry',
                              args: [
                                Arg(
                                name: 'resource-grou'
                              )
                              ]
                            ),
                            Option(
                              name: ['--subscription-id', '-s'],
                              description: 'The Subscription ID',
                              args: [
                                Arg(
                                name: 'subscription-i'
                              )
                              ]
                            ),
                            Option(
                              name: '--tag',
                              description: 'The name of the image repository',
                              args: [
                                Arg(
                                name: 'ta'
                              )
                              ]
                            ),
                            Option(
                              name: ['--tenant-id', '-t'],
                              description: 'The AAD tenant ID',
                              args: [
                                Arg(
                                name: 'tenant-i'
                              )
                              ]
                            )
                          ]
                        ),
                        Subcommand(
                          name: 'delete',
                          description: 'Deletes a package to the technical configuration of a plan',
                          options: [

                            Option(
                              name: '--offer-id',
                              description: 'The Offer id',
                              args: [
                                Arg(
                                name: 'offer-i'
                              )
                              ]
                            ),
                            Option(
                              name: '--plan-id',
                              description: 'The Plan id',
                              args: [
                                Arg(
                                name: 'plan-i'
                              )
                              ]
                            ),
                            Option(
                              name: '--no-wait',
                              description: 'Do not wait for the long-running operation to finish'
                            ),
                            Option(
                              name: '--repository',
                              description: 'The name of the image repository in the Azure Container Registry',
                              args: [
                                Arg(
                                name: 'repositor'
                              )
                              ]
                            ),
                            Option(
                              name: '--tag',
                              description: 'The name of the image repository',
                              args: [
                                Arg(
                                name: 'ta'
                              )
                              ]
                            )
                          ]
                        )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'setup',
              description: 'Manage a Marketplace Offer\'s setup',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Show the offer setup',
                  options: [

                    Option(
                      name: ['--offer-id', '--id'],
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a marketplace offer',
                  options: [

                    Option(
                      name: ['--offer-id', '--id'],
                      description: 'The Offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
                      )
                      ]
                    ),
                    Option(
                      name: '--reseller',
                      description: 'Indicates to enable the reseller channel for the offer',
                      args: [
                        Arg(
                        name: 'reseller',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--sell-through-microsoft',
                      description: 'Whether to sell through microsoft or list the offer through the marketplace and process transactions independently',
                      args: [
                        Arg(
                        name: 'sell-through-microsoft',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--test-drive',
                      description: 'Whether test drive is enabled for the offer. The test drive option in the Microsoft commercial marketplace lets you configure a hands-on, self-guided tour of your product\'s key features',
                      args: [
                        Arg(
                        name: 'test-drive',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--trial-uri',
                      description: 'The trial uri',
                      args: [
                        Arg(
                        name: 'trial-ur'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'submission',
              description: 'Manage a Marketplace Offer\'s submissions',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List the submissions of a marketplace offer',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'publish',
                  description: 'Publish the submissions of a marketplace offer',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--submission-id',
                      description: 'The offer submission ID',
                      args: [
                        Arg(
                        name: 'submission-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--target',
                      description: 'The target environment type to publish changes for the submission to',
                      args: [
                        Arg(
                        name: 'target',
                        suggestions: [

                          FigSuggestion(name: 'draft'),
                          FigSuggestion(name: 'live'),
                          FigSuggestion(name: 'preview')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the submission of a marketplace offer',
                  options: [

                    Option(
                      name: '--offer-id',
                      description: 'The offer ID',
                      args: [
                        Arg(
                        name: 'offer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--submission-id',
                      description: 'The offer submission ID',
                      args: [
                        Arg(
                        name: 'submission-i'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    )
  ]
);
