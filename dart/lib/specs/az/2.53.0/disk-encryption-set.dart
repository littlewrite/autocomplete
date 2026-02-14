// AI-generated from TypeScript source: src/az/2.53.0/disk-encryption-set.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec diskEncryptionSetSpec = FigSpec(
  name: "disk-encryption-set",
  description: "Disk Encryption Set resource",
  subcommands: [
    FigSubcommand(
      name: "create",
      description: "Create a disk encryption set",
      options: [
        FigOption(
          name: ["--key-url"],
          description: "URL pointing to a key or secret in KeyVault",
          isRequired: true,
          args: [
            FigArg(
              name: "key-url",
            ),
          ],
        ),
        FigOption(
          name: ["--name", "-n"],
          description: "Name of disk encryption set",
          isRequired: true,
          args: [
            FigArg(
              name: "name",
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          isRequired: true,
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
        FigOption(
          name: ["--enable-auto-key-rotation", "--auto-rotation"],
          description: "Enable automatic rotation of keys",
          args: [
            FigArg(
              name: "enable-auto-key-rotation",
              suggestions: ["false", "true"],
            ),
          ],
        ),
        FigOption(
          name: ["--encryption-type"],
          description:
              "The type of key used to encrypt the data of the disk. EncryptionAtRestWithPlatformKey: Disk is encrypted at rest with Platform managed key. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted at rest with Customer managed key that can be changed and revoked by a customer. EncryptionAtRestWithPlatformAndCustomerKeys: Disk is encrypted at rest with 2 layers of encryption. One of the keys is Customer managed and the other key is Platform managed. ConfidentialVmEncryptedWithCustomerKey: An additional encryption type accepted for confidential VM. Disk is encrypted at rest with Customer managed key",
          args: [
            FigArg(
              name: "encryption-type",
              suggestions: [
                "ConfidentialVmEncryptedWithCustomerKey",
                "EncryptionAtRestWithCustomerKey",
                "EncryptionAtRestWithPlatformAndCustomerKeys",
                "EncryptionAtRestWithPlatformKey",
              ],
            ),
          ],
        ),
        FigOption(
          name: ["--federated-client-id"],
          description: "The federated client id used in cross tenant scenario",
          args: [
            FigArg(
              name: "federated-client-id",
            ),
          ],
        ),
        FigOption(
          name: ["--location", "-l"],
          description:
              "Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>",
          args: [
            FigArg(
              name: "location",
            ),
          ],
        ),
        FigOption(
          name: ["--mi-system-assigned"],
          description:
              "Provide this flag to use system assigned identity. Check out help for more examples",
          args: [
            FigArg(
              name: "mi-system-assigned",
              suggestions: ["false", "true"],
            ),
          ],
        ),
        FigOption(
          name: ["--mi-user-assigned"],
          description:
              "User Assigned Identity ids to be used for disk encryption set. Check out help for more examples",
          args: [
            FigArg(
              name: "mi-user-assigned",
            ),
          ],
        ),
        FigOption(
          name: ["--no-wait"],
          description: "Do not wait for the long-running operation to finish",
        ),
        FigOption(
          name: ["--source-vault"],
          description:
              "Name or ID of the KeyVault containing the key or secret",
          args: [
            FigArg(
              name: "source-vault",
            ),
          ],
        ),
        FigOption(
          name: ["--tags"],
          description:
              "Space-separated tags: key[=value] [key[=value] ...]. Use \"\" to clear existing tags",
          args: [
            FigArg(
              name: "tags",
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "delete",
      description: "Delete a disk encryption set",
      options: [
        FigOption(
          name: ["--disk-encryption-set-name", "--name", "-n"],
          description: "Name of disk encryption set",
          args: [
            FigArg(
              name: "disk-encryption-set-name",
            ),
          ],
        ),
        FigOption(
          name: ["--ids"],
          description:
              "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
          args: [
            FigArg(
              name: "ids",
            ),
          ],
        ),
        FigOption(
          name: ["--no-wait"],
          description: "Do not wait for the long-running operation to finish",
          args: [
            FigArg(
              name: "no-wait",
              suggestions: [
                "0",
                "1",
                "f",
                "false",
                "n",
                "no",
                "t",
                "true",
                "y",
                "yes",
              ],
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
        FigOption(
          name: ["--subscription"],
          description:
              "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
          args: [
            FigArg(
              name: "subscription",
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "identity",
      description: "Manage identities of a disk encryption set",
      subcommands: [
        FigSubcommand(
          name: "assign",
          description:
              "Add managed identities to an existing disk encryption set",
          options: [
            FigOption(
              name: ["--ids"],
              description:
                  "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
              args: [
                FigArg(
                  name: "ids",
                ),
              ],
            ),
            FigOption(
              name: ["--name", "-n"],
              description: "Name of disk encryption set",
              args: [
                FigArg(
                  name: "name",
                ),
              ],
            ),
            FigOption(
              name: ["--resource-group", "-g"],
              description:
                  "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
              args: [
                FigArg(
                  name: "resource-group",
                ),
              ],
            ),
            FigOption(
              name: ["--subscription"],
              description:
                  "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
              args: [
                FigArg(
                  name: "subscription",
                ),
              ],
            ),
            FigOption(
              name: ["--system-assigned"],
              description:
                  "Provide this flag to use system assigned identity for disk encryption set. Check out help for more examples",
              args: [
                FigArg(
                  name: "system-assigned",
                  suggestions: ["false", "true"],
                ),
              ],
            ),
            FigOption(
              name: ["--user-assigned"],
              description:
                  "User Assigned Identity ids to be used for disk encryption set. Check out help for more examples",
              args: [
                FigArg(
                  name: "user-assigned",
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: "remove",
          description:
              "Remove managed identities from an existing disk encryption set",
          options: [
            FigOption(
              name: ["--ids"],
              description:
                  "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
              args: [
                FigArg(
                  name: "ids",
                ),
              ],
            ),
            FigOption(
              name: ["--name", "-n"],
              description: "Name of disk encryption set",
              args: [
                FigArg(
                  name: "name",
                ),
              ],
            ),
            FigOption(
              name: ["--resource-group", "-g"],
              description:
                  "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
              args: [
                FigArg(
                  name: "resource-group",
                ),
              ],
            ),
            FigOption(
              name: ["--subscription"],
              description:
                  "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
              args: [
                FigArg(
                  name: "subscription",
                ),
              ],
            ),
            FigOption(
              name: ["--system-assigned"],
              description:
                  "Provide this flag to use system assigned identity for disk encryption set. Check out help for more examples",
              args: [
                FigArg(
                  name: "system-assigned",
                  suggestions: ["false", "true"],
                ),
              ],
            ),
            FigOption(
              name: ["--user-assigned"],
              description:
                  "User Assigned Identity ids to be used for disk encryption set. Check out help for more examples",
              args: [
                FigArg(
                  name: "user-assigned",
                ),
              ],
            ),
            FigOption(
              name: ["--yes", "-y"],
              description: "Do not prompt for confirmation",
            ),
          ],
        ),
        FigSubcommand(
          name: "show",
          description: "Display managed identities of a disk encryption set",
          options: [
            FigOption(
              name: ["--ids"],
              description:
                  "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
              args: [
                FigArg(
                  name: "ids",
                ),
              ],
            ),
            FigOption(
              name: ["--name", "-n"],
              description: "Name of disk encryption set",
              args: [
                FigArg(
                  name: "name",
                ),
              ],
            ),
            FigOption(
              name: ["--resource-group", "-g"],
              description:
                  "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
              args: [
                FigArg(
                  name: "resource-group",
                ),
              ],
            ),
            FigOption(
              name: ["--subscription"],
              description:
                  "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
              args: [
                FigArg(
                  name: "subscription",
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "list",
      description: "List disk encryption sets",
      options: [
        FigOption(
          name: ["--max-items"],
          description:
              "Total number of items to return in the command's output. If the total number of items available is more than the value specified, a token is provided in the command's output. To resume pagination, provide the token value in --next-token argument of a subsequent command",
          args: [
            FigArg(
              name: "max-items",
            ),
          ],
        ),
        FigOption(
          name: ["--next-token"],
          description:
              "Token to specify where to start paginating. This is the token value from a previously truncated response",
          args: [
            FigArg(
              name: "next-token",
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "list-associated-resources",
      description:
          "List all resources that are encrypted with this disk encryption set",
      options: [
        FigOption(
          name: ["--disk-encryption-set-name", "--name", "-n"],
          description: "Name of disk encryption set",
          isRequired: true,
          args: [
            FigArg(
              name: "disk-encryption-set-name",
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          isRequired: true,
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
        FigOption(
          name: ["--max-items"],
          description:
              "Total number of items to return in the command's output. If the total number of items available is more than the value specified, a token is provided in the command's output. To resume pagination, provide the token value in --next-token argument of a subsequent command",
          args: [
            FigArg(
              name: "max-items",
            ),
          ],
        ),
        FigOption(
          name: ["--next-token"],
          description:
              "Token to specify where to start paginating. This is the token value from a previously truncated response",
          args: [
            FigArg(
              name: "next-token",
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "show",
      description: "Get information about a disk encryption set",
      options: [
        FigOption(
          name: ["--disk-encryption-set-name", "--name", "-n"],
          description: "Name of disk encryption set",
          args: [
            FigArg(
              name: "disk-encryption-set-name",
            ),
          ],
        ),
        FigOption(
          name: ["--ids"],
          description:
              "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
          args: [
            FigArg(
              name: "ids",
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
        FigOption(
          name: ["--subscription"],
          description:
              "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
          args: [
            FigArg(
              name: "subscription",
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "update",
      description: "Update a disk encryption set",
      options: [
        FigOption(
          name: ["--add"],
          description:
              "Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>",
          args: [
            FigArg(
              name: "add",
            ),
          ],
        ),
        FigOption(
          name: ["--enable-auto-key-rotation", "--auto-rotation"],
          description: "Enable automatic rotation of keys",
          args: [
            FigArg(
              name: "enable-auto-key-rotation",
              suggestions: ["false", "true"],
            ),
          ],
        ),
        FigOption(
          name: ["--federated-client-id"],
          description: "The federated client id used in cross tenant scenario",
          args: [
            FigArg(
              name: "federated-client-id",
            ),
          ],
        ),
        FigOption(
          name: ["--force-string"],
          description:
              "When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON",
        ),
        FigOption(
          name: ["--ids"],
          description:
              "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
          args: [
            FigArg(
              name: "ids",
            ),
          ],
        ),
        FigOption(
          name: ["--key-url"],
          description: "URL pointing to a key or secret in KeyVault",
          args: [
            FigArg(
              name: "key-url",
            ),
          ],
        ),
        FigOption(
          name: ["--name", "-n"],
          description: "Name of disk encryption set",
          args: [
            FigArg(
              name: "name",
            ),
          ],
        ),
        FigOption(
          name: ["--remove"],
          description:
              "Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove",
          args: [
            FigArg(
              name: "remove",
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
        FigOption(
          name: ["--set"],
          description:
              "Update an object by specifying a property path and value to set. Example: --set property1.property2=",
          args: [
            FigArg(
              name: "set",
            ),
          ],
        ),
        FigOption(
          name: ["--source-vault"],
          description:
              "Name or ID of the KeyVault containing the key or secret",
          args: [
            FigArg(
              name: "source-vault",
            ),
          ],
        ),
        FigOption(
          name: ["--subscription"],
          description:
              "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
          args: [
            FigArg(
              name: "subscription",
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: "wait",
      description: "Place the CLI in a waiting state until a condition is met",
      options: [
        FigOption(
          name: ["--created"],
          description:
              "Wait until created with 'provisioningState' at 'Succeeded'",
        ),
        FigOption(
          name: ["--custom"],
          description:
              "Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!='InProgress', instanceView.statuses[?code=='PowerState/running']",
          args: [
            FigArg(
              name: "custom",
            ),
          ],
        ),
        FigOption(
          name: ["--deleted"],
          description: "Wait until deleted",
        ),
        FigOption(
          name: ["--disk-encryption-set-name", "--name", "-n"],
          description: "Name of disk encryption set",
          args: [
            FigArg(
              name: "disk-encryption-set-name",
            ),
          ],
        ),
        FigOption(
          name: ["--exists"],
          description: "Wait until the resource exists",
        ),
        FigOption(
          name: ["--ids"],
          description:
              "One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments",
          args: [
            FigArg(
              name: "ids",
            ),
          ],
        ),
        FigOption(
          name: ["--interval"],
          description: "Polling interval in seconds",
          args: [
            FigArg(
              name: "interval",
            ),
          ],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [
            FigArg(
              name: "resource-group",
            ),
          ],
        ),
        FigOption(
          name: ["--subscription"],
          description:
              "Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID",
          args: [
            FigArg(
              name: "subscription",
            ),
          ],
        ),
        FigOption(
          name: ["--timeout"],
          description: "Maximum wait in seconds",
          args: [
            FigArg(
              name: "timeout",
            ),
          ],
        ),
        FigOption(
          name: ["--updated"],
          description:
              "Wait until updated with provisioningState at 'Succeeded'",
        ),
      ],
    ),
  ],
);
