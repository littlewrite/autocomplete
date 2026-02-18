// Auto-generated from TypeScript source: k8sconfiguration.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `k8sconfiguration` CLI
final FigSpec k8sconfigurationSpec = FigSpec(
  name: 'k8sconfiguration',
  description: 'Commands to manage Kubernetes configuration',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a Kubernetes configuration',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: '--cluster-type',
          description: 'Specify Arc clusters or AKS managed clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Kubernetes Configuration',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--repository-url', '-u'],
          description: 'Url of the source control repository',
          args: [
            Arg(
            name: 'repository-ur'
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
          name: '--scope',
          description: 'Specify scope of the operator to be \'namespace\' or \'cluster\'',
          args: [
            Arg(
            name: 'scope',
            suggestions: [

              FigSuggestion(name: 'cluster'),
              FigSuggestion(name: 'namespace')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-helm-operator',
          description: 'Enable support for Helm chart deployments',
          args: [
            Arg(
            name: 'enable-helm-operator',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--helm-operator-params',
          description: 'Chart values for the Helm Operator (if enabled)',
          args: [
            Arg(
            name: 'helm-operator-param'
          )
          ]
        ),
        Option(
          name: '--helm-operator-version',
          description: 'Chart version of the Helm Operator (if enabled)',
          args: [
            Arg(
            name: 'helm-operator-versio'
          )
          ]
        ),
        Option(
          name: '--https-key',
          description: 'Specify HTTPS token/password for private repository sync',
          args: [
            Arg(
            name: 'https-ke'
          )
          ]
        ),
        Option(
          name: '--https-user',
          description: 'Specify HTTPS username for private repository sync',
          args: [
            Arg(
            name: 'https-use'
          )
          ]
        ),
        Option(
          name: '--operator-instance-name',
          description: 'Instance name of the Operator',
          args: [
            Arg(
            name: 'operator-instance-nam'
          )
          ]
        ),
        Option(
          name: '--operator-namespace',
          description: 'Namespace in which to install the Operator',
          args: [
            Arg(
            name: 'operator-namespac'
          )
          ]
        ),
        Option(
          name: '--operator-params',
          description: 'Parameters for the Operator',
          args: [
            Arg(
            name: 'operator-param'
          )
          ]
        ),
        Option(
          name: '--operator-type',
          description: 'Type of the operator. Valid value is \'flux\'',
          args: [
            Arg(
            name: 'operator-typ'
          )
          ]
        ),
        Option(
          name: '--ssh-known-hosts',
          description: 'Specify Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances',
          args: [
            Arg(
            name: 'ssh-known-host'
          )
          ]
        ),
        Option(
          name: '--ssh-known-hosts-file',
          description: 'Specify filepath to known_hosts contents containing public SSH keys required to access private Git instances',
          args: [
            Arg(
            name: 'ssh-known-hosts-fil'
          )
          ]
        ),
        Option(
          name: '--ssh-private-key',
          description: 'Specify Base64-encoded private ssh key for private repository sync',
          args: [
            Arg(
            name: 'ssh-private-ke'
          )
          ]
        ),
        Option(
          name: '--ssh-private-key-file',
          description: 'Specify filepath to private ssh key for private repository sync',
          args: [
            Arg(
            name: 'ssh-private-key-fil'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Kubernetes configuration',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: '--cluster-type',
          description: 'Specify Arc clusters or AKS managed clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Kubernetes Configuration',
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
      description: 'List Kubernetes configurations',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: '--cluster-type',
          description: 'Specify Arc clusters or AKS managed clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters')
            ]
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
      name: 'show',
      description: 'Show details of a Kubernetes configuration',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: '--cluster-type',
          description: 'Specify Arc clusters or AKS managed clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Kubernetes Configuration',
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
      description: 'Update a Kubernetes configuration',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: '--cluster-type',
          description: 'Specify Arc clusters or AKS managed clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Kubernetes Configuration',
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
          name: '--enable-helm-operator',
          description: 'Enable support for Helm chart deployments',
          args: [
            Arg(
            name: 'enable-helm-operator',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--helm-operator-params',
          description: 'Chart values for the Helm Operator (if enabled)',
          args: [
            Arg(
            name: 'helm-operator-param'
          )
          ]
        ),
        Option(
          name: '--helm-operator-version',
          description: 'Chart version of the Helm Operator (if enabled)',
          args: [
            Arg(
            name: 'helm-operator-versio'
          )
          ]
        ),
        Option(
          name: '--operator-params',
          description: 'Parameters for the Operator',
          args: [
            Arg(
            name: 'operator-param'
          )
          ]
        ),
        Option(
          name: ['--repository-url', '-u'],
          description: 'Url of the source control repository',
          args: [
            Arg(
            name: 'repository-ur'
          )
          ]
        ),
        Option(
          name: '--ssh-known-hosts',
          description: 'Specify Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances',
          args: [
            Arg(
            name: 'ssh-known-host'
          )
          ]
        ),
        Option(
          name: '--ssh-known-hosts-file',
          description: 'Specify filepath to known_hosts contents containing public SSH keys required to access private Git instances',
          args: [
            Arg(
            name: 'ssh-known-hosts-fil'
          )
          ]
        )
      ]
    )
  ]
);
