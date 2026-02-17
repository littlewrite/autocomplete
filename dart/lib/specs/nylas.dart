// Auto-generated from TypeScript source: nylas.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nylas` CLI
final FigSpec nylasSpec = FigSpec(
  name: 'nylas',
  description: 'A command line interface for Nylas\'s API',
  subcommands: [

    Subcommand(
      name: 'api',
      description: 'Access the Nylas API endpoints',
      subcommands: [

        Subcommand(
          name: 'a',
          description: 'A API commands',
          subcommands: [

            Subcommand(
              name: 'accounts',
              description: 'Accounts commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete an Account',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Accounts',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    ),
                    Option(
                      name: '--limit',
                      description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                      args: [
                        Arg(
                        name: 'limit',
                        defaultValue: '0'
                      )
                      ]
                    ),
                    Option(
                      name: '--metadata_key',
                      description: 'Pass in your keys to search for metadata. `?metadata_key=goodmorning`.  You can also combine this with `metadata_value`, `?metadata_key=goodmorning&metadata_value=goodbye`. See [Metadata](/docs/developer-tools/api/metadata/)',
                      args: [
                        Arg(
                        name: 'metadata_key'
                      )
                      ]
                    ),
                    Option(
                      name: '--metadata_pair',
                      description: 'Pass in your metadata key and value pair to search for metadata. `?metadata_pair=goodmorning:goodnight`. See [Metadata](/docs/developer-tools/api/metadata/)',
                      args: [
                        Arg(
                        name: 'metadata_pair'
                      )
                      ]
                    ),
                    Option(
                      name: '--metadata_value',
                      description: 'Pass in your value to search for metadata. `?metadata_value=goodnight`. You can also combine this with `metadata_key`, `?metadata_key=goodmorning&metadata_value=goodbye`.  See [Metadata](/docs/developer-tools/api/metadata/)',
                      args: [
                        Arg(
                        name: 'metadata_value'
                      )
                      ]
                    ),
                    Option(
                      name: '--offset',
                      description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                      args: [
                        Arg(
                        name: 'offset',
                        defaultValue: '0'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'accounts:downgrade',
              description: 'Accounts:downgrade commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Cancel an Account',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'accounts:revoke-all',
              description: 'Accounts:revoke-all commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Revoke All Tokens',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'accounts:token-info',
              description: 'Accounts:token-info commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Return Token Information',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'accounts:upgrade',
              description: 'Accounts:upgrade commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Reactivate an Account',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
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
          name: 'accounts',
          description: 'Gets a list of authed accounts',
          options: [

            Option(
              name: ['--limit', '-l'],
              description: 'This is usage',
              args: [
                Arg(
                name: 'limit',
                defaultValue: '10'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'applications',
          description: 'Gets your application info'
        ),
        Subcommand(
          name: 'calendars',
          description: 'Calendars API commands',
          subcommands: [

            Subcommand(
              name: 'availability',
              description: 'Availability commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Availability for a Single Meeting',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'availability:consecutive',
              description: 'Availability:consecutive commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Availability for Multiple Meetings',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Calendar',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'free-busy',
              description: 'Free-busy commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Calendar Free or Busy',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Calendars',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--metadata_key',
                  description: 'Pass in your keys to search for metadata. `?metadata_key=goodmorning`.  You can also combine this with `metadata_value`, `?metadata_key=goodmorning&metadata_value=goodbye`. See [Metadata](/docs/developer-tools/api/metadata/)',
                  args: [
                    Arg(
                    name: 'metadata_key'
                  )
                  ]
                ),
                Option(
                  name: '--metadata_pair',
                  description: 'Pass in your metadata key and value pair to search for metadata. `?metadata_pair=goodmorning:goodnight`. See [Metadata](/docs/developer-tools/api/metadata/)',
                  args: [
                    Arg(
                    name: 'metadata_pair'
                  )
                  ]
                ),
                Option(
                  name: '--metadata_value',
                  description: 'Pass in your value to search for metadata. `?metadata_value=goodnight`. You can also combine this with `metadata_key`, `?metadata_key=goodmorning&metadata_value=goodbye`.  See [Metadata](/docs/developer-tools/api/metadata/)',
                  args: [
                    Arg(
                    name: 'metadata_value'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--view',
                  description: 'If using Search, only `view=expanded` is supported. See [Views](/docs/api/#overview--views) for more information',
                  args: [
                    Arg(
                    name: 'view'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Create a Calendar',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update A Calendar',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'connect',
          description: 'Connect API commands',
          subcommands: [

            Subcommand(
              name: 'detect-provider',
              description: 'Detect-provider commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Detect Provider',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
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
          name: 'contacts',
          description: 'Contacts API commands',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a Contact',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Contacts',
              options: [

                Option(
                  name: '--country',
                  description: 'Returns the contacts matching the contact\'s exact physical addresses',
                  args: [
                    Arg(
                    name: 'country'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--email',
                  description: 'Returns the contacts matching the exact contact\'s email',
                  args: [
                    Arg(
                    name: 'email'
                  )
                  ]
                ),
                Option(
                  name: '--group',
                  description: 'Returns the contacts belonging to the Contact Group matching this ID',
                  args: [
                    Arg(
                    name: 'group'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--phone_number',
                  description: 'Returns the contacts matching the contact\'s exact phone number',
                  args: [
                    Arg(
                    name: 'phone_number'
                  )
                  ]
                ),
                Option(
                  name: '--postal_code',
                  description: 'Returns the contacts matching the contact\'s exact postal code of one of the contact\'s addresses',
                  args: [
                    Arg(
                    name: 'postal_code'
                  )
                  ]
                ),
                Option(
                  name: '--source',
                  description: 'Returns the contacts matching from the address book or auto-generated contacts from emails. For example of contacts only from the address book: `/`contacts?source=address_book` or for only autogenerated contacts: `/contacts?source=inbox`',
                  args: [
                    Arg(
                    name: 'source'
                  )
                  ]
                ),
                Option(
                  name: '--state',
                  description: 'Returns the contacts matching the contact\'s exact state for one of the contact\'s physical addresses',
                  args: [
                    Arg(
                    name: 'state'
                  )
                  ]
                ),
                Option(
                  name: '--street_address',
                  description: 'Returns the contacts matching the one of the contact\'s exact street address',
                  args: [
                    Arg(
                    name: 'street_address'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'groups',
              description: 'Groups commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Return Contact Groups',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'picture',
              description: 'Picture commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Returns a Contacts Picture',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Create a Contact',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update a Contact',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delta',
          description: 'Delta API commands',
          subcommands: [

            Subcommand(
              name: 'get',
              description: 'Request Delta Cursors',
              options: [

                Option(
                  name: '--cursor',
                  description: 'The data cursor from `/delta/latest_cursor`',
                  args: [
                    Arg(
                    name: 'cursor'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--excluded_types',
                  description: 'A comma-separated list of object types to exclude from the returned deltas. You can not use `included_types` and `excluded_types` together',
                  args: [
                    Arg(
                    name: 'excluded_types'
                  )
                  ]
                ),
                Option(
                  name: '--include_types',
                  description: 'A comma-separated list of the object types that will only be included in the returned deltas. You can not use `included_types` and `excluded_types` together',
                  args: [
                    Arg(
                    name: 'include_types'
                  )
                  ]
                ),
                Option(
                  name: '--view',
                  description: 'This value indicates if the data expands thread and message objects in the response to include additional information, when the value is set to expanded',
                  args: [
                    Arg(
                    name: 'view'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'latest:cursor',
              description: 'Latest:cursor commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Get a Delta Cursor',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'longpoll',
              description: 'Longpoll commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Return Long-Polling Deltas',
                  options: [

                    Option(
                      name: '--cursor',
                      description: 'The data cursor from `/delta/latest_cursor`',
                      args: [
                        Arg(
                        name: 'cursor'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    ),
                    Option(
                      name: '--excluded_types',
                      description: 'A comma-separated list of object types to exclude from the returned deltas. You can not use `included_types` and `excluded_types` together',
                      args: [
                        Arg(
                        name: 'excluded_types'
                      )
                      ]
                    ),
                    Option(
                      name: '--include_types',
                      description: 'A comma-separated list of the object types that will only be included in the returned deltas. You can not use `included_types` and `excluded_types` together',
                      args: [
                        Arg(
                        name: 'include_types'
                      )
                      ]
                    ),
                    Option(
                      name: '--timeout',
                      description: 'The time difference between the deltas retrieved',
                      args: [
                        Arg(
                        name: 'timeout',
                        defaultValue: '0'
                      )
                      ]
                    ),
                    Option(
                      name: '--view',
                      description: 'This value indicates if the data expands thread and message objects in the response to include additional information, when the value is set to expanded',
                      args: [
                        Arg(
                        name: 'view'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'streaming',
              description: 'Streaming commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Streaming Deltas',
                  options: [

                    Option(
                      name: '--cursor',
                      description: 'The data cursor from `/delta/latest_cursor`',
                      args: [
                        Arg(
                        name: 'cursor'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    ),
                    Option(
                      name: '--excluded_types',
                      description: 'A comma-separated list of object types to exclude from the returned deltas. You can not use `included_types` and `excluded_types` together',
                      args: [
                        Arg(
                        name: 'excluded_types'
                      )
                      ]
                    ),
                    Option(
                      name: '--include_types',
                      description: 'A comma-separated list of the object types that will only be included in the returned deltas. You can not use `included_types` and `excluded_types` together',
                      args: [
                        Arg(
                        name: 'include_types'
                      )
                      ]
                    ),
                    Option(
                      name: '--view',
                      description: 'This value indicates if the data expands thread and message objects in the response to include additional information, when the value is set to expanded',
                      args: [
                        Arg(
                        name: 'view'
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
          name: 'drafts',
          description: 'Drafts API commands',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a Draft',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Drafts',
              options: [

                Option(
                  name: '--any_email',
                  description: 'Return emails that have been sent or received from this comma-separated list of email addresses. For example: mail1@mail.com,mail2@mail.com. A maximum of 25 emails may be specified',
                  args: [
                    Arg(
                    name: 'any_email'
                  )
                  ]
                ),
                Option(
                  name: '--bcc',
                  description: 'Return threads containing messages that were BCC\'d to this email address, likely sent from the parent account. (Most SMTP gateways remove BCC information.)',
                  args: [
                    Arg(
                    name: 'bcc'
                  )
                  ]
                ),
                Option(
                  name: '--cc',
                  description: 'Return threads containing messages that were CC\'d to this email address',
                  args: [
                    Arg(
                    name: 'cc'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--filename',
                  description: 'Return object with the filename',
                  args: [
                    Arg(
                    name: 'filename'
                  )
                  ]
                ),
                Option(
                  name: '--in',
                  description: 'This parameter supports the name, display_name, or id of a folder or label. To return drafts, pass in `drafts`',
                  args: [
                    Arg(
                    name: 'in'
                  )
                  ]
                ),
                Option(
                  name: '--last_message_after',
                  description: 'Return threads whose most recent message was received after this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'last_message_after'
                  )
                  ]
                ),
                Option(
                  name: '--last_message_before',
                  description: 'Return threads whose most recent message was received before this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'last_message_before'
                  )
                  ]
                ),
                Option(
                  name: '--not_in',
                  description: 'Filter messages not in a given folder or label. The filter supports the name, display, or ID of a folder or label',
                  args: [
                    Arg(
                    name: 'not_in'
                  )
                  ]
                ),
                Option(
                  name: '--started_after',
                  description: 'Return threads whose first message was received after this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'started_after'
                  )
                  ]
                ),
                Option(
                  name: '--started_before',
                  description: 'Return threads whose first message was received before this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'started_before'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'Return threads with a matching literal subject',
                  args: [
                    Arg(
                    name: 'subject'
                  )
                  ]
                ),
                Option(
                  name: '--thread_id',
                  description: 'Return messages belonging to a specific thread',
                  args: [
                    Arg(
                    name: 'thread_id'
                  )
                  ]
                ),
                Option(
                  name: '--to',
                  description: 'Return threads containing messages sent to this email address',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                ),
                Option(
                  name: '--view',
                  description: 'If using Search, only `view=expanded` is supported. See [Views](/docs/api/#overview--views) for more information',
                  args: [
                    Arg(
                    name: 'view'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Create a New Draft',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update a Draft',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'events',
          description: 'Events API commands',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete An Event',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Events',
              options: [

                Option(
                  name: '--calendar_id',
                  description: 'Return events belonging to the specified calendar ID',
                  args: [
                    Arg(
                    name: 'calendar_id'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'See [Count](/docs/api/#overview--count-view) for more information',
                  args: [
                    Arg(
                    name: 'count'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Return events matching the specified description',
                  args: [
                    Arg(
                    name: 'description'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--ends_after',
                  description: 'Return events ending after the specified unix timestamp',
                  args: [
                    Arg(
                    name: 'ends_after'
                  )
                  ]
                ),
                Option(
                  name: '--ends_before',
                  description: 'Return events ending before the specified unix timestamp',
                  args: [
                    Arg(
                    name: 'ends_before'
                  )
                  ]
                ),
                Option(
                  name: '--event_id',
                  description: 'Return the event matching the specified event ID',
                  args: [
                    Arg(
                    name: 'event_id'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--location',
                  description: 'Return events matching the specified location',
                  args: [
                    Arg(
                    name: 'location'
                  )
                  ]
                ),
                Option(
                  name: '--metadata_key',
                  description: 'Pass in your keys to search for metadata. `?metadata_key=goodmorning`.  You can also combine this with `metadata_value`, `?metadata_key=goodmorning&metadata_value=goodbye`. See [Metadata](/docs/developer-tools/api/metadata/)',
                  args: [
                    Arg(
                    name: 'metadata_key'
                  )
                  ]
                ),
                Option(
                  name: '--metadata_pair',
                  description: 'Pass in your metadata key and value pair to search for metadata. `?metadata_pair=goodmorning:goodnight`. See [Metadata](/docs/developer-tools/api/metadata/)',
                  args: [
                    Arg(
                    name: 'metadata_pair'
                  )
                  ]
                ),
                Option(
                  name: '--metadata_value',
                  description: 'Pass in your value to search for metadata. `?metadata_value=goodnight`. You can also combine this with `metadata_key`, `?metadata_key=goodmorning&metadata_value=goodbye`.  See [Metadata](/docs/developer-tools/api/metadata/)',
                  args: [
                    Arg(
                    name: 'metadata_value'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--show_cancelled',
                  description: 'Return events that have a status of `cancelled`. If an event is recurring, then it returns no matter the value of show_cancelled. Default false',
                  args: [
                    Arg(
                    name: 'show_cancelled'
                  )
                  ]
                ),
                Option(
                  name: '--starts_after',
                  description: 'Return events starting after the specified unix timestamp',
                  args: [
                    Arg(
                    name: 'starts_after'
                  )
                  ]
                ),
                Option(
                  name: '--starts_before',
                  description: 'Return events starting before the specified unix timestamp',
                  args: [
                    Arg(
                    name: 'starts_before'
                  )
                  ]
                ),
                Option(
                  name: '--title',
                  description: 'Return events matching the specified title',
                  args: [
                    Arg(
                    name: 'title'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Create an Event',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update An Event',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'to-ics',
              description: 'To-ics commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Generate ICS File',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
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
          name: 'files',
          description: 'Files API commands',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a File',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'download',
              description: 'Download commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Download a File',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Files',
              options: [

                Option(
                  name: '--content_type',
                  description: 'Return objects matching the specified content type',
                  args: [
                    Arg(
                    name: 'content_type'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--filename',
                  description: 'Return object with the filename',
                  args: [
                    Arg(
                    name: 'filename'
                  )
                  ]
                ),
                Option(
                  name: '--message_id',
                  description: 'Return objects matching the specified message ID',
                  args: [
                    Arg(
                    name: 'message_id'
                  )
                  ]
                ),
                Option(
                  name: '--view',
                  description: 'If using Search, only `view=expanded` is supported. See [Views](/docs/api/#overview--views) for more information',
                  args: [
                    Arg(
                    name: 'view'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Upload a New File',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'folders',
          description: 'Folders API commands',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a Folder',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Folders',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Create a Folder',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update a Folder',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ip-addresses',
          description: 'Gets a list of Nylas IP addresses (paid customers only)'
        ),
        Subcommand(
          name: 'job-statuses',
          description: 'Job-Statuses API commands',
          subcommands: [

            Subcommand(
              name: 'get',
              description: 'Return All Job Statuses',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'labels',
          description: 'Labels API commands',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a Label',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Return All Labels',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'post',
              description: 'Create a Label',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update a Label',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'messages',
          description: 'Messages API commands',
          subcommands: [

            Subcommand(
              name: 'get',
              description: 'Return All Messages',
              options: [

                Option(
                  name: '--any_email',
                  description: 'Return emails that have been sent or received from this comma-separated list of email addresses. For example: mail1@mail.com,mail2@mail.com. A maximum of 25 emails may be specified',
                  args: [
                    Arg(
                    name: 'any_email'
                  )
                  ]
                ),
                Option(
                  name: '--bcc',
                  description: 'Return threads containing messages that were BCC\'d to this email address, likely sent from the parent account. (Most SMTP gateways remove BCC information.)',
                  args: [
                    Arg(
                    name: 'bcc'
                  )
                  ]
                ),
                Option(
                  name: '--cc',
                  description: 'Return threads containing messages that were CC\'d to this email address',
                  args: [
                    Arg(
                    name: 'cc'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--filename',
                  description: 'Return object with the filename',
                  args: [
                    Arg(
                    name: 'filename'
                  )
                  ]
                ),
                Option(
                  name: '--from',
                  description: 'Return threads containing messages sent from this email address',
                  args: [
                    Arg(
                    name: 'from'
                  )
                  ]
                ),
                Option(
                  name: '--in',
                  description: 'This parameter supports the name, display_name, or id of a folder or label. To return drafts, pass in `drafts`',
                  args: [
                    Arg(
                    name: 'in'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--not_in',
                  description: 'Filter messages not in a given folder or label. The filter supports the name, display, or ID of a folder or label',
                  args: [
                    Arg(
                    name: 'not_in'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--received_after',
                  description: 'Return messages received after this unix timestamp',
                  args: [
                    Arg(
                    name: 'received_after',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--received_before',
                  description: 'Return messages received before this unix timestamp',
                  args: [
                    Arg(
                    name: 'received_before',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'Return threads with a matching literal subject',
                  args: [
                    Arg(
                    name: 'subject'
                  )
                  ]
                ),
                Option(
                  name: '--thread_id',
                  description: 'Return messages belonging to a specific thread',
                  args: [
                    Arg(
                    name: 'thread_id'
                  )
                  ]
                ),
                Option(
                  name: '--to',
                  description: 'Return threads containing messages sent to this email address',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                ),
                Option(
                  name: '--view',
                  description: 'If using Search, only `view=expanded` is supported. See [Views](/docs/api/#overview--views) for more information',
                  args: [
                    Arg(
                    name: 'view'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update a Message',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'neural',
          description: 'Neural API commands',
          subcommands: [

            Subcommand(
              name: 'categorize',
              description: 'Categorize commands',
              subcommands: [

                Subcommand(
                  name: 'put',
                  description: 'Categorize a Message',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'categorize:feedback',
              description: 'Categorize:feedback commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Categorize Message Feedback',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'conversation',
              description: 'Conversation commands',
              subcommands: [

                Subcommand(
                  name: 'put',
                  description: 'Clean Conversation',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'conversation:feedback',
              description: 'Conversation:feedback commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Clean Conversations Feedback',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'ocr',
              description: 'Ocr commands',
              subcommands: [

                Subcommand(
                  name: 'put',
                  description: 'Optical Character Recognition',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'ocr:feedback',
              description: 'Ocr:feedback commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Optical Character Recognition Feedback',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sentiment',
              description: 'Sentiment commands',
              subcommands: [

                Subcommand(
                  name: 'put',
                  description: 'Sentiment Analysis',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sentiment:feedback',
              description: 'Sentiment:feedback commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Sentiment Analysis Feedback',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'signature',
              description: 'Signature commands',
              subcommands: [

                Subcommand(
                  name: 'put',
                  description: 'Signature Extraction',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'signature:feedback',
              description: 'Signature:feedback commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Signature Extraction Feedback',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
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
          name: 'resources',
          description: 'Resources API commands',
          subcommands: [

            Subcommand(
              name: 'get',
              description: 'Return Room Resource Information',
              options: [

                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'send',
          description: 'Send API commands',
          subcommands: [

            Subcommand(
              name: 'post',
              description: 'Send a Message',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'send-rsvp',
          description: 'Send-Rsvp API commands',
          subcommands: [

            Subcommand(
              name: 'post',
              description: 'Send RSVP',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'threads',
          description: 'Threads API commands',
          subcommands: [

            Subcommand(
              name: 'get',
              description: 'Returns All Threads',
              options: [

                Option(
                  name: '--any_email',
                  description: 'Return emails that have been sent or received from this comma-separated list of email addresses. For example: mail1@mail.com,mail2@mail.com. A maximum of 25 emails may be specified',
                  args: [
                    Arg(
                    name: 'any_email'
                  )
                  ]
                ),
                Option(
                  name: '--bcc',
                  description: 'Return threads containing messages that were BCC\'d to this email address, likely sent from the parent account. (Most SMTP gateways remove BCC information.)',
                  args: [
                    Arg(
                    name: 'bcc'
                  )
                  ]
                ),
                Option(
                  name: '--cc',
                  description: 'Return threads containing messages that were CC\'d to this email address',
                  args: [
                    Arg(
                    name: 'cc'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                ),
                Option(
                  name: '--filename',
                  description: 'Return object with the filename',
                  args: [
                    Arg(
                    name: 'filename'
                  )
                  ]
                ),
                Option(
                  name: '--from',
                  description: 'Return threads containing messages sent from this email address',
                  args: [
                    Arg(
                    name: 'from'
                  )
                  ]
                ),
                Option(
                  name: '--in',
                  description: 'This parameter supports the name, display_name, or id of a folder or label. To return drafts, pass in `drafts`',
                  args: [
                    Arg(
                    name: 'in'
                  )
                  ]
                ),
                Option(
                  name: '--last_message_after',
                  description: 'Return threads whose most recent message was received after this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'last_message_after'
                  )
                  ]
                ),
                Option(
                  name: '--last_message_before',
                  description: 'Return threads whose most recent message was received before this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'last_message_before'
                  )
                  ]
                ),
                Option(
                  name: '--last_updated_after',
                  description: 'Return threads whose most recent last updated date is after this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'last_updated_after'
                  )
                  ]
                ),
                Option(
                  name: '--last_updated_before',
                  description: 'Return threads whose most recent last updated date is before this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'last_updated_before'
                  )
                  ]
                ),
                Option(
                  name: '--last_updated_timestamp',
                  description: 'Return threads that been updated or changed recently. UNIX timestamp',
                  args: [
                    Arg(
                    name: 'last_updated_timestamp'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'The number of objects to return. Defaults to 100. If set too high, requests may fail to prevent excessively large response bodies',
                  args: [
                    Arg(
                    name: 'limit',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--not_in',
                  description: 'Filter messages not in a given folder or label. The filter supports the name, display, or ID of a folder or label',
                  args: [
                    Arg(
                    name: 'not_in'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Zero-based offset from default object sorting. See [pagination](/docs/api/#overview--pagintaion) for more information',
                  args: [
                    Arg(
                    name: 'offset',
                    defaultValue: '0'
                  )
                  ]
                ),
                Option(
                  name: '--started_after',
                  description: 'Return threads whose first message was received after this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'started_after'
                  )
                  ]
                ),
                Option(
                  name: '--started_before',
                  description: 'Return threads whose first message was received before this Unix-based timestamp',
                  args: [
                    Arg(
                    name: 'started_before'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'Return threads with a matching literal subject',
                  args: [
                    Arg(
                    name: 'subject'
                  )
                  ]
                ),
                Option(
                  name: '--to',
                  description: 'Return threads containing messages sent to this email address',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                ),
                Option(
                  name: '--view',
                  description: 'If using Search, only `view=expanded` is supported. See [Views](/docs/api/#overview--views) for more information',
                  args: [
                    Arg(
                    name: 'view'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'put',
              description: 'Update a Thread',
              options: [

                Option(
                  name: '--body',
                  description: 'Request body (or use < to redirect a JSON file)',
                  args: [
                    Arg(
                    name: 'body'
                  )
                  ]
                ),
                Option(
                  name: '--display_columns',
                  description: '(optional) A comma separated list of column headers to display for the table output',
                  args: [
                    Arg(
                    name: 'headers'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'v2',
          description: 'V2 API commands',
          subcommands: [

            Subcommand(
              name: 'outbox',
              description: 'Outbox commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete Scheduled Message',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Messages to Be Sent',
                  options: [

                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'post',
                  description: 'Send a Message',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update Send Time',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Request body (or use < to redirect a JSON file)',
                      args: [
                        Arg(
                        name: 'body'
                      )
                      ]
                    ),
                    Option(
                      name: '--display_columns',
                      description: '(optional) A comma separated list of column headers to display for the table output',
                      args: [
                        Arg(
                        name: 'headers'
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
          name: 'webhooks',
          description: 'Gets a list of webhooks',
          options: [

            Option(
              name: ['--limit', '-l'],
              description: 'This is usage',
              args: [
                Arg(
                name: 'limit',
                defaultValue: '10'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Auth your email account'
    ),
    Subcommand(
      name: 'docs',
      description: 'Documentation lookup (preview)'
    ),
    Subcommand(
      name: 'init',
      description: 'Setup your dashboard application credentials'
    ),
    Subcommand(
      name: 'version',
      description: 'Gets the current CLI version'
    ),
    Subcommand(
      name: 'webhook',
      description: 'Create and test Nylas\' Webhooks',
      subcommands: [

        Subcommand(
          name: 'tunnel',
          description: 'Starts listening for incoming Nylas webhook events',
          options: [

            Option(
              name: '--callback_domain',
              description: 'The domain for the callback URL',
              args: [
                Arg(
                name: 'callback_domain',
                defaultValue: 'cb.nylas.com'
              )
              ]
            ),
            Option(
              name: ['--forward', '-f'],
              description: 'Address to forward requests to (e.g. http://localhost:3000)',
              args: [
                Arg(
                name: 'forward'
              )
              ]
            ),
            Option(
              name: ['--print', '-p'],
              description: 'Prints the (json) payload to the console'
            ),
            Option(
              name: ['--triggers', '-t'],
              description: 'The triggers to register for your webhooks',
              args: [
                Arg(
                name: 'triggers',
                defaultValue: 'account.connected,account.running,account.stopped,account.invalid,account.sync_error,message.created,message.opened,message.updated,message.link_clicked,message.bounced,thread.replied,calendar.created,calendar.updated,calendar.deleted,event.created,event.updated,event.deleted,contact.created,contact.updated,contact.deleted,job.successful,job.failed',
                suggestions: [

                  FigSuggestion(name: 'account.connected'),
                  FigSuggestion(name: 'account.running'),
                  FigSuggestion(name: 'account.stopped'),
                  FigSuggestion(name: 'account.invalid'),
                  FigSuggestion(name: 'account.sync_error'),
                  FigSuggestion(name: 'message.created'),
                  FigSuggestion(name: 'message.opened'),
                  FigSuggestion(name: 'message.updated'),
                  FigSuggestion(name: 'message.link_clicked'),
                  FigSuggestion(name: 'message.bounced'),
                  FigSuggestion(name: 'thread.replied'),
                  FigSuggestion(name: 'calendar.created'),
                  FigSuggestion(name: 'calendar.updated'),
                  FigSuggestion(name: 'calendar.deleted'),
                  FigSuggestion(name: 'event.created'),
                  FigSuggestion(name: 'event.updated'),
                  FigSuggestion(name: 'event.deleted'),
                  FigSuggestion(name: 'contact.created'),
                  FigSuggestion(name: 'contact.updated'),
                  FigSuggestion(name: 'contact.updated'),
                  FigSuggestion(name: 'contact.deleted'),
                  FigSuggestion(name: 'job.successful'),
                  FigSuggestion(name: 'job.failed')
                ]
              )
              ]
            ),
            Option(
              name: '--websocket_domain',
              description: 'The domain for the websocket server',
              args: [
                Arg(
                name: 'websocket_domain',
                defaultValue: 'tunnel.nylas.com'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'api',
          description: 'Access the Nylas API endpoints',
          subcommands: [

            Subcommand(
              name: 'a',
              description: 'A API commands',
              subcommands: [

                Subcommand(
                  name: 'accounts',
                  description: 'Accounts commands',
                  subcommands: [

                    Subcommand(
                      name: 'delete',
                      description: 'Delete an Account'
                    ),
                    Subcommand(
                      name: 'get',
                      description: 'Return All Accounts'
                    )
                  ]
                ),
                Subcommand(
                  name: 'accounts:downgrade',
                  description: 'Accounts:downgrade commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Cancel an Account'
                    )
                  ]
                ),
                Subcommand(
                  name: 'accounts:revoke-all',
                  description: 'Accounts:revoke-all commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Revoke All Tokens'
                    )
                  ]
                ),
                Subcommand(
                  name: 'accounts:token-info',
                  description: 'Accounts:token-info commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Return Token Information'
                    )
                  ]
                ),
                Subcommand(
                  name: 'accounts:upgrade',
                  description: 'Accounts:upgrade commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Reactivate an Account'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'accounts',
              description: 'Gets a list of authed accounts'
            ),
            Subcommand(
              name: 'applications',
              description: 'Gets your application info'
            ),
            Subcommand(
              name: 'calendars',
              description: 'Calendars API commands',
              subcommands: [

                Subcommand(
                  name: 'availability',
                  description: 'Availability commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Availability for a Single Meeting'
                    )
                  ]
                ),
                Subcommand(
                  name: 'availability:consecutive',
                  description: 'Availability:consecutive commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Availability for Multiple Meetings'
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Calendar'
                ),
                Subcommand(
                  name: 'free-busy',
                  description: 'Free-busy commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Calendar Free or Busy'
                    )
                  ]
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Calendars'
                ),
                Subcommand(
                  name: 'post',
                  description: 'Create a Calendar'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update A Calendar'
                )
              ]
            ),
            Subcommand(
              name: 'connect',
              description: 'Connect API commands',
              subcommands: [

                Subcommand(
                  name: 'detect-provider',
                  description: 'Detect-provider commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Detect Provider'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'contacts',
              description: 'Contacts API commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete a Contact'
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Contacts'
                ),
                Subcommand(
                  name: 'groups',
                  description: 'Groups commands',
                  subcommands: [

                    Subcommand(
                      name: 'get',
                      description: 'Return Contact Groups'
                    )
                  ]
                ),
                Subcommand(
                  name: 'picture',
                  description: 'Picture commands',
                  subcommands: [

                    Subcommand(
                      name: 'get',
                      description: 'Returns a Contacts Picture'
                    )
                  ]
                ),
                Subcommand(
                  name: 'post',
                  description: 'Create a Contact'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update a Contact'
                )
              ]
            ),
            Subcommand(
              name: 'delta',
              description: 'Delta API commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Request Delta Cursors'
                ),
                Subcommand(
                  name: 'latest:cursor',
                  description: 'Latest:cursor commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Get a Delta Cursor'
                    )
                  ]
                ),
                Subcommand(
                  name: 'longpoll',
                  description: 'Longpoll commands',
                  subcommands: [

                    Subcommand(
                      name: 'get',
                      description: 'Return Long-Polling Deltas'
                    )
                  ]
                ),
                Subcommand(
                  name: 'streaming',
                  description: 'Streaming commands',
                  subcommands: [

                    Subcommand(
                      name: 'get',
                      description: 'Streaming Deltas'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'drafts',
              description: 'Drafts API commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete a Draft'
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Drafts'
                ),
                Subcommand(
                  name: 'post',
                  description: 'Create a New Draft'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update a Draft'
                )
              ]
            ),
            Subcommand(
              name: 'events',
              description: 'Events API commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete An Event'
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Events'
                ),
                Subcommand(
                  name: 'post',
                  description: 'Create an Event'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update An Event'
                ),
                Subcommand(
                  name: 'to-ics',
                  description: 'To-ics commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Generate ICS File'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'files',
              description: 'Files API commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete a File'
                ),
                Subcommand(
                  name: 'download',
                  description: 'Download commands',
                  subcommands: [

                    Subcommand(
                      name: 'get',
                      description: 'Download a File'
                    )
                  ]
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Files'
                ),
                Subcommand(
                  name: 'post',
                  description: 'Upload a New File'
                )
              ]
            ),
            Subcommand(
              name: 'folders',
              description: 'Folders API commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete a Folder'
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Folders'
                ),
                Subcommand(
                  name: 'post',
                  description: 'Create a Folder'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update a Folder'
                )
              ]
            ),
            Subcommand(
              name: 'ip-addresses',
              description: 'Gets a list of Nylas IP addresses (paid customers only)'
            ),
            Subcommand(
              name: 'job-statuses',
              description: 'Job-Statuses API commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Return All Job Statuses'
                )
              ]
            ),
            Subcommand(
              name: 'labels',
              description: 'Labels API commands',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete a Label'
                ),
                Subcommand(
                  name: 'get',
                  description: 'Return All Labels'
                ),
                Subcommand(
                  name: 'post',
                  description: 'Create a Label'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update a Label'
                )
              ]
            ),
            Subcommand(
              name: 'messages',
              description: 'Messages API commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Return All Messages'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update a Message'
                )
              ]
            ),
            Subcommand(
              name: 'neural',
              description: 'Neural API commands',
              subcommands: [

                Subcommand(
                  name: 'categorize',
                  description: 'Categorize commands',
                  subcommands: [

                    Subcommand(
                      name: 'put',
                      description: 'Categorize a Message'
                    )
                  ]
                ),
                Subcommand(
                  name: 'categorize:feedback',
                  description: 'Categorize:feedback commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Categorize Message Feedback'
                    )
                  ]
                ),
                Subcommand(
                  name: 'conversation',
                  description: 'Conversation commands',
                  subcommands: [

                    Subcommand(
                      name: 'put',
                      description: 'Clean Conversation'
                    )
                  ]
                ),
                Subcommand(
                  name: 'conversation:feedback',
                  description: 'Conversation:feedback commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Clean Conversations Feedback'
                    )
                  ]
                ),
                Subcommand(
                  name: 'ocr',
                  description: 'Ocr commands',
                  subcommands: [

                    Subcommand(
                      name: 'put',
                      description: 'Optical Character Recognition'
                    )
                  ]
                ),
                Subcommand(
                  name: 'ocr:feedback',
                  description: 'Ocr:feedback commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Optical Character Recognition Feedback'
                    )
                  ]
                ),
                Subcommand(
                  name: 'sentiment',
                  description: 'Sentiment commands',
                  subcommands: [

                    Subcommand(
                      name: 'put',
                      description: 'Sentiment Analysis'
                    )
                  ]
                ),
                Subcommand(
                  name: 'sentiment:feedback',
                  description: 'Sentiment:feedback commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Sentiment Analysis Feedback'
                    )
                  ]
                ),
                Subcommand(
                  name: 'signature',
                  description: 'Signature commands',
                  subcommands: [

                    Subcommand(
                      name: 'put',
                      description: 'Signature Extraction'
                    )
                  ]
                ),
                Subcommand(
                  name: 'signature:feedback',
                  description: 'Signature:feedback commands',
                  subcommands: [

                    Subcommand(
                      name: 'post',
                      description: 'Signature Extraction Feedback'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'resources',
              description: 'Resources API commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Return Room Resource Information'
                )
              ]
            ),
            Subcommand(
              name: 'send',
              description: 'Send API commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Send a Message'
                )
              ]
            ),
            Subcommand(
              name: 'send-rsvp',
              description: 'Send-Rsvp API commands',
              subcommands: [

                Subcommand(
                  name: 'post',
                  description: 'Send RSVP'
                )
              ]
            ),
            Subcommand(
              name: 'threads',
              description: 'Threads API commands',
              subcommands: [

                Subcommand(
                  name: 'get',
                  description: 'Returns All Threads'
                ),
                Subcommand(
                  name: 'put',
                  description: 'Update a Thread'
                )
              ]
            ),
            Subcommand(
              name: 'v2',
              description: 'V2 API commands',
              subcommands: [

                Subcommand(
                  name: 'outbox',
                  description: 'Outbox commands',
                  subcommands: [

                    Subcommand(
                      name: 'delete',
                      description: 'Delete Scheduled Message'
                    ),
                    Subcommand(
                      name: 'get',
                      description: 'Return All Messages to Be Sent'
                    ),
                    Subcommand(
                      name: 'post',
                      description: 'Send a Message'
                    ),
                    Subcommand(
                      name: 'put',
                      description: 'Update Send Time'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'webhooks',
              description: 'Gets a list of webhooks'
            )
          ]
        ),
        Subcommand(
          name: 'auth',
          description: 'Auth your email account'
        ),
        Subcommand(
          name: 'docs',
          description: 'Documentation lookup (preview)'
        ),
        Subcommand(
          name: 'init',
          description: 'Setup your dashboard application credentials'
        ),
        Subcommand(
          name: 'version',
          description: 'Gets the current CLI version'
        ),
        Subcommand(
          name: 'webhook',
          description: 'Create and test Nylas\' Webhooks',
          subcommands: [

            Subcommand(
              name: 'tunnel',
              description: 'Starts listening for incoming Nylas webhook events'
            )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--access_token',
      description: 'Nylas account access token',
      isPersistent: true,
      args: [
        Arg(
        name: 'access_token'
      )
      ]
    ),
    Option(
      name: '--config_dir',
      description: 'Config directory',
      isPersistent: true,
      args: [
        Arg(
        name: 'config_dir',
        defaultValue: '~/.nylas',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--config_file',
      description: 'Config file (default is config.yaml)',
      isPersistent: true,
      args: [
        Arg(
        name: 'config_file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--dashboard_api_url',
      description: 'Dashboard API URL',
      isPersistent: true,
      args: [
        Arg(
        name: 'dashboard_api_url'
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Enable debugging output',
      isPersistent: true
    ),
    Option(
      name: '--disable_telemetry',
      description: 'Disables sending telemetry data',
      isPersistent: true
    ),
    Option(
      name: '--nylas_api_url',
      description: 'Nylas API URL',
      isPersistent: true,
      args: [
        Arg(
        name: 'nylas_api_url'
      )
      ]
    ),
    Option(
      name: ['--output', '-o'],
      description: 'Output format (e.g. json, table)',
      isPersistent: true,
      args: [
        Arg(
        name: 'output',
        defaultValue: 'json',
        suggestions: [

          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'table')
        ]
      )
      ]
    ),
    Option(
      name: '--region',
      description: 'Nylas Region (values: us, ireland, canada, australia)',
      isPersistent: true,
      args: [
        Arg(
        name: 'region',
        suggestions: [

          FigSuggestion(name: 'us'),
          FigSuggestion(name: 'ireland'),
          FigSuggestion(name: 'canada'),
          FigSuggestion(name: 'australia')
        ]
      )
      ]
    ),
    Option(
      name: '--silent',
      description: 'Silences the output',
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
