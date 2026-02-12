// Auto-generated from TypeScript source: kafkactl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `kafkactl` CLI
final FigSpec kafkactlSpec = FigSpec(
  name: 'kafkactl',
  description: 'Command-line interface for Apache Kafka',
  subcommands: [
    Subcommand(
      name: ['edit', 'alter'],
      description: 'Alter topics, partitions',
      subcommands: [
        Subcommand(
          name: 'partition',
          description: 'Alter a partition',
          options: [
            Option(
              name: ['--replicas', '-r'],
              description: 'Set replicas for a partition',
              isRepeatable: true,
              args: [
                Arg(
                name: 'replica'
              )
              ]
            ),
            Option(
              name: ['--validate-only', '-v'],
              description: 'Validate only'
            )
          ]
        ),
        Subcommand(
          name: 'topic',
          description: 'Alter a topic',
          options: [
            Option(
              name: ['--config', '-c'],
              description: 'Configs in format `key=value`',
              isRepeatable: true,
              args: [
                Arg(
                name: 'confi'
              )
              ]
            ),
            Option(
              name: ['--partitions', '-p'],
              description: 'Number of partitions',
              args: [
                Arg(
                name: 'partitions',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--replication-factor', '-r'],
              description: 'Replication factor',
              args: [
                Arg(
                name: 'replication-factor',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--validate-only', '-v'],
              description: 'Validate only'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'attach',
      description: 'Run kafkactl pod in kubernetes and attach to it'
    ),
    Subcommand(
      name: 'clone',
      description: 'Clone topics, consumerGroups',
      subcommands: [
        Subcommand(
          name: ['cg', 'consumer-group'],
          description: 'Clone existing consumerGroup with all offsets'
        ),
        Subcommand(
          name: 'topic',
          description: 'Clone existing topic (number of partitions, replication factor, config entries) to new one'
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate shell auto-completion file'
    ),
    Subcommand(
      name: 'config',
      description: 'Show and edit configurations',
      subcommands: [
        Subcommand(
          name: ['currentContext', 'current-context'],
          description: 'Show current context'
        ),
        Subcommand(
          name: ['getContexts', 'get-contexts'],
          description: 'List configured contexts',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: compact',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['useContext', 'use-context'],
          description: 'Switch active context'
        ),
        Subcommand(
          name: 'view',
          description: 'Show contents of config file'
        )
      ]
    ),
    Subcommand(
      name: 'consume',
      description: 'Consume messages from a topic',
      options: [
        Option(
          name: ['--exit', '-e'],
          description: 'Stop consuming when latest offset is reached'
        ),
        Option(
          name: ['--from-beginning', '-b'],
          description: 'Set offset for consumer to the oldest offset'
        ),
        Option(
          name: ['--group', '-g'],
          description: 'Consumer group to join',
          args: [
            Arg(
            name: 'grou'
          )
          ]
        ),
        Option(
          name: '--key-encoding',
          description: 'Key encoding (auto-detected by default). One of: none|hex|base64',
          args: [
            Arg(
            name: 'key-encodin'
          )
          ]
        ),
        Option(
          name: '--key-proto-type',
          description: 'Key protobuf message type',
          args: [
            Arg(
            name: 'key-proto-typ'
          )
          ]
        ),
        Option(
          name: '--max-messages',
          description: 'Stop consuming after n messages have been read',
          args: [
            Arg(
            name: 'max-messages',
            defaultValue: '-'
          )
          ]
        ),
        Option(
          name: '--offset',
          description: 'Offsets in format `partition=offset (for partitions not specified, other parameters apply)`',
          isRepeatable: true,
          args: [
            Arg(
            name: 'offse'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format. One of: json|yaml',
          args: [
            Arg(
            name: 'outpu'
          )
          ]
        ),
        Option(
          name: ['--partitions', '-p'],
          description: 'Partitions to consume. The default is to consume from all partitions',
          isRepeatable: true,
          args: [
            Arg(
            name: 'partition'
          )
          ]
        ),
        Option(
          name: '--print-headers',
          description: 'Print message headers'
        ),
        Option(
          name: ['--print-keys', '-k'],
          description: 'Print message keys'
        ),
        Option(
          name: ['--print-schema', '-a'],
          description: 'Print details about avro schema used for decoding'
        ),
        Option(
          name: ['--print-timestamps', '-t'],
          description: 'Print message timestamps'
        ),
        Option(
          name: '--proto-file',
          description: 'Additional protobuf description file for searching message description',
          isRepeatable: true,
          args: [
            Arg(
            name: 'proto-file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--proto-import-path',
          description: 'Additional path to search files listed in proto \'import\' directive',
          isRepeatable: true,
          args: [
            Arg(
            name: 'proto-import-path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--protoset-file',
          description: 'Additional compiled protobuf description file for searching message description',
          isRepeatable: true,
          args: [
            Arg(
            name: 'protoset-file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--separator', '-s'],
          description: 'Separator to split key and value',
          args: [
            Arg(
            name: 'separator',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--tail',
          description: 'Show only the last n messages on the topic',
          args: [
            Arg(
            name: 'tail',
            defaultValue: '-'
          )
          ]
        ),
        Option(
          name: '--value-encoding',
          description: 'Value encoding (auto-detected by default). One of: none|hex|base64',
          args: [
            Arg(
            name: 'value-encodin'
          )
          ]
        ),
        Option(
          name: '--value-proto-type',
          description: 'Value protobuf message type',
          args: [
            Arg(
            name: 'value-proto-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create topics, consumerGroups, acls',
      subcommands: [
        Subcommand(
          name: ['acl', 'access-control-list'],
          description: 'Create an acl',
          options: [
            Option(
              name: ['--allow', '-a'],
              description: 'Acl of permissionType \'allow\' (choose this or \'deny\')'
            ),
            Option(
              name: ['--cluster', '-c'],
              description: 'Create acl for the cluster'
            ),
            Option(
              name: ['--deny', '-d'],
              description: 'Acl of permissionType \'deny\' (choose this or \'allow\')'
            ),
            Option(
              name: ['--group', '-g'],
              description: 'Create acl for a consumer group',
              args: [
                Arg(
                name: 'grou'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'Hosts to allow',
              isRepeatable: true,
              args: [
                Arg(
                name: 'hos'
              )
              ]
            ),
            Option(
              name: ['--operation', '-o'],
              description: 'Operations of acl',
              isRepeatable: true,
              args: [
                Arg(
                name: 'operatio'
              )
              ]
            ),
            Option(
              name: '--pattern',
              description: 'Pattern type. one of (match, prefixed, literal)',
              args: [
                Arg(
                name: 'pattern',
                defaultValue: 'litera'
              )
              ]
            ),
            Option(
              name: ['--principal', '-p'],
              description: 'Principal to be authenticated',
              args: [
                Arg(
                name: 'principa'
              )
              ]
            ),
            Option(
              name: ['--topic', '-t'],
              description: 'Create acl for a topic',
              args: [
                Arg(
                name: 'topi'
              )
              ]
            ),
            Option(
              name: ['--validate-only', '-v'],
              description: 'Validate only'
            )
          ]
        ),
        Subcommand(
          name: ['cg', 'consumer-group'],
          description: 'Create a consumerGroup',
          options: [
            Option(
              name: '--newest',
              description: 'Set the offset to newest offset (for all partitions or the specified partition)'
            ),
            Option(
              name: '--offset',
              description: 'Set offset to this value. offset with value -1 is ignored',
              args: [
                Arg(
                name: 'offset',
                defaultValue: '-'
              )
              ]
            ),
            Option(
              name: '--oldest',
              description: 'Set the offset to oldest offset (for all partitions or the specified partition)'
            ),
            Option(
              name: ['--partition', '-p'],
              description: 'Partition to create group for. -1 stands for all partitions',
              args: [
                Arg(
                name: 'partition',
                defaultValue: '-'
              )
              ]
            ),
            Option(
              name: ['--topic', '-t'],
              description: 'One or more topics to create group for',
              isRepeatable: true,
              args: [
                Arg(
                name: 'topi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'topic',
          description: 'Create a topic',
          options: [
            Option(
              name: ['--config', '-c'],
              description: 'Configs in format `key=value`',
              isRepeatable: true,
              args: [
                Arg(
                name: 'confi'
              )
              ]
            ),
            Option(
              name: ['--partitions', '-p'],
              description: 'Number of partitions',
              args: [
                Arg(
                name: 'partitions',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--replication-factor', '-r'],
              description: 'Replication factor',
              args: [
                Arg(
                name: 'replication-factor',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--validate-only', '-v'],
              description: 'Validate only'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete topics, consumerGroups, consumer-group-offset, acls',
      subcommands: [
        Subcommand(
          name: ['acl', 'access-control-list'],
          description: 'Delete an acl',
          options: [
            Option(
              name: ['--allow', '-a'],
              description: 'Acl of permissionType \'allow\''
            ),
            Option(
              name: ['--cluster', '-c'],
              description: 'Delete acl for the cluster'
            ),
            Option(
              name: ['--deny', '-d'],
              description: 'Acl of permissionType \'deny\''
            ),
            Option(
              name: ['--groups', '-g'],
              description: 'Delete acl for a consumer group'
            ),
            Option(
              name: ['--operation', '-o'],
              description: 'Operation of acl',
              args: [
                Arg(
                name: 'operatio'
              )
              ]
            ),
            Option(
              name: '--pattern',
              description: 'Pattern type. one of (any, match, prefixed, literal)',
              args: [
                Arg(
                name: 'patter'
              )
              ]
            ),
            Option(
              name: ['--topics', '-t'],
              description: 'Delete acl for a topic'
            ),
            Option(
              name: ['--validate-only', '-v'],
              description: 'Validate only'
            )
          ]
        ),
        Subcommand(
          name: ['consumer-groups', 'consumer-group'],
          description: 'Delete a consumer-group'
        ),
        Subcommand(
          name: ['cgo', 'offset', 'consumer-group-offset'],
          description: 'Delete a consumer-group-offset',
          options: [
            Option(
              name: ['--partition', '-p'],
              description: 'Delete offset for this partition. -1 stands for all partitions',
              args: [
                Arg(
                name: 'partition',
                defaultValue: '-'
              )
              ]
            ),
            Option(
              name: ['--topic', '-t'],
              description: 'Delete offset for this topic',
              args: [
                Arg(
                name: 'topi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'topic',
          description: 'Delete a topic'
        )
      ]
    ),
    Subcommand(
      name: 'describe',
      description: 'Describe topics, consumerGroups, brokers',
      subcommands: [
        Subcommand(
          name: 'broker',
          description: 'Describe a broker',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['cg', 'consumer-group'],
          description: 'Describe a consumerGroup',
          options: [
            Option(
              name: ['--only-with-lag', '-l'],
              description: 'Show only partitions that have a lag'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--print-members', '-m'],
              description: 'Print group members'
            ),
            Option(
              name: ['--print-topics', '-T'],
              description: 'Print topic details'
            ),
            Option(
              name: ['--topic', '-t'],
              description: 'Show group details for given topic only',
              args: [
                Arg(
                name: 'topi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'topic',
          description: 'Describe a topic',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--print-configs', '-c'],
              description: 'Print configs'
            ),
            Option(
              name: ['--skip-empty', '-s'],
              description: 'Show only partitions that have a messages'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['list', 'get'],
      description: 'Get info about topics, consumerGroups, acls, brokers',
      subcommands: [
        Subcommand(
          name: ['acl', 'access-control-list'],
          description: 'List available acls',
          options: [
            Option(
              name: ['--allow', '-a'],
              description: 'Acl of permissionType \'allow\''
            ),
            Option(
              name: ['--cluster', '-c'],
              description: 'List acl for the cluster'
            ),
            Option(
              name: ['--deny', '-d'],
              description: 'Acl of permissionType \'deny\''
            ),
            Option(
              name: ['--groups', '-g'],
              description: 'List acl for consumer groups'
            ),
            Option(
              name: '--operation',
              description: 'Operation of acl',
              args: [
                Arg(
                name: 'operation',
                defaultValue: 'an'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--pattern',
              description: 'Pattern type. one of (any, match, prefixed, literal)',
              args: [
                Arg(
                name: 'pattern',
                defaultValue: 'an'
              )
              ]
            ),
            Option(
              name: ['--topics', '-t'],
              description: 'List acl for topics'
            )
          ]
        ),
        Subcommand(
          name: 'brokers',
          description: 'List brokers',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|compact',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['cg', 'consumer-groups'],
          description: 'List available consumerGroups',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide|compact',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--topic', '-t'],
              description: 'Show groups for given topic only',
              args: [
                Arg(
                name: 'topi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'topics',
          description: 'List available topics',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide|compact',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'produce',
      description: 'Produce messages to a topic',
      options: [
        Option(
          name: ['--file', '-f'],
          description: 'File to read input from',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['--header', '-H'],
          description: 'Headers in format `key:value`',
          isRepeatable: true,
          args: [
            Arg(
            name: 'heade'
          )
          ]
        ),
        Option(
          name: ['--key', '-k'],
          description: 'Key to use for all messages',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--key-encoding',
          description: 'Key encoding (none by default). One of: none|hex|base64',
          args: [
            Arg(
            name: 'key-encodin'
          )
          ]
        ),
        Option(
          name: '--key-proto-type',
          description: 'Key protobuf message type',
          args: [
            Arg(
            name: 'key-proto-typ'
          )
          ]
        ),
        Option(
          name: ['--key-schema-version', '-K'],
          description: 'Avro schema version that should be used for key serialization (default is latest)',
          args: [
            Arg(
            name: 'key-schema-version',
            defaultValue: '-'
          )
          ]
        ),
        Option(
          name: ['--lineSeparator', '-L'],
          description: 'Separator to split multiple messages from stdin or file',
          args: [
            Arg(
            name: 'lineSeparator',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--max-message-bytes',
          description: 'The maximum permitted size of a message (defaults to 1000000)',
          args: [
            Arg(
            name: 'max-message-bytes',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--null-value',
          description: 'Produce a null value (can be used instead of providing a value with --value)'
        ),
        Option(
          name: ['--partition', '-p'],
          description: 'Partition to produce to',
          args: [
            Arg(
            name: 'partition',
            defaultValue: '-'
          )
          ]
        ),
        Option(
          name: ['--partitioner', '-P'],
          description: 'The partitioning scheme to use. Can be `murmur2`, `hash`, `hash-ref` `manual`, or `random`. (default is murmur2)',
          args: [
            Arg(
            name: 'partitione'
          )
          ]
        ),
        Option(
          name: '--proto-file',
          description: 'Additional protobuf description file for searching message description',
          isRepeatable: true,
          args: [
            Arg(
            name: 'proto-file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--proto-import-path',
          description: 'Additional path to search files listed in proto \'import\' directive',
          isRepeatable: true,
          args: [
            Arg(
            name: 'proto-import-path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--protoset-file',
          description: 'Additional compiled protobuf description file for searching message description',
          isRepeatable: true,
          args: [
            Arg(
            name: 'protoset-file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--rate', '-r'],
          description: 'Amount of messages per second to produce on the topic',
          args: [
            Arg(
            name: 'rate',
            defaultValue: '-'
          )
          ]
        ),
        Option(
          name: '--required-acks',
          description: 'Required acks. One of `NoResponse`, `WaitForLocal`, `WaitForAll`. (default is WaitForLocal)',
          args: [
            Arg(
            name: 'required-ack'
          )
          ]
        ),
        Option(
          name: ['--separator', '-S'],
          description: 'Separator to split key and value from stdin or file',
          args: [
            Arg(
            name: 'separato'
          )
          ]
        ),
        Option(
          name: ['--silent', '-s'],
          description: 'Do not write to standard output'
        ),
        Option(
          name: ['--value', '-v'],
          description: 'Value to produce',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        ),
        Option(
          name: '--value-encoding',
          description: 'Value encoding (none by default). One of: none|hex|base64',
          args: [
            Arg(
            name: 'value-encodin'
          )
          ]
        ),
        Option(
          name: '--value-proto-type',
          description: 'Value protobuf message type',
          args: [
            Arg(
            name: 'value-proto-typ'
          )
          ]
        ),
        Option(
          name: ['--value-schema-version', '-i'],
          description: 'Avro schema version that should be used for value serialization (default is latest)',
          args: [
            Arg(
            name: 'value-schema-version',
            defaultValue: '-'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Reset consumerGroupsOffset',
      subcommands: [
        Subcommand(
          name: ['cgo', 'offset', 'consumer-group-offset'],
          description: 'Reset a consumer group offset',
          options: [
            Option(
              name: '--all-topics',
              description: 'Do the operation for all topics in the consumer group'
            ),
            Option(
              name: ['--execute', '-e'],
              description: 'Execute the reset (as default only the results are displayed for validation)'
            ),
            Option(
              name: '--newest',
              description: 'Set the offset to newest offset (for all partitions or the specified partition)'
            ),
            Option(
              name: '--offset',
              description: 'Set offset to this value. offset with value -1 is ignored',
              args: [
                Arg(
                name: 'offset',
                defaultValue: '-'
              )
              ]
            ),
            Option(
              name: '--oldest',
              description: 'Set the offset to oldest offset (for all partitions or the specified partition)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--partition', '-p'],
              description: 'Partition to apply the offset. -1 stands for all partitions',
              args: [
                Arg(
                name: 'partition',
                defaultValue: '-'
              )
              ]
            ),
            Option(
              name: ['--topic', '-t'],
              description: 'One ore more topics to change offset for',
              isRepeatable: true,
              args: [
                Arg(
                name: 'topi'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print the version of kafkactl'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: ['edit', 'alter'],
          description: 'Alter topics, partitions',
          subcommands: [
            Subcommand(
              name: 'partition',
              description: 'Alter a partition'
            ),
            Subcommand(
              name: 'topic',
              description: 'Alter a topic'
            )
          ]
        ),
        Subcommand(
          name: 'attach',
          description: 'Run kafkactl pod in kubernetes and attach to it'
        ),
        Subcommand(
          name: 'clone',
          description: 'Clone topics, consumerGroups',
          subcommands: [
            Subcommand(
              name: ['cg', 'consumer-group'],
              description: 'Clone existing consumerGroup with all offsets'
            ),
            Subcommand(
              name: 'topic',
              description: 'Clone existing topic (number of partitions, replication factor, config entries) to new one'
            )
          ]
        ),
        Subcommand(
          name: 'completion',
          description: 'Generate shell auto-completion file'
        ),
        Subcommand(
          name: 'config',
          description: 'Show and edit configurations',
          subcommands: [
            Subcommand(
              name: ['currentContext', 'current-context'],
              description: 'Show current context'
            ),
            Subcommand(
              name: ['getContexts', 'get-contexts'],
              description: 'List configured contexts'
            ),
            Subcommand(
              name: ['useContext', 'use-context'],
              description: 'Switch active context'
            ),
            Subcommand(
              name: 'view',
              description: 'Show contents of config file'
            )
          ]
        ),
        Subcommand(
          name: 'consume',
          description: 'Consume messages from a topic'
        ),
        Subcommand(
          name: 'create',
          description: 'Create topics, consumerGroups, acls',
          subcommands: [
            Subcommand(
              name: ['acl', 'access-control-list'],
              description: 'Create an acl'
            ),
            Subcommand(
              name: ['cg', 'consumer-group'],
              description: 'Create a consumerGroup'
            ),
            Subcommand(
              name: 'topic',
              description: 'Create a topic'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete topics, consumerGroups, consumer-group-offset, acls',
          subcommands: [
            Subcommand(
              name: ['acl', 'access-control-list'],
              description: 'Delete an acl'
            ),
            Subcommand(
              name: ['consumer-groups', 'consumer-group'],
              description: 'Delete a consumer-group'
            ),
            Subcommand(
              name: ['cgo', 'offset', 'consumer-group-offset'],
              description: 'Delete a consumer-group-offset'
            ),
            Subcommand(
              name: 'topic',
              description: 'Delete a topic'
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe topics, consumerGroups, brokers',
          subcommands: [
            Subcommand(
              name: 'broker',
              description: 'Describe a broker'
            ),
            Subcommand(
              name: ['cg', 'consumer-group'],
              description: 'Describe a consumerGroup'
            ),
            Subcommand(
              name: 'topic',
              description: 'Describe a topic'
            )
          ]
        ),
        Subcommand(
          name: ['list', 'get'],
          description: 'Get info about topics, consumerGroups, acls, brokers',
          subcommands: [
            Subcommand(
              name: ['acl', 'access-control-list'],
              description: 'List available acls'
            ),
            Subcommand(
              name: 'brokers',
              description: 'List brokers'
            ),
            Subcommand(
              name: ['cg', 'consumer-groups'],
              description: 'List available consumerGroups'
            ),
            Subcommand(
              name: 'topics',
              description: 'List available topics'
            )
          ]
        ),
        Subcommand(
          name: 'produce',
          description: 'Produce messages to a topic'
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset consumerGroupsOffset',
          subcommands: [
            Subcommand(
              name: ['cgo', 'offset', 'consumer-group-offset'],
              description: 'Reset a consumer group offset'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Print the version of kafkactl'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--config-file', '-C'],
      description: 'Config file. one of: [\$HOME/.config/kafkactl \$HOME/.kafkactl \$SNAP_REAL_HOME/.config/kafkactl \$SNAP_DATA/kafkactl /etc/kafkactl]',
      isPersistent: true,
      args: [
        Arg(
        name: 'config-file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-V'],
      description: 'Verbose output',
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
