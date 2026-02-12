// Auto-generated from TypeScript source: workdocs.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `workdocs` CLI
final FigSpec workdocsSpec = FigSpec(
  name: 'workdocs',
  description: 'The Amazon WorkDocs API is designed for the following use cases:   File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.   Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.   eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.   All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the Amazon Web Services SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.  The pricing for Amazon WorkDocs APIs varies depending on the API call type for these actions:    READ (Get*)     WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)     LIST (Describe*)     DELETE*, CANCEL    For information about Amazon WorkDocs API pricing, see Amazon WorkDocs Pricing',
  subcommands: [
    Subcommand(
      name: 'abort-document-version-upload',
      description: 'Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'activate-user',
      description: 'Activates the specified user. Only active users can access Amazon WorkDocs',
      options: [
        Option(
          name: '--user-id',
          description: 'The ID of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'add-resource-permissions',
      description: 'Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principals',
          description: 'The users, groups, or organization being granted permission',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--notification-options',
          description: 'The notification options',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-comment',
      description: 'Adds a new comment to the specified document version',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the document version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--parent-id',
          description: 'The ID of the parent comment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--thread-id',
          description: 'The ID of the root comment in the thread',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--text',
          description: 'The text of the comment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--visibility',
          description: 'The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--notify-collaborators',
          description: 'Set this parameter to TRUE to send an email out to the document collaborators after the comment is created'
        ),
        Option(
          name: '--no-notify-collaborators',
          description: 'Set this parameter to TRUE to send an email out to the document collaborators after the comment is created'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-custom-metadata',
      description: 'Adds one or more custom properties to the specified resource (a folder, document, or version)',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the version, if the custom metadata is being added to a document version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--custom-metadata',
          description: 'Custom metadata in the form of name-value pairs',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-folder',
      description: 'Creates a folder with the specified name and parent folder',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the new folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--parent-folder-id',
          description: 'The ID of the parent folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-labels',
      description: 'Adds the specified list of labels to the given resource (a document or folder)',
      options: [
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--labels',
          description: 'List of labels to add to the resource',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-notification-subscription',
      description: 'Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Setting up notifications for an IAM user or role in the Amazon WorkDocs Developer Guide',
      options: [
        Option(
          name: '--organization-id',
          description: 'The ID of the organization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--protocol',
          description: 'The protocol to use. The supported value is https, which delivers JSON-encoded messages using HTTPS POST',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subscription-type',
          description: 'The notification type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--notification-endpoint',
          description: 'The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with https',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-user',
      description: 'Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs',
      options: [
        Option(
          name: '--organization-id',
          description: 'The ID of the organization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--username',
          description: 'The login name of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--email-address',
          description: 'The email address of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--given-name',
          description: 'The given name of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--surname',
          description: 'The surname of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--password',
          description: 'The password of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--time-zone-id',
          description: 'The time zone ID of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-rule',
          description: 'The amount of storage for the user',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deactivate-user',
      description: 'Deactivates the specified user, which revokes the user\'s access to Amazon WorkDocs',
      options: [
        Option(
          name: '--user-id',
          description: 'The ID of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-comment',
      description: 'Deletes the specified comment from the document version',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the document version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--comment-id',
          description: 'The ID of the comment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-custom-metadata',
      description: 'Deletes custom metadata from the specified resource',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The ID of the resource, either a document or folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the version, if the custom metadata is being deleted from a document version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--keys',
          description: 'List of properties to remove',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--delete-all',
          description: 'Flag to indicate removal of all custom metadata properties from the specified resource'
        ),
        Option(
          name: '--no-delete-all',
          description: 'Flag to indicate removal of all custom metadata properties from the specified resource'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-document',
      description: 'Permanently deletes the specified document and its associated metadata',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-document-version',
      description: 'Deletes a specific version of a document',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document associated with the version being deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the version being deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--delete-prior-versions',
          description: 'Deletes all versions of a document prior to the current version'
        ),
        Option(
          name: '--no-delete-prior-versions',
          description: 'Deletes all versions of a document prior to the current version'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-folder',
      description: 'Permanently deletes the specified folder and its contents',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--folder-id',
          description: 'The ID of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-folder-contents',
      description: 'Deletes the contents of the specified folder',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--folder-id',
          description: 'The ID of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-labels',
      description: 'Deletes the specified list of labels from a resource',
      options: [
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--labels',
          description: 'List of labels to delete from the resource',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--delete-all',
          description: 'Flag to request removal of all labels from the specified resource'
        ),
        Option(
          name: '--no-delete-all',
          description: 'Flag to request removal of all labels from the specified resource'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-notification-subscription',
      description: 'Deletes the specified subscription from the specified organization',
      options: [
        Option(
          name: '--subscription-id',
          description: 'The ID of the subscription',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--organization-id',
          description: 'The ID of the organization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-user',
      description: 'Deletes the specified user from a Simple AD or Microsoft AD directory.  Deleting a user immediately and permanently deletes all content in that user\'s folder structure. Site retention policies do NOT apply to this type of deletion',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using Amazon Web Services credentials',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-id',
          description: 'The ID of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-activities',
      description: 'Describes the user activities in a specified time period',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--end-time',
          description: 'The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--organization-id',
          description: 'The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--activity-types',
          description: 'Specifies which activity types to include in the response. If this field is left empty, all activity types are returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The document or folder ID for which to describe activity types',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-id',
          description: 'The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include-indirect-activities',
          description: 'Includes indirect activities. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity)'
        ),
        Option(
          name: '--no-include-indirect-activities',
          description: 'Includes indirect activities. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity)'
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-comments',
      description: 'List all the comments for the specified document version',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The ID of the document version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. This marker was received from a previous call',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-document-versions',
      description: 'Retrieves the document versions for the specified document. By default, only active versions are returned',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. (You received this marker from a previous call.)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of versions to return with this call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--include',
          description: 'A comma-separated list of values. Specify "INITIALIZED" to include incomplete versions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'Specify "SOURCE" to include initialized versions and a URL for the source document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-folder-contents',
      description: 'Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--folder-id',
          description: 'The ID of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'The sorting criteria',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--order',
          description: 'The order for the contents of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return with this call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. This marker was received from a previous call',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The type of items',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include',
          description: 'The contents to include. Specify "INITIALIZED" to include initialized documents',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-groups',
      description: 'Describes the groups specified by the query. Groups are defined by the underlying Active Directory',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--search-query',
          description: 'A query to describe groups by group name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--organization-id',
          description: 'The ID of the organization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. (You received this marker from a previous call.)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return with this call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-notification-subscriptions',
      description: 'Lists the specified notification subscriptions',
      options: [
        Option(
          name: '--organization-id',
          description: 'The ID of the organization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. (You received this marker from a previous call.)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return with this call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-resource-permissions',
      description: 'Describes the permissions of a specified resource',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The ID of the principal to filter permissions by',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return with this call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. (You received this marker from a previous call)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-root-folders',
      description: 'Describes the current user\'s special folders; the RootFolder and the RecycleBin. RootFolder is the root of user\'s files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. (You received this marker from a previous call.)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-users',
      description: 'Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--organization-id',
          description: 'The ID of the organization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-ids',
          description: 'The IDs of the users',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include',
          description: 'The state of the users. Specify "ALL" to include inactive users',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--order',
          description: 'The order for the results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'The sorting criteria',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. (You received this marker from a previous call.)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of items to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'A comma-separated list of values. Specify "STORAGE_METADATA" to include the user storage quota and utilization information',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-query',
          description: 'A query to filter users by user name. Remember the following about the Userids and Query parameters:   If you don\'t use either parameter, the API returns a paginated list of all users on the site.   If you use both parameters, the API ignores the Query parameter.   The Userid parameter only returns user names that match a corresponding user ID.   The Query parameter runs a "prefix" search for users by the GivenName, SurName, or UserName fields included in a CreateUser API call. For example, querying on Ma returns Márcia Oliveira, María García, and Mateo Jackson. If you use multiple characters, the API only returns data that matches all characters. For example, querying on Ma J only returns Mateo Jackson',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-current-user',
      description: 'Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-document',
      description: 'Retrieves details of a document',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include-custom-metadata',
          description: 'Set this to TRUE to include custom metadata in the response'
        ),
        Option(
          name: '--no-include-custom-metadata',
          description: 'Set this to TRUE to include custom metadata in the response'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-document-path',
      description: 'Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of levels in the hierarchy to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'A comma-separated list of values. Specify NAME to include the names of the parent folders',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'This value is not supported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-document-version',
      description: 'Retrieves version metadata for the specified document',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The version ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'A comma-separated list of values. Specify "SOURCE" to include a URL for the source document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include-custom-metadata',
          description: 'Set this to TRUE to include custom metadata in the response'
        ),
        Option(
          name: '--no-include-custom-metadata',
          description: 'Set this to TRUE to include custom metadata in the response'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-folder',
      description: 'Retrieves the metadata of the specified folder',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--folder-id',
          description: 'The ID of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include-custom-metadata',
          description: 'Set to TRUE to include custom metadata in the response'
        ),
        Option(
          name: '--no-include-custom-metadata',
          description: 'Set to TRUE to include custom metadata in the response'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-folder-path',
      description: 'Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--folder-id',
          description: 'The ID of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of levels in the hierarchy to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'A comma-separated list of values. Specify "NAME" to include the names of the parent folders',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'This value is not supported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-resources',
      description: 'Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME',
      options: [
        Option(
          name: '--authentication-token',
          description: 'The Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-id',
          description: 'The user ID for the resource collection. This is a required field for accessing the API operation using IAM credentials',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--collection-type',
          description: 'The collection type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of resources to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results. This marker was received from a previous call',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'initiate-document-version-upload',
      description: 'Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--content-created-timestamp',
          description: 'The timestamp when the content of the document was originally created',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--content-modified-timestamp',
          description: 'The timestamp when the content of the document was modified',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--content-type',
          description: 'The content type of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-size-in-bytes',
          description: 'The size of the document, in bytes',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--parent-folder-id',
          description: 'The ID of the parent folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove-all-resource-permissions',
      description: 'Removes all the permissions from the specified resource',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove-resource-permission',
      description: 'Removes the permission for the specified principal from the specified resource',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-type',
          description: 'The principal type of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore-document-versions',
      description: 'Recovers a deleted version of an Amazon WorkDocs document',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'search-resources',
      description: 'Searches metadata and the content of folders, documents, document versions, and comments',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--query-text',
          description: 'The String to search for. Searches across different text fields based on request parameters. Use double quotes around the query string for exact phrase matches',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--query-scopes',
          description: 'Filter based on the text field type. A Folder has only a name and no content. A Comment has only content and no name. A Document or Document Version has a name and content',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--organization-id',
          description: 'Filters based on the resource owner OrgId. This is a mandatory parameter when using Admin SigV4 credentials',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--additional-response-fields',
          description: 'A list of attributes to include in the response. Used to request fields that are not normally returned in a standard response',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters results based on entity metadata',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--order-by',
          description: 'Order by results in one or more categories',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'Max results count per page',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--marker',
          description: 'The marker for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-document',
      description: 'Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--parent-folder-id',
          description: 'The ID of the parent folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-state',
          description: 'The resource state of the document. Only ACTIVE and RECYCLED are supported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-document-version',
      description: 'Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--document-id',
          description: 'The ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The version ID of the document',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-status',
          description: 'The status of the version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-folder',
      description: 'Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--folder-id',
          description: 'The ID of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--parent-folder-id',
          description: 'The ID of the parent folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-state',
          description: 'The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-user',
      description: 'Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site',
      options: [
        Option(
          name: '--authentication-token',
          description: 'Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-id',
          description: 'The ID of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--given-name',
          description: 'The given name of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--surname',
          description: 'The surname of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The type of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-rule',
          description: 'The amount of storage for the user',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--time-zone-id',
          description: 'The time zone ID of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--locale',
          description: 'The locale of the user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--grant-poweruser-privileges',
          description: 'Boolean value to determine whether the user is granted Power user privileges',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    )
  ]
);
