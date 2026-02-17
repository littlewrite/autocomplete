// AI-generated from TypeScript source: kubectl.ts

import 'dart:convert';

import 'package:autocomplete/src/spec.dart';

// ---------------------------------------------------------------------------
// Internal scripts for this spec (not the script property on generators)
// ---------------------------------------------------------------------------

const List<String> scriptsTypes = [
  'kubectl',
  'api-resources',
  '-o',
  'name',
];

List<String> typeWithoutName(String type) {
  return [
    'kubectl',
    'get',
    type,
    '-o',
    'custom-columns=:.metadata.name',
  ];
}

// ---------------------------------------------------------------------------
// Shared post-process checks and postProcess
// ---------------------------------------------------------------------------

bool sharedPostProcessCheckConnectedToCluster(String out) {
  return out.contains('The connection to the server');
}

bool sharedPostProcessCheckGeneralError(String out) {
  return out.contains('error:');
}

List<FigSuggestion> sharedPostProcess(String out, [List<String>? tokens]) {
  if (sharedPostProcessCheckConnectedToCluster(out) ||
      sharedPostProcessCheckGeneralError(out)) {
    return [];
  }
  return out
      .split('\n')
      .map((item) => FigSuggestion(
            name: item,
            icon: 'fig://icon?type=kubernetes',
          ))
      .toList();
}

// ---------------------------------------------------------------------------
// Shared args (Record<string, Fig.Arg>)
// ---------------------------------------------------------------------------

final Map<String, FigArg> sharedArgs = {
  'resourcesArg': FigArg(
    name: 'Resource Type',
    generators: [
      FigGenerator(
        script: scriptsTypes,
        cache: const FigCache(
          strategy: 'stale-while-revalidate',
          ttl: 1000 * 60 * 60,
        ),
        postProcess: sharedPostProcess,
      ),
    ],
  ),
  'runningPodsArg': FigArg(
    name: 'Running Pods',
    generators: [
      FigGenerator(
        script: const [
          'kubectl',
          'get',
          'pods',
          '--field-selector=status.phase=Running',
          '-o',
          'name',
        ],
        postProcess: sharedPostProcess,
      ),
    ],
  ),
  'resourceSuggestionsFromResourceType': FigArg(
    name: 'Resource',
    generators: [
      FigGenerator(
        script: (List<String> context) {
          if (context.length < 2) return scriptsTypes;
          final resourceType = context[context.length - 2];
          return typeWithoutName(resourceType);
        },
        postProcess: sharedPostProcess,
        cache: const FigCache(
          strategy: 'stale-while-revalidate',
          ttl: 1000 * 60 * 60,
        ),
      ),
    ],
    isOptional: true,
  ),
  'listKubeConfContexts': FigArg(
    name: 'Context',
    generators: [
      FigGenerator(
        script: (List<String> context) {
          final index = context.indexOf('--kubeconfig');
          if (index != -1 && index + 1 < context.length) {
            return [
              'kubectl',
              'config',
              '--kubeconfig=${context[index + 1]}',
              'get-contexts',
              '-o',
              'name',
            ];
          }
          return ['kubectl', 'config', 'get-contexts', '-o', 'name'];
        },
        postProcess: sharedPostProcess,
      ),
    ],
  ),
  'listDeployments': FigArg(
    name: 'Deployments',
    generators: [
      FigGenerator(
        script: typeWithoutName('deployments'),
        postProcess: sharedPostProcess,
        cache: const FigCache(
          strategy: 'stale-while-revalidate',
          ttl: 1000 * 60 * 60,
        ),
      ),
    ],
  ),
  'listClusters': FigArg(
    name: 'Cluster',
    generators: [
      FigGenerator(
        script: (List<String> context) {
          final index = context.indexOf('--kubeconfig');
          if (index != -1 && index + 1 < context.length) {
            return [
              'kubectl',
              'config',
              '--kubeconfig=${context[index + 1]}',
              'get-clusters',
            ];
          }
          return ['kubectl', 'config', 'get-clusters'];
        },
        postProcess: (String out, [List<String>? tokens]) {
          if (sharedPostProcessCheckConnectedToCluster(out) ||
              sharedPostProcessCheckGeneralError(out)) {
            return [];
          }
          return out
              .split('\n')
              .where((line) => line != 'NAME')
              .map((line) => FigSuggestion(
                    name: line,
                    icon: 'fig://icon?type=kubernetes',
                  ))
              .toList();
        },
      ),
    ],
  ),
  'typeOrTypeSlashName': FigArg(
    name: 'TYPE | TYPE/NAME',
    generators: [
      FigGenerator(
        script: (List<String> context) {
          if (context.isEmpty) return scriptsTypes;
          final lastInput = context[context.length - 1];
          if (lastInput.contains('/')) {
            return typeWithoutName(
              lastInput.substring(0, lastInput.indexOf('/')),
            );
          }
          return scriptsTypes;
        },
        postProcess: sharedPostProcess,
        trigger: '/',
        getQueryTerm: '/',
        cache: const FigCache(
          strategy: 'stale-while-revalidate',
          ttl: 1000 * 60 * 60,
        ),
      ),
    ],
  ),
  'listNodes': FigArg(
    name: 'Node',
    generators: [
      FigGenerator(
        script: typeWithoutName('nodes'),
        postProcess: sharedPostProcess,
        cache: const FigCache(
          strategy: 'stale-while-revalidate',
          ttl: 1000 * 60 * 60,
        ),
      ),
    ],
  ),
  'listClusterRoles': FigArg(
    name: 'Cluster Role',
    generators: [
      FigGenerator(
        script: typeWithoutName('clusterroles'),
        postProcess: sharedPostProcess,
        cache: const FigCache(
          strategy: 'stale-while-revalidate',
          ttl: 1000 * 60 * 60,
        ),
      ),
    ],
  ),
  'listContainersFromPod': FigArg(
    name: 'Container',
    generators: [
      FigGenerator(
        script: (List<String> context) {
          final podIndex = context.indexWhere((i) =>
              i == 'pods' ||
              i.contains('pods/') ||
              i == 'pod' ||
              i.contains('pod/'));
          if (podIndex < 0 || podIndex >= context.length) {
            return ['kubectl', 'get', 'pods', '-o', 'json'];
          }
          final podSegment = context[podIndex];
          final podName = podSegment.contains('/')
              ? podSegment
              : (podIndex + 1 < context.length
                  ? '${context[podIndex]}/${context[podIndex + 1]}'
                  : podSegment);
          return ['kubectl', 'get', podName, '-o', 'json'];
        },
        postProcess: (String out, [List<String>? tokens]) {
          if (sharedPostProcessCheckConnectedToCluster(out) ||
              sharedPostProcessCheckGeneralError(out)) {
            return [];
          }
          try {
            final data = jsonDecode(out) as Map<String, dynamic>;
            final spec = data['spec'] as Map<String, dynamic>?;
            final containers = spec?['containers'] as List<dynamic>?;
            if (containers == null) return [];
            return containers
                .map((item) {
                  final m = item as Map<String, dynamic>;
                  return FigSuggestion(
                    name: m['name']?.toString(),
                    description: m['image']?.toString(),
                    icon: 'fig://icon?type=kubernetes',
                  );
                })
                .where((s) => s.name != null)
                .toList();
          } catch (_) {
            return [];
          }
        },
      ),
    ],
  ),
};

// ---------------------------------------------------------------------------
// Shared options (Record<string, Fig.Option>)
// ---------------------------------------------------------------------------

Map<String, FigOption> sharedOpts = {
  'filename': FigOption(
    name: ['-f', '--filename'],
    description:
        'Filename, directory, or URL to files identifying the resource',
    args: [
      FigArg(name: 'File', template: 'filepaths'),
    ],
  ),
  'kustomize': FigOption(
    name: ['-k', '--kustomize'],
    description:
        "Process the kustomization directory. This flag can't be used together with -f or -R",
    args: [
      FigArg(name: 'Kustomize Dir', template: 'folders'),
    ],
  ),
  'output': FigOption(
    name: ['-o', '--output'],
    description:
        'Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file',
    args: [
      FigArg(
        name: 'Output Format',
        suggestions: [
          'json',
          'yaml',
          'name',
          'go-template',
          'go-template-file',
          'template',
          'templatefile',
          'jsonpath',
          'jsonpath-file',
        ],
      ),
    ],
  ),
  'resourceVersion': FigOption(
    name: '--resource-version',
    requiresSeparator: true,
    description:
        'If non-empty, the annotation update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource',
    args: [FigArg()],
  ),
  'dryRun': FigOption(
    name: '--dry-run',
    requiresSeparator: true,
    description:
        'Must be "none", "server", or "client". If client strategy, only print the object that would be sent, without sending it. If server strategy, submit server-side request without persisting the resource',
    args: [
      FigArg(
        name: 'Strategy',
        suggestions: ['none', 'server', 'client'],
      ),
    ],
  ),
  'fieldSelector': FigOption(
    name: '--field-selector',
    requiresSeparator: true,
    description:
        "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type",
    args: [FigArg()],
  ),
  'local': FigOption(
    name: '--local',
    description:
        'If true, annotation will NOT contact api-server but run locally',
  ),
  'allResources': FigOption(
    name: '--all',
    description:
        'Select all resources, including uninitialized ones, in the namespace of the specified resource types',
  ),
  'allowMissingTemplateKeys': FigOption(
    name: '--allow-missing-template-keys',
    description:
        'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats',
  ),
  'recursive': FigOption(
    name: ['-R', '--recursive'],
    description:
        'Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory',
  ),
  'selector': FigOption(
    name: ['-l', '--selector'],
    description:
        "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)",
    args: [FigArg()],
  ),
  'template': FigOption(
    name: '--template',
    requiresSeparator: true,
    description:
        'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
    args: [FigArg()],
  ),
  'overwrite': FigOption(
    name: '--overwrite',
    description:
        'If true, allow annotations to be overwritten, otherwise reject annotation updates that overwrite existing annotations',
  ),
  'record': FigOption(
    name: '--record',
    description:
        'Record current kubectl command in the resource annotation. If set to false, do not record the command. If set to true, record the command. If not set, default to updating the existing annotation value only if one already exists',
  ),
};

