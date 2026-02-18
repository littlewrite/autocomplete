// Auto-generated from TypeScript source: customlocation.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `customlocation` CLI
final FigSpec customlocationSpec = FigSpec(
  name: 'customlocation',
  description: 'Commands to Create, Get, List and Delete CustomLocations',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a Custom Location',
      options: [

        Option(
          name: ['--cluster-extension-ids', '-c'],
          description: 'Space-seperated list of the cluster extension ids - input full id in the format /subscription/.../resourceGroups/.../Microsoft.Kubernetes/connectedClusters/.../providers/Microsoft.KubernetesConfiguration/extensions/',
          args: [
            Arg(
            name: 'cluster-extension-id'
          )
          ]
        ),
        Option(
          name: '--host-resource-id',
          description: 'Host resource ID of the connected cluster',
          args: [
            Arg(
            name: 'host-resource-i'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Customlocation',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Namespace for Custom Location. For namespace-scoped extensions, this should match namespace associated with the cluster extension operator',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Create CustomLocation resource with "SystemAssigned" or "None" type identity',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Admin Kubeconfig of Cluster. Needs to passed in as a file if the cluster is a non-AAD enabled Cluster',
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Customlocation',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Customlocation',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
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
      description: 'Command to list CustomLocations',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-enabled-resource-types',
      description: 'Get details of Enabled Resource Types for a CustomLocation',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Customlocation',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'patch',
      description: 'Patch a Custom Location',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Customlocation',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Create CustomLocation resource with "SystemAssigned" or "None" type identity',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--cluster-extension-ids', '-c'],
          description: 'Space-seperated list of the cluster extension ids - input full id in the format /subscription/.../resourceGroups/.../Microsoft.Kubernetes/connectedClusters/.../providers/Microsoft.KubernetesConfiguration/extensions/',
          args: [
            Arg(
            name: 'cluster-extension-id'
          )
          ]
        ),
        Option(
          name: ['--display-name', '-d'],
          description: 'Display Name of Custom Location',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: '--host-resource-id',
          description: 'Host resource ID of the connected cluster',
          args: [
            Arg(
            name: 'host-resource-i'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Namespace for Custom Location. For namespace-scoped extensions, this should match namespace associated with the cluster extension operator',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get details of a Customlocation',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Customlocation',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a Custom Location',
      options: [

        Option(
          name: ['--cluster-extension-ids', '-c'],
          description: 'Space-seperated list of the cluster extension ids - input full id in the format /subscription/.../resourceGroups/.../Microsoft.Kubernetes/connectedClusters/.../providers/Microsoft.KubernetesConfiguration/extensions/',
          args: [
            Arg(
            name: 'cluster-extension-id'
          )
          ]
        ),
        Option(
          name: '--host-resource-id',
          description: 'Host resource ID of the connected cluster',
          args: [
            Arg(
            name: 'host-resource-i'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Customlocation',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Namespace for Custom Location. For namespace-scoped extensions, this should match namespace associated with the cluster extension operator',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Create CustomLocation resource with "SystemAssigned" or "None" type identity',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of Custom Location resource',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    )
  ]
);
