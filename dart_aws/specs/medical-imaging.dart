// Auto-generated from TypeScript source: medical-imaging.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `medical-imaging` CLI
final FigSpec medicalImagingSpec = FigSpec(
  name: 'medical-imaging',
  description: 'This is the AWS HealthImaging API Reference. AWS HealthImaging is a HIPAA eligible service that empowers healthcare providers, life science organizations, and their software partners to store, analyze, and share medical images in the cloud at petabyte scale. For an introduction to the service, see the  AWS HealthImaging Developer Guide .  We recommend using one of the AWS Software Development Kits (SDKs) for your programming language, as they take care of request authentication, serialization, and connection management. For more information, see Tools to build on AWS.  The following sections list AWS HealthImaging API actions categorized according to functionality. Links are provided to actions within this Reference, along with links back to corresponding sections in the AWS HealthImaging Developer Guide where you can view tested code examples.  Data store actions     CreateDatastore – See Creating a data store.    GetDatastore – See Getting data store properties.    ListDatastores – See Listing data stores.    DeleteDatastore – See Deleting a data store.    Import job actions     StartDICOMImportJob – See Starting an import job.    GetDICOMImportJob – See Getting import job properties.    ListDICOMImportJobs – See Listing import jobs.    Image set access actions     SearchImageSets – See Searching image sets.    GetImageSet – See Getting image set properties.    GetImageSetMetadata – See Getting image set metadata.    GetImageFrame – See Getting image set pixel data.    Image set modification actions     ListImageSetVersions – See Listing image set versions.    UpdateImageSetMetadata – See Updating image set metadata.    CopyImageSet – See Copying an image set.    DeleteImageSet – See Deleting an image set.    Tagging actions     TagResource – See Tagging a resource.    ListTagsForResource – See Listing tags for a resource.    UntagResource – See Untagging a resource',
  subcommands: [

    Subcommand(
      name: 'copy-image-set',
      description: 'Copy an image set',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-image-set-id',
          description: 'The source image set identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--copy-image-set-information',
          description: 'Copy image set information',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Setting this flag will force the CopyImageSet operation, even if Patient, Study, or Series level metadata are mismatched across the sourceImageSet and destinationImageSet'
        ),
        Option(
          name: '--no-force',
          description: 'Setting this flag will force the CopyImageSet operation, even if Patient, Study, or Series level metadata are mismatched across the sourceImageSet and destinationImageSet'
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
      name: 'create-datastore',
      description: 'Create a data store',
      options: [

        Option(
          name: '--datastore-name',
          description: 'The data store name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'A unique identifier for API idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags provided when creating a data store',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--kms-key-arn',
          description: 'The Amazon Resource Name (ARN) assigned to the Key Management Service (KMS) key for accessing encrypted data',
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
      name: 'delete-datastore',
      description: 'Delete a data store.  Before a data store can be deleted, you must first delete all image sets within it',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
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
      name: 'delete-image-set',
      description: 'Delete an image set',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-set-id',
          description: 'The image set identifier',
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
      name: 'get-dicom-import-job',
      description: 'Get the import job properties to learn more about the job or job progress.  The jobStatus refers to the execution of the import job. Therefore, an import job can return a jobStatus as COMPLETED even if validation issues are discovered during the import process. If a jobStatus returns as COMPLETED, we still recommend you review the output manifests written to S3, as they provide details on the success or failure of individual P10 object imports',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The import job identifier',
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
      name: 'get-datastore',
      description: 'Get data store properties',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
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
      name: 'get-image-frame',
      description: 'Get an image frame (pixel data) for an image set',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-set-id',
          description: 'The image set identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-frame-information',
          description: 'Information about the image frame (pixel data) identifier',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: 'outfile',
          description: 'Filename where the content will be saved',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-image-set',
      description: 'Get image set properties',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-set-id',
          description: 'The image set identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The image set version identifier',
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
      name: 'get-image-set-metadata',
      description: 'Get metadata attributes for an image set',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-set-id',
          description: 'The image set identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-id',
          description: 'The image set version identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: 'outfile',
          description: 'Filename where the content will be saved',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-dicom-import-jobs',
      description: 'List import jobs created for a specific data store',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-status',
          description: 'The filters for listing import jobs based on status',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token used to request the list of import jobs on the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The max results count. The upper bound is determined by load testing',
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
      name: 'list-datastores',
      description: 'List data stores',
      options: [

        Option(
          name: '--datastore-status',
          description: 'The data store status',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token used to request the list of data stores on the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Valid Range: Minimum value of 1. Maximum value of 50',
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
      name: 'list-image-set-versions',
      description: 'List image set versions',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-set-id',
          description: 'The image set identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token used to request the list of image set versions on the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The max results count',
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
      name: 'list-tags-for-resource',
      description: 'Lists all tags associated with a medical imaging resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the medical imaging resource to list tags for',
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
      name: 'search-image-sets',
      description: 'Search image sets based on defined input attributes.   SearchImageSets accepts a single search query parameter and returns a paginated response of all image sets that have the matching criteria. All date range queries must be input as (lowerBound, upperBound). By default, SearchImageSets uses the updatedAt field for sorting in descending order from newest to oldest',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The identifier of the data store where the image sets reside',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--search-criteria',
          description: 'The search criteria that filters by applying a maximum of 1 item to SearchByAttribute',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results that can be returned in a search',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token used for pagination of results returned in the response. Use the token returned from the previous request to continue results where the previous request ended',
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
      name: 'start-dicom-import-job',
      description: 'Start importing bulk data into an ACTIVE data store. The import job imports DICOM P10 files found in the S3 prefix specified by the inputS3Uri parameter. The import job stores processing results in the file specified by the outputS3Uri parameter',
      options: [

        Option(
          name: '--job-name',
          description: 'The import job name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--data-access-role-arn',
          description: 'The Amazon Resource Name (ARN) of the IAM role that grants permission to access medical imaging resources',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'A unique identifier for API idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-s3-uri',
          description: 'The input prefix path for the S3 bucket that contains the DICOM files to be imported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--output-s3-uri',
          description: 'The output prefix of the S3 bucket to upload the results of the DICOM import job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-owner-account-id',
          description: 'The account ID of the source S3 bucket owner',
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
      name: 'tag-resource',
      description: 'Adds a user-specifed key and value tag to a medical imaging resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the medical imaging resource that tags are being added to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The user-specified key and value tag pairs added to a medical imaging resource',
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
      name: 'untag-resource',
      description: 'Removes tags from a medical imaging resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the medical imaging resource that tags are being removed from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The keys for the tags to be removed from the medical imaging resource',
          args: [
            Arg(
            name: 'list'
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
      name: 'update-image-set-metadata',
      description: 'Update image set metadata attributes',
      options: [

        Option(
          name: '--datastore-id',
          description: 'The data store identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--image-set-id',
          description: 'The image set identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--latest-version-id',
          description: 'The latest image set version identifier',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Setting this flag will force the UpdateImageSetMetadata operation for the following attributes:    Tag.StudyInstanceUID, Tag.SeriesInstanceUID, Tag.SOPInstanceUID, and Tag.StudyID    Adding, removing, or updating private tags for an individual SOP Instance'
        ),
        Option(
          name: '--no-force',
          description: 'Setting this flag will force the UpdateImageSetMetadata operation for the following attributes:    Tag.StudyInstanceUID, Tag.SeriesInstanceUID, Tag.SOPInstanceUID, and Tag.StudyID    Adding, removing, or updating private tags for an individual SOP Instance'
        ),
        Option(
          name: '--update-image-set-metadata-updates',
          description: 'Update image set metadata updates',
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
    )
  ]
);