/// List of all shared options (Object.values(sharedOpts)).
final List<FigOption> sharedOptsArray = sharedOpts.values.toList();

/// Completion spec for `kubectl` CLI
final FigSpec kubectlSpec =
    FigSpec(name: 'kubectl', description: '', subcommands: [
  Subcommand(
      name: 'alpha',
      description:
          'These commands correspond to alpha features that are not enabled in Kubernetes clusters by default',
      subcommands: [
        Subcommand(
            name: 'debug',
            description: 'Tools for debugging Kubernetes resources',
            options: [
              Option(
                  name: '--arguments-only',
                  description:
                      'If specified, everything after -- will be passed to the new container as Args instead of Command',
                  args: [Arg()]),
              Option(
                  name: '--attach',
                  description:
                      'If true, wait for the Pod to start running, and then attach to the Pod as if \'kubectl attach ...\' were called.  Default false, unless \'-i/--stdin\' is set, in which case the default is true',
                  args: [Arg()]),
              Option(
                  name: '--container',
                  description: 'Container name to use for debug container',
                  args: [Arg()]),
              Option(
                  name: '--env',
                  description: 'Environment variables to set in the container',
                  args: [Arg()]),
              Option(
                  name: '--image',
                  description: 'Container image to use for debug container',
                  args: [Arg()]),
              Option(
                  name: '--image-pull-policy',
                  description: 'The image pull policy for the container',
                  args: [Arg()]),
              Option(
                  name: '--quiet',
                  description: 'If true, suppress prompt messages',
                  args: [Arg()]),
              Option(
                  name: ['-i', '--stdin'],
                  description:
                      'Keep stdin open on the container(s) in the pod, even if nothing is attached',
                  args: [Arg()]),
              Option(
                  name: '--target',
                  description: 'Target processes in this container name',
                  args: [Arg()]),
              Option(
                  name: ['-t', '--tty'],
                  description: 'Allocated a TTY for each container in the pod',
                  args: [Arg()])
            ])
      ]),
  Subcommand(
      name: 'annotate',
      description: 'Update the annotations on one or more resources',
      args: [
        sharedArgs['resourcesArg'],
        sharedArgs['resourceSuggestionsFromResourceType'],
        Arg(name: 'KEY=VAL', isVariadic: true)
      ],
      options: sharedOptsArray),
  Subcommand(
      name: 'api-resources',
      description: 'Print the supported API resources on the server',
      options: [
        sharedOpts['output']!,
        Option(
            name: '--api-group',
            description: 'Limit to resources in the specified API group',
            args: [Arg()]),
        Option(
            name: '--cached',
            description: 'Use the cached list of resources if available'),
        Option(
            name: '--namespaced',
            description:
                'If false, non-namespaced resources will be returned, otherwise returning namespaced resources by default'),
        Option(
            name: '--no-headers',
            description:
                'When using the default or custom-column output format, don\'t print headers (default print headers)'),
        Option(
            name: '--sort-by',
            description:
                'If non-empty, sort nodes list using specified field. The field can be either \'name\' or \'kind\'',
            args: [Arg()]),
        Option(
            name: '--verbs',
            description: 'Limit to resources that support the specified verbs',
            args: [Arg()])
      ]),
  Subcommand(
      name: 'api-versions',
      description:
          'Print the supported API versions on the server, in the form of "group/version"'),
  Subcommand(
      name: 'apply',
      description:
          'Apply a configuration to a resource by filename or stdin. The resource name must be specified. This resource will be created if it doesn\'t exist yet. To use \'apply\', always create the resource initially with either \'apply\' or \'create --save-config\'',
      // TS_UNCONVERTED_START (options)
// sharedOptsArray.concat([
//         {
//           name: "--cascade",
//           description:
//             "If true, cascade the deletion of the resources managed by this resource (e.g. Pods created by a ReplicationController). Default true",
//         },
//         {
//           name: "--field-manager",
//           requiresSeparator: true,
//           description: "Name of the manager used to track field ownership",
//           args: {},
//         },
//         {
//           name: "--force",
//           description:
//             "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate deletion of some resources may result in inconsistency or data loss and requires confirmation",
//         },
//         {
//           name: "--force-conflicts",
//           description:
//             "If true, server-side apply will force the changes against conflicts",
//         },
//         {
//           name: "--grace-period",
//           requiresSeparator: true,
//           description:
//             "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to 1 for immediate shutdown. Can only be set to 0 when --force is true (force deletion)",
//           args: {
//             name: "INT (seconds)",
//           },
//         },
//         {
//           name: "--openapi-patch",
//           description:
//             "If true, use openapi to calculate diff when the openapi presents and the resource can be found in the openapi spec. Otherwise, fall back to use baked-in types",
//         },
//         {
//           name: "--overwrite",
//           description:
//             "Automatically resolve conflicts between the modified and live configuration by using values from the modified configuration",
//         },
//         {
//           name: "--prune",
//           description:
//             "Automatically delete resource objects, including the uninitialized ones, that do not appear in the configs and are created by either apply or create --save-config. Should be used with either -l or --all",
//         },
//         {
//           name: "--prune-whitelist",
//           requiresSeparator: true,
//           description:
//             "Overwrite the default whitelist with <group/version/kind> for --prune",
//           args: {
//             name: "group/version/kind",
//           },
//         },
//         {
//           name: "--server-side",
//           description:
//             "If true, apply runs in the server instead of the client",
//         },
//         {
//           name: "--timeout",
//           requiresSeparator: true,
//           description:
//             "The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object",
//           args: {
//             name: "INT (Seconds)",
//           },
//         },
//         {
//           name: "--validate",
//           description:
//             "If true, use a schema to validate the input before sending it",
//         },
//         {
//           name: "--wait",
//           description:
//             "If true, wait for resources to be gone before returning. This waits for finalizers",
//         },
//       ])
// TS_UNCONVERTED_END
      options: null,
      subcommands: [
        Subcommand(
            name: 'edit-last-applied',
            description:
                'Edit the latest last-applied-configuration annotations of resources from the default editor',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType']
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['record']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              Option(
                  name: '--windows-line-endings',
                  description:
                      'Defaults to the line ending native to your platform'),
              Option(
                  name: '--field-manager',
                  description:
                      'Name of the manager used to track field ownership',
                  args: [Arg()]),
              Option(
                  name: '--show-manged-fields',
                  description:
                      'If true, keep the managedFields when printing objects in JSON or YAML format')
            ]),
        Subcommand(
            name: 'set-last-applied',
            description:
                'Set the latest last-applied-configuration annotations by setting it to match the contents of a file. This results in the last-applied-configuration being updated as though \'kubectl apply -f<file> \' was run, without updating any other parts of the object',
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--show-manged-fields',
                  description:
                      'If true, keep the managedFields when printing objects in JSON or YAML format'),
              Option(
                  name: '--create-annotation',
                  description:
                      'Will create \'last-applied-configuration\' annotations if current objects doesn\'t have one')
            ]),
        Subcommand(
            name: 'view-last-applied',
            description:
                'View the latest last-applied-configuration annotations by type/name or file',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType']
            ],
            options: [
              sharedOpts['allResources']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['selector']!
            ])
      ]),
  Subcommand(
      name: 'attach',
      description:
          'Attach to a process that is already running inside an existing container',
      args: sharedArgs['runningPodsArg'],
      options: [
        Option(
            name: ['-c', '--container'],
            description:
                'Container name. If omitted, the first container in the pod will be chosen',
            args: sharedArgs['listContainersFromPod']),
        Option(
            name: '--pod-running-timeout',
            description:
                'The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running',
            args: [Arg()]),
        Option(
            name: ['-i', '--stdin'],
            description: 'Pass stdin to the container'),
        Option(name: ['-t', '--tty'], description: 'Stdin is a TTY')
      ]),
  Subcommand(name: 'auth', description: 'Inspect authorization', subcommands: [
    Subcommand(
        name: 'can-i',
        description: 'Check whether an action is allowed',
        args: [
          Arg(name: 'VERB', suggestions: [
            FigSuggestion(name: '*'),
            FigSuggestion(name: 'get'),
            FigSuggestion(name: 'list'),
            FigSuggestion(name: 'watch'),
            FigSuggestion(name: 'delete'),
            FigSuggestion(name: 'create'),
            FigSuggestion(name: 'update'),
            FigSuggestion(name: 'patch')
          ]),
          sharedArgs['typeOrTypeSlashName'],
          sharedArgs['resourceSuggestionsFromResourceType']
        ],
        options: [
          Option(
              name: ['-A', '--all-namespaces'],
              description:
                  'If true, check the specified action in all namespaces'),
          Option(
              name: '--list',
              description: 'If true, prints all allowed actions'),
          Option(
              name: '--no-headers',
              description: 'If true, prints allowed actions without headers'),
          Option(
              name: ['-q', '--quiet'],
              description:
                  'If true, suppress output and just return the exit code'),
          Option(
              name: '--subresource',
              description: 'SubResource such as pod/log or deployment/scale',
              args: [Arg()])
        ]),
    Subcommand(
        name: 'reconcile',
        description:
            'Reconciles rules for RBAC Role, RoleBinding, ClusterRole, and ClusterRole binding objects',
        options: [
          sharedOpts['allowMissingTemplateKeys']!,
          sharedOpts['dryRun']!,
          sharedOpts['filename']!,
          sharedOpts['kustomize']!,
          sharedOpts['output']!,
          sharedOpts['recursive']!,
          sharedOpts['template']!,
          Option(
              name: '--remove-extra-permissions',
              description: 'If true, removes extra permissions added to roles'),
          Option(
              name: '--remove-extra-subjects',
              description:
                  'If true, removes extra subjects added to rolebindings'),
          Option(
              name: '--show-managed-fields',
              description:
                  'If true, keep the managedFields when printing objects in JSON or YAML format')
        ])
  ]),
  Subcommand(
      name: 'autoscale',
      description:
          'Creates an autoscaler that automatically chooses and sets the number of pods that run in a kubernetes cluster',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['output']!,
        sharedOpts['record']!,
        sharedOpts['recursive']!,
        sharedOpts['dryRun']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['template']!,
        Option(
            name: '--cpu-percent',
            description:
                'The target average CPU utilization (represented as a percent of requested CPU) over all the pods. If it\'s not specified or negative, a default autoscaling policy will be used',
            args: [Arg(name: 'INT (Percent)')]),
        Option(
            name: '--generator',
            description:
                'The name of the API generator to use. Currently there is only 1 generator',
            args: [Arg()]),
        Option(
            name: '--max',
            description:
                'The upper limit for the number of pods that can be set by the autoscaler. Required',
            args: [Arg(name: 'INT')]),
        Option(
            name: '--min',
            description:
                'The lower limit for the number of pods that can be set by the autoscaler. If it\'s not specified or negative, the server will apply a default value',
            args: [Arg(name: 'INT')]),
        Option(
            name: '--name',
            description:
                'The name for the newly created object. If not specified, the name of the input resource will be used',
            args: [Arg()]),
        Option(
            name: '--save-config',
            description:
                'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future')
      ]),
  Subcommand(
      name: 'certificate',
      description: 'Modify certificate resources',
      subcommands: [
        Subcommand(
            name: 'approve',
            description: 'Approve a certificate signing request',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              Option(
                  name: '--force',
                  description: 'Update the CSR even if it is already approved')
            ]),
        Subcommand(
            name: 'deny',
            description: 'Deny a certificate signing request',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              Option(
                  name: '--force',
                  description: 'Update the CSR even if it is already approved')
            ])
      ]),
  Subcommand(
      name: 'cluster-info',
      description:
          'Display addresses of the master and services with label kubernetes.io/cluster-service=true To further debug and diagnose cluster problems, use \'kubectl cluster-info dump\'',
      subcommands: [
        Subcommand(
            name: 'dump',
            description:
                'Dumps cluster info out suitable for debugging and diagnosing cluster problems.  By default, dumps everything to stdout. You can optionally specify a directory with --output-directory.  If you specify a directory, kubernetes will build a set of files in that directory.  By default only dumps things in the \'kube-system\' namespace, but you can switch to a different namespace with the --namespaces flag, or specify --all-namespaces to dump all namespaces',
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: ['-A', '--all-namespaces'],
                  description:
                      'If true, dump all namespaces.  If true, --namespaces is ignored'),
              Option(
                  name: '--namespaces',
                  description: 'A comma separated list of namespaces to dump',
                  args: [Arg(name: 'Namespaces (Comma separated)')]),
              Option(
                  name: '--output-directory',
                  description:
                      'Where to output the files.  If empty or \'-\' uses stdout, otherwise creates a directory hierarchy in that directory',
                  args: [Arg()]),
              Option(
                  name: '--pod-running-timeout',
                  description:
                      'The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running',
                  args: [Arg(name: 'Length of Time')]),
              Option(
                  name: '--show-managed-fields',
                  description:
                      'If true, keep the managedFields when printing objects in JSON or YAML format')
            ])
      ]),
  Subcommand(
      name: 'completion',
      description:
          'Output shell completion code for the specified shell (bash or zsh). The shell code must be evaluated to provide interactive completion of kubectl commands.  This can be done by sourcing it from the .bash_profile'),
  Subcommand(
      name: 'config',
      description:
          'Modify kubeconfig files using subcommands like "kubectl config set current-context my-context"',
      options: [
        Option(
            name: '--kubeconfig',
            args: [Arg(name: 'path', template: 'filepaths')])
      ],
      subcommands: [
        Subcommand(
            name: 'current-context',
            description: 'Displays the current-context'),
        Subcommand(
            name: 'delete-cluster',
            description: 'Delete the specified cluster from the kubeconfig',
            args: sharedArgs['listClusters']),
        Subcommand(
            name: 'delete-context',
            description: 'Delete the specified context from the kubeconfig',
            args: sharedArgs['listKubeConfContexts']),
        Subcommand(
            name: 'get-clusters',
            description: 'Display clusters defined in the kubeconfig'),
        Subcommand(
            name: 'get-contexts',
            description:
                'Displays one or many contexts from the kubeconfig file',
            args: [
              Arg(isOptional: true)
            ],
            options: [
              sharedOpts['output']!,
              Option(
                  name: '--no-headers',
                  description:
                      'When using the default or custom-column output format, don\'t print headers (default print headers)',
                  args: [Arg()])
            ]),
        Subcommand(
            name: 'get-users',
            description: 'Display users defined in the kubeconfig'),
        Subcommand(
            name: 'rename-context',
            description: 'Renames a context from the kubeconfig file',
            args: [
              sharedArgs['listKubeConfContexts'],
              Arg(name: 'New Context Name')
            ]),
        Subcommand(
            name: 'set',
            description: 'Sets an individual value in a kubeconfig file',
            args: [
              Arg(name: 'PROPERTY_NAME'),
              Arg(name: 'PROPERTY_VALUE')
            ],
            options: [
              Option(
                  name: '--set-raw-bytes',
                  description:
                      'When writing a []byte PROPERTY_VALUE, write the given string directly without base64 decoding',
                  args: [Arg()])
            ]),
        Subcommand(
            name: 'set-cluster',
            description: 'Sets a cluster entry in kubeconfig',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              Option(
                  name: '--embed-certs',
                  description:
                      'Embed-certs for the cluster entry in kubeconfig'),
              Option(name: '--server', args: [Arg(name: 'Server')]),
              Option(
                  name: '--certificate-authority',
                  description: 'Path to certificate authority',
                  args: [
                    Arg(name: 'Certificate Authority', template: 'filepaths')
                  ]),
              Option(name: '--insecure-skip-tls-verify', args: [
                Arg(suggestions: [
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'false')
                ])
              ]),
              Option(
                  name: '--tls-server-name',
                  args: [Arg(name: 'TLS Server Name')])
            ]),
        Subcommand(
            name: 'set-context',
            description: 'Sets a context entry in kubeconfig',
            args: sharedArgs['listKubeConfContexts'],
            options: [
              Option(
                  name: '--current', description: 'Modify the current context'),
              Option(name: '--cluster', args: [Arg(name: 'cluster_nickname')]),
              Option(name: '--user', args: [Arg(name: 'user_nickname')]),
              Option(name: '--namespace', args: [Arg(name: 'namespace')])
            ]),
        Subcommand(
            name: 'set-credentials',
            description: 'Sets a user entry in kubeconfig',
            args: sharedArgs['listClusters'],
            options: [
              Option(
                  name: '--client-certificate',
                  description: 'Client cert for user entry',
                  args: [Arg(template: 'filepaths')]),
              Option(
                  name: '--client-key',
                  description: 'Client key for user entry',
                  args: [Arg(template: 'filepaths')]),
              Option(
                  name: '--token',
                  description: 'Bearer Token for user entry',
                  args: [Arg(name: 'Bearer Token')]),
              Option(
                  name: '--username',
                  description: 'Username for basic authentication',
                  args: [Arg(name: 'Username')]),
              Option(
                  name: '--password',
                  description: 'Password for basic authentication',
                  args: [Arg(name: 'Password')]),
              Option(
                  name: '--auth-provider',
                  description: 'Auth provider for the user entry in kubeconfig',
                  args: [Arg(name: 'Auth Provider')]),
              Option(
                  name: '--auth-provider-arg',
                  description: '\'key=value\' arguments for the auth provider',
                  args: [Arg(name: 'key=value')]),
              Option(
                  name: '--embed-certs',
                  description:
                      'Embed client cert/key for the user entry in kubeconfig'),
              Option(
                  name: '--exec-api-version',
                  description:
                      'API version of the exec credential plugin for the user entry in kubeconfig',
                  args: [Arg(name: 'API Version')]),
              Option(
                  name: '--exec-arg',
                  description:
                      'New arguments for the exec credential plugin command for the user entry in kubeconfig',
                  args: [Arg(name: 'Exec Arg')]),
              Option(
                  name: '--exec-command',
                  description:
                      'Command for the exec credential plugin for the user entry in kubeconfig',
                  args: [Arg(name: 'Exec Command')]),
              Option(
                  name: '--exec-env',
                  description:
                      '\'key=value\' environment values for the exec credential plugin',
                  args: [Arg(name: 'key=value')])
            ]),
        Subcommand(
            name: 'unset',
            description: 'Unsets an individual value in a kubeconfig file',
            args: [Arg(name: 'PROPERTY_NAME')]),
        Subcommand(
            name: 'use-context',
            description: 'Sets the current-context in a kubeconfig file',
            args: sharedArgs['listKubeConfContexts']),
        Subcommand(
            name: 'view',
            description:
                'Display merged kubeconfig settings or a specified kubeconfig file',
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--flatten',
                  description:
                      'Flatten the resulting kubeconfig file into self-contained output (useful for creating portable kubeconfig files)'),
              Option(
                  name: '--merge',
                  description: 'Merge the full hierarchy of kubeconfig files'),
              Option(
                  name: '--minify',
                  description:
                      'Remove all information not used by current-context from the output'),
              Option(name: '--raw', description: 'Display raw byte data'),
              Option(
                  name: '--show-managed-fields',
                  description:
                      'If true, keep the managedFields when printing objects in JSON or YAML format')
            ])
      ]),
  Subcommand(
      name: 'convert',
      description:
          'Convert config files between different API versions. Both YAML and JSON formats are accepted',
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['template']!,
        Option(
            name: '--local',
            description:
                'If true, convert will NOT try to contact api-server but run locally'),
        Option(
            name: '--output-version',
            description:
                'Output the formatted object with the given group version (for ex: \'extensions/v1beta1\')',
            args: [Arg()]),
        Option(
            name: '--validate',
            description:
                'If true, use a schema to validate the input before sending it')
      ]),
  Subcommand(
      name: 'cordon',
      description: 'Mark node as unschedulable',
      args: sharedArgs['listNodes'],
      options: [sharedOpts['dryRun']!, sharedOpts['selector']!]),
  Subcommand(
      name: 'cp',
      description: 'Copy files and directories to and from containers',
      args: [
        Arg()
      ],
      options: [
        Option(
            name: ['-c', '--container'],
            description:
                'Container name. If omitted, the first container in the pod will be chosen',
            args: [Arg()]),
        Option(
            name: '--no-preserve',
            description:
                'The copied file/directory\'s ownership and permissions will not be preserved in the container',
            args: [Arg()])
      ]),
  Subcommand(
      name: 'create',
      description: 'Create a resource from a file or from stdin',
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['dryRun']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['selector']!,
        sharedOpts['template']!,
        sharedOpts['record']!,
        Option(
            name: '--edit',
            description: 'Edit the API resource before creating'),
        Option(
            name: '--raw',
            description:
                'Raw URI to POST to the server.  Uses the transport specified by the kubeconfig file'),
        Option(
            name: '--save-config',
            description:
                'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
        Option(
            name: '--validate',
            description:
                'If true, use a schema to validate the input before sending it'),
        Option(
            name: '--windows-line-endings',
            description:
                'Only relevant if --edit=true. Defaults to the line ending native to your platform')
      ],
      subcommands: [
        Subcommand(
            name: 'clusterrole',
            description: 'Create a ClusterRole',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--aggregation-rule',
                  description:
                      'An aggregation label selector for combining ClusterRoles',
                  args: [Arg()]),
              Option(
                  name: '--non-resource-url',
                  description: 'A partial url that user should have access to',
                  args: [Arg()]),
              Option(
                  name: '--resource',
                  description: 'Resource that the rule applies to',
                  args: sharedArgs['resourcesArg']),
              Option(
                  name: '--resource-name',
                  description:
                      'Resource in the white list that the rule applies to, repeat this flag for multiple items',
                  args: [Arg()]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it'),
              Option(
                  name: '--verb',
                  description:
                      'Verb that applies to the resources contained in the rule',
                  args: [
                    Arg(name: 'VERB', suggestions: [
                      FigSuggestion(name: '*'),
                      FigSuggestion(name: 'get'),
                      FigSuggestion(name: 'list'),
                      FigSuggestion(name: 'watch'),
                      FigSuggestion(name: 'delete'),
                      FigSuggestion(name: 'create'),
                      FigSuggestion(name: 'update'),
                      FigSuggestion(name: 'patch')
                    ])
                  ])
            ]),
        Subcommand(
            name: 'clusterrolebinding',
            description:
                'Create a ClusterRoleBinding for a particular ClusterRole',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--clusterrole',
                  description:
                      'ClusterRole this ClusterRoleBinding should reference',
                  args: sharedArgs['listClusterRoles']),
              Option(name: '--user', args: [Arg(name: 'User Name')]),
              Option(
                  name: '--group',
                  description: 'Groups to bind to the clusterrole',
                  args: [Arg(name: 'Group Name')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--serviceaccount',
                  description:
                      'Service accounts to bind to the clusterrole, in the format <namespace>:<name>',
                  args: [Arg(name: '<namespace>:<name>')]),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'configmap',
            description:
                'Create a configmap based on a file, directory, or specified literal value',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--append-hash',
                  description: 'Append a hash of the configmap to its name'),
              Option(
                  name: '--from-env-file',
                  description:
                      'Specify the path to a file to read lines of key=val pairs to create a configmap (i.e. a Docker .env file)',
                  args: [Arg(template: 'filepaths')]),
              Option(
                  name: '--from-file',
                  description:
                      'Key file can be specified using its file path, in which case file basename will be used as configmap key, or optionally with a key and file path, in which case the given key will be used.  Specifying a directory will iterate each named file in the directory whose basename is a valid configmap key',
                  args: [Arg(template: 'filepaths')]),
              Option(
                  name: '--from-literal',
                  description:
                      'Specify a key and literal value to insert in configmap (i.e. mykey=somevalue)',
                  args: [Arg(name: 'key=value')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'cronjob',
            description: 'Create a cronjob with the specified name',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--image',
                  description: 'Image name to run',
                  args: [Arg(name: 'Image')]),
              Option(
                  name: '--restart',
                  description:
                      'Job\'s restart policy. supported values: OnFailure, Never',
                  args: [
                    Arg(suggestions: [
                      FigSuggestion(name: 'OnFailure'),
                      FigSuggestion(name: 'Never')
                    ])
                  ]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--schedule',
                  description:
                      'A schedule in the Cron format the job should be run with',
                  args: [Arg(name: 'Cron')]),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'deployment',
            description: 'Create a deployment with the specified name',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--image',
                  description: 'Image name to run',
                  args: [Arg(name: 'Image')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'ingress',
            description: 'Create an ingress with the specified name',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--annotation',
                  description:
                      'Annotation to insert in the ingress object, in the format annotation=value',
                  args: [Arg(name: 'annotation=value')]),
              Option(
                  name: '--class',
                  description: 'Ingress Class to be used',
                  args: [Arg()]),
              Option(
                  name: '--default-backend',
                  description:
                      'Default service for backend, in format of svcname:port',
                  args: [Arg(name: 'svcname:port')]),
              Option(
                  name: '--field-manager',
                  description:
                      'Name of the manager used to track field ownership',
                  args: [Arg()]),
              Option(
                  name: '--rule',
                  description:
                      'Rule in format host/path=service:port[,tls=secretname]. Paths containing the leading character \'*\' are considered pathType=Prefix. tls argument is optional',
                  args: [Arg(name: 'host/path=service:port[,tls=secretname]')]),
              Option(
                  name: '--show-managed-fields',
                  description:
                      'If true, keep the managedFields when printing objects in JSON or YAML format'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'job',
            description: 'Create a job with the specified name',
            args: [
              Arg(name: 'NAME'),
              Arg(name: 'COMMAND')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--from',
                  description:
                      'The name of the resource to create a Job from (only cronjob is supported)',
                  args: [
                    Arg(
                        name: 'Cronjob',
                        generators: Generator(
                          // TS_UNCONVERTED_START (script)
// () => scripts.typeWithoutName("cronjob")
// TS_UNCONVERTED_END
                          script: null,
                          // postProcess: (out
                        ))
                  ]),
              Option(
                  name: '--image',
                  description: 'Image name to run',
                  args: [Arg(name: 'Image')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'namespace',
            description: 'Create a namespace with the specified name',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'poddisruptionbudget',
            description:
                'Create a pod disruption budget with the specified name, selector, and desired minimum available pods',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              sharedOpts['selector']!,
              Option(
                  name: '--max-unavailable',
                  description:
                      'The maximum number or percentage of unavailable pods this budget requires',
                  args: [Arg(name: 'INT (Percent)')]),
              Option(
                  name: '--min-available',
                  description:
                      'The minimum number or percentage of available pods this budget requires',
                  args: [Arg(name: 'INT (Percent)')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'priorityclass',
            description:
                'Create a priorityclass with the specified name, value, globalDefault and description',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--description',
                  description:
                      'Description is an arbitrary string that usually provides guidelines on when this priority class should be used',
                  args: [Arg(name: 'Description')]),
              Option(
                  name: '--global-default',
                  description:
                      'Global-default specifies whether this PriorityClass should be considered as the default priority'),
              Option(
                  name: '--preemption-policy',
                  description:
                      'Preemption-policy is the policy for preempting pods with lower priority',
                  args: [Arg(name: 'Preemption Policy')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it'),
              Option(
                  name: '--value',
                  description: 'The value of this priority class',
                  args: [Arg(name: 'INT')])
            ]),
        Subcommand(
            name: 'quota',
            description:
                'Create a resourcequota with the specified name, hard limits and optional scopes',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--field-manager',
                  description:
                      'Name of the manager used to track field ownership',
                  args: [Arg()]),
              Option(
                  name: '--hard',
                  description:
                      'A comma-delimited set of resource=quantity pairs that define a hard limit',
                  args: [Arg(name: 'key=value (Comma delimited)')]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--scopes',
                  description:
                      'A comma-delimited set of quota scopes that must all match each object tracked by the quota',
                  args: [Arg(name: 'Scopes (Comma delimited)')]),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'role',
            description: 'Create a role with single rule',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--resource',
                  description: 'Resource that the rule applies to',
                  args: sharedArgs['resourcesArg']),
              Option(
                  name: '--resource-name',
                  description:
                      'Resource in the white list that the rule applies to, repeat this flag for multiple items',
                  args: [Arg()]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it'),
              Option(
                  name: '--verb',
                  description:
                      'Verb that applies to the resources contained in the rule',
                  args: [
                    Arg(name: 'VERB', suggestions: [
                      FigSuggestion(name: 'get'),
                      FigSuggestion(name: 'list'),
                      FigSuggestion(name: 'watch'),
                      FigSuggestion(name: 'delete')
                    ])
                  ])
            ]),
        Subcommand(
            name: 'rolebinding',
            description:
                'Create a RoleBinding for a particular Role or ClusterRole',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--clusterrole',
                  description: 'ClusterRole this RoleBinding should reference',
                  args: sharedArgs['listClusterRoles']),
              Option(
                  name: '--group',
                  description: 'Groups to bind to the role',
                  args: [Arg()]),
              Option(
                  name: '--role',
                  description: 'Role this RoleBinding should reference',
                  args: [
                    Arg(
                        name: 'Role',
                        generators: Generator(
                            // TS_UNCONVERTED_START (script)
// () => scripts.typeWithoutName("roles")
// TS_UNCONVERTED_END
                            script: null,
                            postProcess: sharedPostProcess))
                  ]),
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--serviceaccount',
                  description:
                      'Service accounts to bind to the role, in the format <namespace>:<name>',
                  args: [Arg(name: '<namespace>:<name>')]),
              Option(name: '--username', args: [Arg(name: 'Username')]),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ]),
        Subcommand(
            name: 'secret',
            description: 'Create a secret using specified subcommand',
            subcommands: [
              Subcommand(
                  name: 'docker-registry',
                  args: [Arg(name: 'NAME')],
                  description:
                      'Create a new secret for use with Docker registries',
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--append-hash',
                        description: 'Append a hash of the secret to its name'),
                    Option(
                        name: '--docker-email',
                        description: 'Email for Docker registry',
                        args: [Arg(name: 'Email')]),
                    Option(
                        name: '--docker-password',
                        description:
                            'Password for Docker registry authentication',
                        args: [Arg(name: 'Password')]),
                    Option(
                        name: '--docker-server',
                        description: 'Server location for Docker registry',
                        args: [Arg(name: 'Server')]),
                    Option(
                        name: '--docker-username',
                        description:
                            'Username for Docker registry authentication',
                        args: [Arg(name: 'Username')]),
                    Option(
                        name: '--from-file',
                        description:
                            'Key files can be specified using their file path, in which case a default name will be given to them, or optionally with a name and file path, in which case the given name will be used.  Specifying a directory will iterate each named file in the directory that is a valid secret key',
                        args: [Arg(template: 'filepaths')]),
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ]),
              Subcommand(
                  name: 'generic',
                  args: [Arg(name: 'NAME')],
                  description:
                      'Create a secret based on a file, directory, or specified literal value',
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--append-hash',
                        description: 'Append a hash of the secret to its name'),
                    Option(
                        name: '--from-env-file',
                        description:
                            'Specify the path to a file to read lines of key=val pairs to create a secret (i.e. a Docker .env file)',
                        args: [Arg(template: 'filepaths')]),
                    Option(
                        name: '--from-file',
                        description:
                            'Key files can be specified using their file path, in which case a default name will be given to them, or optionally with a name and file path, in which case the given name will be used.  Specifying a directory will iterate each named file in the directory that is a valid secret key',
                        args: [Arg(template: 'filepaths')]),
                    Option(
                        name: '--from-literal',
                        description:
                            'Specify a key and literal value to insert in secret (i.e. mykey=somevalue)',
                        args: [Arg(name: 'key=value')]),
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--type',
                        description: 'The type of secret to create',
                        args: [Arg()]),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ]),
              Subcommand(
                  name: 'tls',
                  description:
                      'Create a TLS secret from the given public/private key pair',
                  args: [
                    Arg(name: 'NAME')
                  ],
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--append-hash',
                        description: 'Append a hash of the secret to its name'),
                    Option(
                        name: '--cert',
                        description:
                            'Path to PEM encoded public key certificate',
                        args: [Arg(template: 'filepaths')]),
                    Option(
                        name: '--key',
                        description:
                            'Path to private key associated with given certificate',
                        args: [Arg(template: 'filepaths')]),
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ])
            ]),
        Subcommand(
            name: 'service',
            description: 'Create a service using specified subcommand',
            subcommands: [
              Subcommand(
                  name: 'clusterip',
                  description:
                      'Create a ClusterIP service with the specified name',
                  args: [
                    Arg(name: 'NAME')
                  ],
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--clusterip',
                        description:
                            'Assign your own ClusterIP or set to \'None\' for a \'headless\' service (no loadbalancing)',
                        args: [
                          Arg(
                              name: 'ClusterIP',
                              suggestions: [FigSuggestion(name: 'None')])
                        ]),
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--tcp',
                        description:
                            'Port pairs can be specified as \'<port>:<targetPort>\'',
                        args: [Arg(name: '<port>:<targetPort>')]),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ]),
              Subcommand(
                  name: 'externalname',
                  description:
                      'Create an ExternalName service with the specified name',
                  args: [
                    Arg(name: 'NAME')
                  ],
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--external-name',
                        description: 'External name of service',
                        args: [Arg(name: 'External name')]),
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--tcp',
                        description:
                            'Port pairs can be specified as \'<port>:<targetPort>\'',
                        args: [Arg(name: '<port>:<targetPort>')]),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ]),
              Subcommand(
                  name: 'loadbalancer',
                  description:
                      'Create a LoadBalancer service with the specified name',
                  args: [
                    Arg(name: 'NAME')
                  ],
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--tcp',
                        description:
                            'Port pairs can be specified as \'<port>:<targetPort>\'',
                        args: [Arg(name: '<port>:<targetPort>')]),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ]),
              Subcommand(
                  name: 'nodeport',
                  description:
                      'Create a NodePort service with the specified name',
                  args: [
                    Arg(name: 'NAME')
                  ],
                  options: [
                    sharedOpts['allowMissingTemplateKeys']!,
                    sharedOpts['dryRun']!,
                    sharedOpts['output']!,
                    sharedOpts['template']!,
                    Option(
                        name: '--node-port',
                        description:
                            'Port used to expose the service on each node in a cluster',
                        args: [Arg(name: 'Port (INT)')]),
                    Option(
                        name: '--save-config',
                        description:
                            'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
                    Option(
                        name: '--tcp',
                        description:
                            'Port pairs can be specified as \'<port>:<targetPort>\'',
                        args: [Arg(name: '<port>:<targetPort>')]),
                    Option(
                        name: '--validate',
                        description:
                            'If true, use a schema to validate the input before sending it')
                  ])
            ]),
        Subcommand(
            name: 'serviceaccount',
            description: 'Create a service account with the specified name',
            args: [
              Arg(name: 'NAME')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['output']!,
              sharedOpts['template']!,
              Option(
                  name: '--save-config',
                  description:
                      'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
              Option(
                  name: '--validate',
                  description:
                      'If true, use a schema to validate the input before sending it')
            ])
      ]),
  Subcommand(
      name: 'delete',
      description:
          'Delete resources by filenames, stdin, resources and names, or by resources and label selector',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['dryRun']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['selector']!,
        sharedOpts['allResources']!,
        sharedOpts['fieldSelector']!,
        Option(
            name: ['-A', '--all-namespaces'],
            description:
                'If present, list the requested object(s) across all namespaces. Namespace in current context is ignored even if specified with --namespace'),
        Option(
            name: '--cascade',
            description:
                'If true, cascade the deletion of the resources managed by this resource (e.g. Pods created by a ReplicationController).  Default true'),
        Option(
            name: '--force',
            description:
                'If true, immediately remove resources from API and bypass graceful deletion. Note that immediate deletion of some resources may result in inconsistency or data loss and requires confirmation'),
        Option(
            name: '--grace-period',
            description:
                'Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to 1 for immediate shutdown. Can only be set to 0 when --force is true (force deletion)',
            args: [Arg(name: 'INT (Seconds)')]),
        Option(
            name: '--ignore-not-found',
            description:
                'Treat "resource not found" as a successful delete. Defaults to "true" when --all is specified'),
        Option(
            name: '--now',
            description:
                'If true, resources are signaled for immediate shutdown (same as --grace-period=1)'),
        Option(
            name: '--raw',
            description:
                'Raw URI to DELETE to the server.  Uses the transport specified by the kubeconfig file'),
        Option(
            name: '--timeout',
            description:
                'The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object',
            args: [Arg(name: 'INT (Seconds)')]),
        Option(
            name: '--wait',
            description:
                'If true, wait for resources to be gone before returning. This waits for finalizers')
      ]),
  Subcommand(
      name: 'describe',
      description: 'Show details of a specific resource or group of resources',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['recursive']!,
        sharedOpts['selector']!,
        Option(
            name: ['-A', '--all-namespaces'],
            description:
                'If present, list the requested object(s) across all namespaces. Namespace in current context is ignored even if specified with --namespace'),
        Option(
            name: '--show-events',
            description:
                'If true, display events related to the described object')
      ]),
  Subcommand(
      name: 'diff',
      description:
          'Diff configurations specified by filename or stdin between the current online configuration, and the configuration as it would be if applied',
      options: [
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['recursive']!,
        Option(
            name: '--field-manager',
            description: 'Name of the manager used to track field ownership',
            args: [Arg(name: 'Field Manager')]),
        Option(
            name: '--force-conflicts',
            description:
                'If true, server-side apply will force the changes against conflicts'),
        Option(
            name: '--server-side',
            description:
                'If true, apply runs in the server instead of the client')
      ]),
  Subcommand(
      name: 'drain',
      description: 'Drain node in preparation for maintenance',
      args: sharedArgs['listNodes'],
      options: [
        sharedOpts['dryRun']!,
        sharedOpts['selector']!,
        Option(
            name: '--delete-local-data',
            description:
                'Continue even if there are pods using emptyDir (local data that will be deleted when the node is drained)'),
        Option(
            name: '--disable-eviction',
            description:
                'Force drain to use delete, even if eviction is supported. This will bypass checking PodDisruptionBudgets, use with caution'),
        Option(
            name: '--force',
            description:
                'Continue even if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet or StatefulSet'),
        Option(
            name: '--grace-period',
            description:
                'Period of time in seconds given to each pod to terminate gracefully. If negative, the default value specified in the pod will be used',
            args: [Arg(name: 'INT (Seconds)')]),
        Option(
            name: '--ignore-daemonsets',
            description: 'Ignore DaemonSet-managed pods'),
        Option(
            name: '--pod-selector',
            description: 'Label selector to filter pods on the node',
            args: [Arg()]),
        Option(
            name: '--skip-wait-for-delete-timeout',
            description:
                'If pod DeletionTimestamp older than N seconds, skip waiting for the pod.  Seconds must be greater than 0 to skip',
            args: [Arg()]),
        Option(
            name: '--timeout',
            description:
                'The length of time to wait before giving up, zero means infinite',
            args: [Arg(name: 'INT (Seconds)')])
      ]),
  Subcommand(
      name: 'edit',
      description: 'Edit a resource from the default editor',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['template']!,
        sharedOpts['record']!,
        Option(
            name: '--output-patch',
            description: 'Output the patch if the resource is edited',
            args: [Arg()]),
        Option(
            name: '--save-config',
            description:
                'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
        Option(
            name: '--validate',
            description:
                'If true, use a schema to validate the input before sending it'),
        Option(
            name: '--windows-line-endings',
            description: 'Defaults to the line ending native to your platform')
      ]),
  Subcommand(
      name: 'exec',
      description: 'Execute a command in a container',
      args: [
        sharedArgs['runningPodsArg'],
        Arg(name: 'COMMAND')
      ],
      options: [
        sharedOpts['filename']!,
        Option(
            name: ['-c', '--container'],
            description:
                'Container name. If omitted, the first container in the pod will be chosen',
            args: sharedArgs['listContainersFromPod']),
        Option(
            name: '--pod-running-timeout',
            description:
                'The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running',
            args: [Arg()]),
        Option(
            name: ['-i', '--stdin'],
            description: 'Pass stdin to the container'),
        Option(name: ['-t', '--tty'], description: 'Stdin is a TTY')
      ]),
  Subcommand(
      name: 'explain',
      description: 'List the fields for supported resources',
      args: sharedArgs['resourcesArg'],
      options: [
        Option(
            name: '--api-version',
            description:
                'Get different explanations for particular API version',
            args: [Arg()]),
        Option(
            name: '--recursive',
            description:
                'Print the fields of fields (Currently only 1 level deep)')
      ]),
  Subcommand(
      name: 'expose',
      description: 'Expose a resource as a new Kubernetes service',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['dryRun']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['record']!,
        sharedOpts['recursive']!,
        sharedOpts['selector']!,
        sharedOpts['template']!,
        Option(
            name: '--cluster-ip',
            description:
                'ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to \'None\' to create a headless service',
            args: [Arg()]),
        Option(
            name: '--external-ip',
            description:
                'Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is routed to a node, the service can be accessed by this IP in addition to its generated service IP',
            args: [Arg()]),
        Option(
            name: '--generator',
            description:
                'The name of the API generator to use. There are 2 generators: \'service/v1\' and \'service/v2\'. The only difference between them is that service port in v1 is named \'default\', while it is left unnamed in v2. Default is \'service/v2\'',
            args: [Arg()]),
        Option(
            name: ['-l', '--labels'],
            description: 'Labels to apply to the service created by this call',
            args: [Arg()]),
        Option(
            name: '--load-balancer-ip',
            description:
                'IP to assign to the LoadBalancer. If empty, an ephemeral IP will be created and used (cloud-provider specific)',
            args: [Arg()]),
        Option(
            name: '--name',
            description: 'The name for the newly created object',
            args: [Arg()]),
        Option(
            name: '--overrides',
            description:
                'An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field',
            args: [Arg()]),
        Option(
            name: '--port',
            description:
                'The port that the service should serve on. Copied from the resource being exposed, if unspecified',
            args: [Arg()]),
        Option(
            name: '--protocol',
            description:
                'The network protocol for the service to be created. Default is \'TCP\'',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'TCP'),
                FigSuggestion(name: 'UDP'),
                FigSuggestion(name: 'SCTP')
              ])
            ]),
        Option(
            name: '--save-config',
            description:
                'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
        Option(
            name: '--session-affinity',
            description:
                'If non-empty, set the session affinity for the service to this; legal values: \'None\', \'ClientIP\'',
            args: [Arg()]),
        Option(
            name: '--target-port',
            description:
                'Name or number for the port on the container that the service should direct traffic to. Optional',
            args: [Arg()]),
        Option(
            name: '--type',
            description:
                'Type for this service: ClusterIP, NodePort, LoadBalancer, or ExternalName. Default is \'ClusterIP\'',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'ClusterIP'),
                FigSuggestion(name: 'NodePort'),
                FigSuggestion(name: 'LoadBalancer'),
                FigSuggestion(name: 'ExternalName')
              ])
            ])
      ]),
  Subcommand(name: 'get', description: 'Display one or many resources', args: [
    sharedArgs['typeOrTypeSlashName'],
    sharedArgs['resourceSuggestionsFromResourceType']
  ], options: [
    sharedOpts['allowMissingTemplateKeys']!,
    sharedOpts['fieldSelector']!,
    sharedOpts['filename']!,
    sharedOpts['kustomize']!,
    sharedOpts['output']!,
    sharedOpts['recursive']!,
    sharedOpts['selector']!,
    sharedOpts['template']!,
    Option(
        name: ['-A', '--all-namespaces'],
        description:
            'If present, list the requested object(s) across all namespaces. Namespace in current context is ignored even if specified with --namespace'),
    Option(
        name: '--chunk-size',
        description:
            'Return large lists in chunks rather than all at once. Pass 0 to disable. This flag is beta and may change in the future',
        args: [Arg()]),
    Option(
        name: '--ignore-not-found',
        description:
            'If the requested object does not exist the command will return exit code 0'),
    Option(
        name: ['-L', '--label-columns'],
        insertValue: '--label-columns',
        description:
            'Accepts a comma separated list of labels that are going to be presented as columns. Names are case-sensitive. You can also use multiple flag options like -L label1 -L label2',
        args: [Arg()]),
    Option(
        name: '--no-headers',
        description:
            'When using the default or custom-column output format, don\'t print headers (default print headers)'),
    Option(
        name: '--output-watch-events',
        description:
            'Output watch event objects when --watch or --watch-only is used. Existing objects are output as initial ADDED events'),
    Option(
        name: '--raw',
        description:
            'Raw URI to request from the server.  Uses the transport specified by the kubeconfig file'),
    Option(
        name: '--server-print',
        description:
            'If true, have the server return the appropriate table output. Supports extension APIs and CRDs'),
    Option(
        name: '--show-kind',
        description:
            'If present, list the resource type for the requested object(s)'),
    Option(
        name: '--show-labels',
        description:
            'When printing, show all labels as the last column (default hide labels column)'),
    Option(
        name: '--sort-by',
        description:
            'If non-empty, sort list types using this field specification.  The field specification is expressed as a JSONPath expression (e.g. \'{.metadata.name}\'). The field in the API resource specified by this JSONPath expression must be an integer or a string',
        args: [Arg()]),
    Option(
        name: ['-w', '--watch'],
        description:
            'After listing/getting the requested object, watch for changes. Uninitialized objects are excluded if no object name is provided'),
    Option(
        name: '--watch-only',
        description:
            'Watch for changes to the requested object(s), without listing/getting first')
  ]),
  Subcommand(
      name: 'kustomize',
      description:
          'Print a set of API resources generated from instructions in a kustomization.yaml file',
      args: [
        Arg(name: 'DIR', template: 'folders')
      ],
      options: [
        sharedOpts['output']!,
        Option(
            name: '--allow-id-changes',
            description: 'Enable changes to a resourceId'),
        Option(
            name: '--enable-alpha-plugins',
            description: 'Enable kustomize plugins'),
        Option(
            name: '--enable-managedby-label',
            description: 'Enable adding app.kubernetes.io/managed-by'),
        Option(
            name: ['--env', '-e'],
            description:
                'A list of environment variables to be used by functions',
            args: [Arg(template: 'filepaths')]),
        Option(
            name: '--load-restrictor',
            description:
                'If set to \'LoadRestrictionsNone\', local kustomizations may load files from outside their root. This does, however, break the relocatability of the kustomization',
            args: [Arg()]),
        Option(
            name: '--mount',
            description: 'A list of storage options read from the filesystem',
            args: [Arg()]),
        Option(
            name: '--network',
            description: 'Enable network access for functions that declare it'),
        Option(
            name: '--network-name',
            description: 'The docker network to run the container in',
            args: [Arg()]),
        Option(
            name: '--reorder',
            description:
                'Reorder the resources just before output. Use \'legacy\' to apply a legacy reordering (Namespaces first, Webhooks last, etc). Use \'none\' to suppress a final reordering')
      ]),
  Subcommand(
      name: 'label',
      description: 'Update the labels on a resource',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['dryRun']!,
        sharedOpts['fieldSelector']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['local']!,
        sharedOpts['output']!,
        sharedOpts['record']!,
        sharedOpts['recursive']!,
        sharedOpts['selector']!,
        sharedOpts['template']!,
        sharedOpts['resourceVersion']!,
        Option(
            name: '--all',
            description:
                'Select all resources, including uninitialized ones, in the namespace of the specified resource types'),
        Option(
            name: '--list',
            description: 'If true, display the labels for a given resource'),
        Option(
            name: '--overwrite',
            description:
                'If true, allow labels to be overwritten, otherwise reject label updates that overwrite existing labels')
      ]),
  Subcommand(
      name: 'logs',
      description:
          'Print the logs for a container in a pod or specified resource. If the pod has only one container, the container name is optional',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['selector']!,
        Option(
            name: '--all-containers',
            description: 'Get all containers\' logs in the pod(s)'),
        Option(
            name: ['-c', '--container'],
            description: 'Print the logs of this container',
            args: [Arg()]),
        Option(
            name: ['-f', '--follow'],
            description: 'Specify if the logs should be streamed'),
        Option(
            name: '--ignore-errors',
            description:
                'If watching / following pod logs, allow for any errors that occur to be non-fatal'),
        Option(
            name: '--insecure-skip-tls-verify-backend',
            description:
                'Skip verifying the identity of the kubelet that logs are requested from.  In theory, an attacker could provide invalid log content back. You might want to use this if your kubelet serving certificates have expired'),
        Option(
            name: '--limit-bytes',
            description:
                'Maximum bytes of logs to return. Defaults to no limit',
            args: [Arg()]),
        Option(
            name: '--max-log-requests',
            description:
                'Specify maximum number of concurrent logs to follow when using by a selector. Defaults to 5',
            args: [Arg()]),
        Option(
            name: '--pod-running-timeout',
            description:
                'The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running',
            args: [Arg()]),
        Option(
            name: '--prefix',
            description:
                'Prefix each log line with the log source (pod name and container name)'),
        Option(
            name: ['-p', '--previous'],
            description:
                'If true, print the logs for the previous instance of the container in a pod if it exists'),
        Option(
            name: '--since',
            description:
                'Only return logs newer than a relative duration like 5s, 2m, or 3h. Defaults to all logs. Only one of since-time / since may be used',
            args: [Arg()]),
        Option(
            name: '--since-time',
            description:
                'Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used',
            args: [Arg()]),
        Option(
            name: '--tail',
            description:
                'Lines of recent log file to display. Defaults to -1 with no selector, showing all log lines otherwise 10, if a selector is provided',
            args: [Arg()]),
        Option(
            name: '--timestamps',
            description: 'Include timestamps on each line in the log output')
      ]),
  Subcommand(
      name: 'patch',
      description:
          'Update field(s) of a resource using strategic merge patch, a JSON merge patch, or a JSON patch',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['dryRun']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['local']!,
        sharedOpts['output']!,
        sharedOpts['record']!,
        sharedOpts['recursive']!,
        sharedOpts['template']!,
        Option(
            name: ['-p', '--patch'],
            description: 'The patch to be applied to the resource JSON file',
            args: [Arg()]),
        Option(
            name: '--type',
            description:
                'The type of patch being provided; one of [json merge strategic]',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'json'),
                FigSuggestion(name: 'merge'),
                FigSuggestion(name: 'strategic')
              ])
            ])
      ]),
  Subcommand(
      name: 'plugin',
      description: 'Provides utilities for interacting with plugins'),
  Subcommand(
      name: 'port-forward',
      description:
          'Forward one or more local ports to a pod. This command requires the node to have \'socat\' installed',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType'],
        Arg(name: '[LOCAL_PORT:REMOTE_PORT]', isVariadic: true)
      ],
      options: [
        Option(
            name: '--address',
            description:
                'Addresses to listen on (comma separated). Only accepts IP addresses or localhost as a value. When localhost is supplied, kubectl will try to bind on both 127.0.0.1 and ::1 and will fail if neither of these addresses are available to bind',
            args: [Arg()]),
        Option(
            name: '--pod-running-timeout',
            description:
                'The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running',
            args: [Arg()])
      ]),
  Subcommand(
      name: 'proxy',
      description:
          'Creates a proxy server or application-level gateway between localhost and the Kubernetes API Server. It also allows serving static content over specified HTTP path. All incoming data enters through one port and gets forwarded to the remote kubernetes API Server port, except for the path matching the static content path',
      options: [
        Option(
            name: '--accept-hosts',
            description:
                'Regular expression for hosts that the proxy should accept',
            args: [Arg()]),
        Option(
            name: '--accept-paths',
            description:
                'Regular expression for paths that the proxy should accept',
            args: [Arg()]),
        Option(
            name: '--address',
            description: 'The IP address on which to serve on',
            args: [Arg()]),
        Option(
            name: '--api-prefix',
            description: 'Prefix to serve the proxied API under',
            args: [Arg()]),
        Option(
            name: '--disable-filter',
            description:
                'If true, disable request filtering in the proxy. This is dangerous, and can leave you vulnerable to XSRF attacks, when used with an accessible port'),
        Option(
            name: '--keepalive',
            description:
                'Keepalive specifies the keep-alive period for an active network connection. Set to 0 to disable keepalive',
            args: [Arg()]),
        Option(
            name: ['-p', '--port'],
            description:
                'The port on which to run the proxy. Set to 0 to pick a random port',
            args: [Arg()]),
        Option(
            name: '--reject-methods',
            description:
                'Regular expression for HTTP methods that the proxy should reject (example --reject-methods=\'POST,PUT,PATCH\')',
            args: [Arg()]),
        Option(
            name: '--reject-paths',
            description:
                'Regular expression for paths that the proxy should reject. Paths specified here will be rejected even accepted by --accept-paths',
            args: [Arg()]),
        Option(
            name: ['-u', '--unix-socket'],
            description: 'Unix socket on which to run the proxy',
            args: [Arg()]),
        Option(
            name: ['-w', '--www'],
            description:
                'Also serve static files from the given directory under the specified prefix',
            args: [Arg()]),
        Option(
            name: ['-P', '--www-prefix'],
            description:
                'Prefix to serve static files under, if static file directory is specified',
            args: [Arg()])
      ]),
  Subcommand(
      name: 'replace',
      description: 'Replace a resource by filename or stdin',
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['dryRun']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['template']!,
        Option(
            name: '--cascade',
            description:
                'If true, cascade the deletion of the resources managed by this resource (e.g. Pods created by a ReplicationController).  Default true'),
        Option(
            name: '--force',
            description:
                'If true, immediately remove resources from API and bypass graceful deletion. Note that immediate deletion of some resources may result in inconsistency or data loss and requires confirmation'),
        Option(
            name: '--grace-period',
            description:
                'Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to 1 for immediate shutdown. Can only be set to 0 when --force is true (force deletion)',
            args: [Arg()]),
        Option(
            name: '--raw',
            description:
                'Raw URI to PUT to the server.  Uses the transport specified by the kubeconfig file',
            args: [Arg()]),
        Option(
            name: '--save-config',
            description:
                'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
        Option(
            name: '--timeout',
            description:
                'The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object',
            args: [Arg()]),
        Option(
            name: '--validate',
            description:
                'If true, use a schema to validate the input before sending it'),
        Option(
            name: '--wait',
            description:
                'If true, wait for resources to be gone before returning. This waits for finalizers')
      ]),
  Subcommand(
      name: 'rollout',
      description: 'Manage the rollout of a resource',
      subcommands: [
        Subcommand(
            name: 'history',
            description: 'View previous rollout revisions and configurations',
            args: sharedArgs['listDeployments'],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              Option(
                  name: '--revision',
                  description:
                      'See the details, including podTemplate of the revision specified',
                  args: [Arg()])
            ]),
        Subcommand(
            name: 'pause',
            description: 'Mark the provided resource as paused',
            args: sharedArgs['listDeployments'],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!
            ]),
        Subcommand(
            name: 'restart',
            description: 'Restart a resource',
            args: sharedArgs['listDeployments'],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!
            ]),
        Subcommand(
            name: 'resume',
            description: 'Resume a paused resource',
            args: sharedArgs['listDeployments'],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!
            ]),
        Subcommand(
            name: 'status',
            description: 'Show the status of the rollout',
            args: sharedArgs['listDeployments'],
            options: [
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['recursive']!,
              Option(
                  name: '--revision',
                  description:
                      'Pin to a specific revision for showing its status. Defaults to 0 (last revision)',
                  args: [Arg()]),
              Option(
                  name: '--timeout',
                  description:
                      'The length of time to wait before ending watch, zero means never. Any other values should contain a corresponding time unit (e.g. 1s, 2m, 3h)',
                  args: [Arg()]),
              Option(
                  name: ['-w', '--watch'],
                  description:
                      'Watch the status of the rollout until it\'s done')
            ]),
        Subcommand(
            name: 'undo',
            description: 'Rollback to a previous rollout',
            args: sharedArgs['listDeployments'],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['recursive']!,
              sharedOpts['dryRun']!,
              Option(name: '--to_revision', args: [Arg()]),
              Option(
                  name: '--timeout',
                  description:
                      'The length of time to wait before ending watch, zero means never. Any other values should contain a corresponding time unit (e.g. 1s, 2m, 3h)',
                  args: [Arg()])
            ])
      ]),
  Subcommand(
      name: 'run',
      description: 'Create and run a particular image in a pod',
      args: [
        Arg(name: 'NAME')
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['filename']!,
        sharedOpts['dryRun']!,
        sharedOpts['kustomize']!,
        sharedOpts['recursive']!,
        sharedOpts['output']!,
        sharedOpts['record']!,
        sharedOpts['template']!,
        Option(
            name: '--annotations',
            description: 'Annotations to apply to the pod',
            args: [Arg()]),
        Option(
            name: '--attach',
            description:
                'If true, wait for the Pod to start running, and then attach to the Pod as if \'kubectl attach ...\' were called.  Default false, unless \'-i/--stdin\' is set, in which case the default is true. With \'--restart=Never\' the exit code of the container process is returned'),
        Option(
            name: '--cascade',
            description:
                'Must be "background", "orphan", or "foreground". Selects the deletion cascading strategy for the dependents (e.g. Pods created by a ReplicationController). Defaults to background',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'background'),
                FigSuggestion(name: 'orphan'),
                FigSuggestion(name: 'foreground')
              ])
            ]),
        Option(
            name: '--command',
            description:
                'If true and extra arguments are present, use them as the \'command\' field in the container, rather than the \'args\' field which is the default'),
        Option(
            name: '--env',
            description: 'Environment variables to set in the container',
            args: [Arg()]),
        Option(
            name: '--expose',
            description:
                'If true, service is created for the container(s) which are run'),
        Option(
            name: '--force',
            description:
                'If true, immediately remove resources from API and bypass graceful deletion. Note that immediate deletion of some resources may result in inconsistency or data loss and requires confirmation'),
        Option(
            name: '--grace-period',
            description:
                'Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to 1 for immediate shutdown. Can only be set to 0 when --force is true (force deletion)',
            args: [Arg()]),
        Option(
            name: '--hostport',
            description:
                'The host port mapping for the container port. To demonstrate a single-machine container',
            args: [Arg()]),
        Option(
            name: '--image',
            description: 'The image for the container to run',
            args: [Arg()]),
        Option(
            name: '--image-pull-policy',
            description:
                'The image pull policy for the container. If left empty, this value will not be specified by the client and defaulted by the server',
            args: [Arg()]),
        Option(
            name: ['-l', '--labels'],
            description:
                'Comma separated labels to apply to the pod(s). Will override previous values',
            args: [Arg()]),
        Option(
            name: '--leave-stdin-open',
            description:
                'If the pod is started in interactive mode or with stdin, leave stdin open after the first attach completes. By default, stdin will be closed after the first attach completes'),
        Option(
            name: '--limits',
            description:
                'The resource requirement limits for this container.  For example, \'cpu=200m,memory=512Mi\'.  Note that server side components may assign limits depending on the server configuration, such as limit ranges',
            args: [Arg()]),
        Option(
            name: '--overrides',
            description:
                'An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field',
            args: [Arg()]),
        Option(
            name: '--pod-running-timeout',
            description:
                'The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running',
            args: [Arg()]),
        Option(
            name: '--port',
            description: 'The port that this container exposes',
            args: [Arg()]),
        Option(
            name: '--quiet', description: 'If true, suppress prompt messages'),
        Option(
            name: '--requests',
            description:
                'The resource requirement requests for this container.  For example, \'cpu=100m,memory=256Mi\'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges',
            args: [Arg()]),
        Option(
            name: '--restart',
            description:
                'The restart policy for this Pod.  Legal values [Always, OnFailure, Never].  If set to \'Always\' a deployment is created, if set to \'OnFailure\' a job is created, if set to \'Never\', a regular pod is created. For the latter two --replicas must be 1.  Default \'Always\', for CronJobs `Never`',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'Always'),
                FigSuggestion(name: 'OnFailure'),
                FigSuggestion(name: 'Never')
              ])
            ]),
        Option(
            name: '--rm',
            description:
                'If true, delete resources created in this command for attached containers'),
        Option(
            name: '--save-config',
            description:
                'If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future'),
        Option(
            name: '--serviceaccount',
            description: 'Service account to set in the pod spec',
            args: [Arg()]),
        Option(
            name: ['-i', '--stdin'],
            description:
                'Keep stdin open on the container(s) in the pod, even if nothing is attached'),
        Option(
            name: '--timeout',
            description:
                'The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object',
            args: [Arg()]),
        Option(
            name: ['-t', '--tty'],
            description: 'Allocated a TTY for each container in the pod'),
        Option(
            name: '--wait',
            description:
                'If true, wait for resources to be gone before returning. This waits for finalizers')
      ]),
  Subcommand(
      name: 'scale',
      description:
          'Set a new size for a Deployment, ReplicaSet, Replication Controller, or StatefulSet',
      args: [
        sharedArgs['typeOrTypeSlashName'],
        sharedArgs['resourceSuggestionsFromResourceType']
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['filename']!,
        sharedOpts['kustomize']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['record']!,
        sharedOpts['resourceVersion']!,
        sharedOpts['selector']!,
        sharedOpts['template']!,
        sharedOpts['dryRun']!,
        Option(
            name: '--all',
            description:
                'Select all resources in the namespace of the specified resource types'),
        Option(
            name: '--current-replicas',
            description:
                'Precondition for current size. Requires that the current size of the resource match this value in order to scale',
            args: [Arg()]),
        Option(
            name: '--replicas',
            description: 'The new desired number of replicas. Required',
            args: [Arg()]),
        Option(
            name: '--timeout',
            description:
                'The length of time to wait before giving up on a scale operation, zero means don\'t wait. Any other values should contain a corresponding time unit (e.g. 1s, 2m, 3h)',
            args: [Arg()])
      ]),
  Subcommand(
      name: 'set',
      description: 'Configure application resources',
      subcommands: [
        Subcommand(
            name: 'env',
            description: 'Update environment variables on a pod template',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType'],
              Arg(name: 'KEY=VALUE', isVariadic: true)
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['local']!,
              sharedOpts['recursive']!,
              sharedOpts['selector']!,
              sharedOpts['template']!,
              Option(
                  name: '--all',
                  description:
                      'If true, select all resources in the namespace of the specified resource types'),
              Option(
                  name: ['-c', '--containers'],
                  description:
                      'The names of containers in the selected pod templates to change - may use wildcards',
                  args: [Arg()]),
              Option(
                  name: ['-e', '--env'],
                  description:
                      'Specify a key-value pair for an environment variable to set into each container',
                  args: [Arg()]),
              Option(
                  name: '--from',
                  description:
                      'The name of a resource from which to inject environment variables',
                  args: [Arg()]),
              Option(
                  name: '--keys',
                  description:
                      'Comma-separated list of keys to import from specified resource',
                  args: [Arg()]),
              Option(
                  name: '--list',
                  description:
                      'If true, display the environment and any changes in the standard format. this flag will removed when we have kubectl view env'),
              Option(
                  name: '--overwrite',
                  description:
                      'If true, allow environment to be overwritten, otherwise reject updates that overwrite existing environment'),
              Option(
                  name: '--prefix',
                  description: 'Prefix to append to variable names',
                  args: [Arg()]),
              Option(
                  name: '--resolve',
                  description:
                      'If true, show secret or configmap references when listing variables')
            ]),
        Subcommand(
            name: 'image',
            description: 'Update existing container image(s) of resources',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType'],
              Arg(name: 'CONTAINER_NAME=IMAGE_NAME', isVariadic: true)
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['local']!,
              sharedOpts['recursive']!,
              sharedOpts['selector']!,
              sharedOpts['template']!,
              sharedOpts['record']!,
              Option(
                  name: '--all',
                  description:
                      'Select all resources, including uninitialized ones, in the namespace of the specified resource types')
            ]),
        Subcommand(
            name: 'resources',
            description:
                'Specify compute resource requirements (cpu, memory) for any resource that defines a pod template.  If a pod is successfully scheduled, it is guaranteed the amount of resource requested, but may burst up to its specified limits',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType']
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['local']!,
              sharedOpts['recursive']!,
              sharedOpts['selector']!,
              sharedOpts['template']!,
              sharedOpts['record']!,
              Option(
                  name: '--all',
                  description:
                      'Select all resources, including uninitialized ones, in the namespace of the specified resource types'),
              Option(
                  name: ['-c', '--containers'],
                  description:
                      'The names of containers in the selected pod templates to change, all containers are selected by default - may use wildcards',
                  args: [Arg()]),
              Option(
                  name: '--limits',
                  description:
                      'The resource requirement requests for this container.  For example, \'cpu=100m,memory=256Mi\'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges',
                  args: [Arg()]),
              Option(
                  name: '--requests',
                  description:
                      'The resource requirement requests for this container.  For example, \'cpu=100m,memory=256Mi\'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges',
                  args: [Arg()])
            ]),
        Subcommand(
            name: 'selector',
            description:
                'Set the selector on a resource. Note that the new selector will overwrite the old selector if the resource had one prior to the invocation of \'set selector\'',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType'],
              Arg(name: 'EXPRESSIONS')
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['local']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              sharedOpts['record']!,
              sharedOpts['resourceVersion']!,
              Option(
                  name: '--all',
                  description:
                      'Select all resources in the namespace of the specified resource types',
                  args: [Arg()])
            ]),
        Subcommand(
            name: 'serviceaccount',
            description: 'Update ServiceAccount of pod template resources',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType']
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['local']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              sharedOpts['record']!,
              Option(
                  name: '--all',
                  description:
                      'Select all resources, including uninitialized ones, in the namespace of the specified resource types')
            ]),
        Subcommand(
            name: 'subject',
            description:
                'Update User, Group or ServiceAccount in a RoleBinding/ClusterRoleBinding',
            args: [
              sharedArgs['typeOrTypeSlashName'],
              sharedArgs['resourceSuggestionsFromResourceType']
            ],
            options: [
              sharedOpts['allowMissingTemplateKeys']!,
              sharedOpts['dryRun']!,
              sharedOpts['filename']!,
              sharedOpts['kustomize']!,
              sharedOpts['output']!,
              sharedOpts['local']!,
              sharedOpts['recursive']!,
              sharedOpts['template']!,
              sharedOpts['record']!,
              Option(
                  name: '--all',
                  description:
                      'Select all resources, including uninitialized ones, in the namespace of the specified resource types'),
              Option(
                  name: '--group',
                  description: 'Groups to bind to the role',
                  args: [Arg()]),
              Option(
                  name: '--serviceaccount',
                  description: 'Service accounts to bind to the role',
                  args: [Arg()])
            ])
      ]),
  Subcommand(
      name: 'taint',
      description: 'Update the taints on one or more nodes',
      args: sharedArgs['listNodes'],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['dryRun']!,
        sharedOpts['output']!,
        sharedOpts['selector']!,
        sharedOpts['template']!,
        Option(name: '--all', description: 'Select all nodes in the cluster'),
        Option(
            name: '--overwrite',
            description:
                'If true, allow taints to be overwritten, otherwise reject taint updates that overwrite existing taints'),
        Option(
            name: '--validate',
            description:
                'If true, use a schema to validate the input before sending it')
      ]),
  Subcommand(
      name: 'top', description: 'Display Resource (CPU/Memory/Storage) usage'),
  Subcommand(
      name: 'uncordon',
      description: 'Mark node as schedulable',
      args: sharedArgs['listNodes'],
      options: [sharedOpts['dryRun']!, sharedOpts['selector']!]),
  Subcommand(
      name: 'version',
      description:
          'Print the client and server version information for the current context',
      options: [
        sharedOpts['output']!,
        Option(
            name: '--client',
            description:
                'If true, shows client version only (no server required)')
      ]),
  Subcommand(
      name: 'wait',
      description:
          'Experimental: Wait for a specific condition on one or many resources',
      args: [
        Arg()
      ],
      options: [
        sharedOpts['allowMissingTemplateKeys']!,
        sharedOpts['fieldSelector']!,
        sharedOpts['filename']!,
        sharedOpts['local']!,
        sharedOpts['output']!,
        sharedOpts['recursive']!,
        sharedOpts['selector']!,
        sharedOpts['template']!,
        Option(
            name: '--all',
            description:
                'Select all resources in the namespace of the specified resource types'),
        Option(
            name: ['-A', '--all-namespaces'],
            description:
                'If present, list the requested object(s) across all namespaces. Namespace in current context is ignored even if specified with --namespace',
            args: [Arg()]),
        Option(
            name: '--for',
            description:
                'The condition to wait on: [delete|condition=condition-name]',
            args: [Arg()]),
        Option(
            name: '--timeout',
            description:
                'The length of time to wait before giving up.  Zero means check once and don\'t wait, negative means wait for a week',
            args: [Arg()])
      ])
], options: [
  Option(
      name: ['-n', '--namespace'],
      args: [Arg(name: 'namespace')],
      description: 'If present, the namespace scope for this CLI request')
]);
