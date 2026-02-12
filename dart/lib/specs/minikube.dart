// Auto-generated from TypeScript source: minikube.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `minikube` CLI
final FigSpec minikubeSpec = FigSpec(
  name: 'minikube',
  description: 'Minikube provisions and manages local Kubernetes clusters optimized for development workflows',
  subcommands: [
    Subcommand(
      name: 'start',
      description: 'Starts a local Kubernetes cluster',
      options: [
        Option(
          name: '--addons',
          description: 'Enable addons. see `minikube addons list` for a list of valid addon names'
        ),
        Option(
          name: '--apiserver-ips',
          description: 'A set of apiserver IP Addresses which are used in the generated certificate for kubernetes'
        ),
        Option(
          name: '--apiserver-name',
          description: 'The authoritative apiserver hostname for apiserver certificates and connectivity'
        ),
        Option(
          name: '--apiserver-names',
          description: 'A set of apiserver names which are used in the generated certificate for kubernetes'
        ),
        Option(
          name: '--apiserver-port',
          description: 'The apiserver listening port'
        ),
        Option(
          name: '--auto-update-drivers',
          description: 'If set, automatically updates drivers to the latest version',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--base-image',
          description: 'The base image to use for docker/podman drivers. Intended for local development'
        ),
        Option(
          name: '--cache-images',
          description: 'If true, cache docker images for the current bootstrapper and load them into the machine'
        ),
        Option(
          name: '--cert-expiration',
          description: 'Duration until minikube certificate expiration'
        ),
        Option(
          name: '--cni',
          description: 'CNI plug-in to use',
          args: [
            Arg(
            name: 'cni-plugin',
            suggestions: [
              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'bridge'),
              FigSuggestion(name: 'cilium'),
              FigSuggestion(name: 'flannel'),
              FigSuggestion(name: 'kindnet')
            ]
          )
          ]
        ),
        Option(
          name: '--container-runtime',
          description: 'The container runtime to be used',
          args: [
            Arg(
            name: 'container-runtime',
            suggestions: [
              FigSuggestion(name: 'docker'),
              FigSuggestion(name: 'cri-o'),
              FigSuggestion(name: 'containerd')
            ]
          )
          ]
        ),
        Option(
          name: '--cpus',
          description: 'Number of CPUs allocated to Kubernetes',
          args: [
            Arg(
            name: 'cpu number',
            suggestions: [
              FigSuggestion(name: 'max')
            ]
          )
          ]
        ),
        Option(
          name: '--cri-socket',
          description: 'The cri socket path to be used'
        ),
        Option(
          name: '--delete-on-failure',
          description: 'If set, delete the current cluster if start fails and try again',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--disable-driver-mounts',
          description: 'Disables the filesystem mounts provided by the hypervisors'
        ),
        Option(
          name: '--disk-size',
          description: 'Disk size allocated to the minikube VM'
        ),
        Option(
          name: '--dns-domain',
          description: 'The cluster dns domain name used in the Kubernetes cluster'
        ),
        Option(
          name: '--dns-proxy',
          description: 'Enable proxy for NAT DNS requests'
        ),
        Option(
          name: '--docker-env',
          description: 'Environment variables to pass to the Docker daemon. (format: key=value)'
        ),
        Option(
          name: '--docker-opt',
          description: 'Specify arbitrary flags to pass to the Docker daemon. (format: key=value)'
        ),
        Option(
          name: '--download-only',
          description: 'If true, only download and cache files for later use - don\'t install or start anything'
        ),
        Option(
          name: '--driver',
          description: 'Choose driver',
          args: [
            Arg(
            name: 'driver',
            suggestions: [
              FigSuggestion(name: 'virtualbox'),
              FigSuggestion(name: 'parallels'),
              FigSuggestion(name: 'vmwarefusion'),
              FigSuggestion(name: 'hyperkit'),
              FigSuggestion(name: 'vmware'),
              FigSuggestion(name: 'docker'),
              FigSuggestion(name: 'podman')
            ]
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Dry-run mode. Validates configuration, but does not mutate system state'
        ),
        Option(
          name: '--embed-certs',
          description: 'If true, will embed the certs in kubeconfig',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--extra-config',
          description: 'A set of key=value pairs that describe configuration that may be passed to different components'
        ),
        Option(
          name: '--extra-disks',
          description: 'Number of extra disks created and attached to the minikube VM'
        ),
        Option(
          name: '--feature-gates',
          description: 'A set of key=value pairs that describe feature gates for alpha/experimental features'
        ),
        Option(
          name: '--force',
          description: 'Force minikube to perform possibly dangerous operations'
        ),
        Option(
          name: '--force-systemd',
          description: 'If set, force the container runtime to use systemd as cgroup manager',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--host-dns-resolver',
          description: 'Enable host resolver for NAT DNS requests'
        ),
        Option(
          name: '--host-only-cidr',
          description: 'The CIDR to be used for the minikube VM'
        ),
        Option(
          name: '--host-only-nic-type',
          description: 'NIC Type used for host only network',
          args: [
            Arg(
            name: 'nic type',
            suggestions: [
              FigSuggestion(name: 'Am79C970A'),
              FigSuggestion(name: 'Am79C973'),
              FigSuggestion(name: '82540EM'),
              FigSuggestion(name: '82543GC'),
              FigSuggestion(name: '82545EM'),
              FigSuggestion(name: 'virtio')
            ]
          )
          ]
        ),
        Option(
          name: '--hyperkit-vpnkit-sock',
          description: 'Location of the VPNKit socket used for networking'
        ),
        Option(
          name: '--hyperkit-vsock-ports',
          description: 'List of guest VSock ports that should be exposed as sockets on the host'
        ),
        Option(
          name: '--hyperv-external-adapter',
          description: 'External Adapter on which external switch will be created if no external switch is found'
        ),
        Option(
          name: '--hyperv-use-external-switch',
          description: 'Whether to use external switch over Default Switch if virtual switch not explicitly specified'
        ),
        Option(
          name: '--hyperv-virtual-switch',
          description: 'The hyperv virtual switch name. Defaults to first found'
        ),
        Option(
          name: '--image-mirror-country',
          description: 'Country code of the image mirror to be used'
        ),
        Option(
          name: '--image-repository',
          description: 'Alternative image repository to pull docker images from'
        ),
        Option(
          name: '--insecure-registry',
          description: 'Insecure Docker registries to pass to the Docker daemon'
        ),
        Option(
          name: '--install-addons',
          description: 'If set, install addons. Defaults to true',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--interactive',
          description: 'Allow user prompts for more information'
        ),
        Option(
          name: '--iso-url',
          description: 'Locations to fetch the minikube ISO from'
        ),
        Option(
          name: '--keep-context',
          description: 'This will keep the existing kubectl context and will create a minikube context'
        ),
        Option(
          name: '--kubernetes-version',
          description: 'The Kubernetes version that the minikube VM will use'
        ),
        Option(
          name: '--kvm-gpu',
          description: 'Enable experimental NVIDIA GPU support in minikube'
        ),
        Option(
          name: '--kvm-hidden',
          description: 'Hide the hypervisor signature from the guest in minikube'
        ),
        Option(
          name: '--kvm-network',
          description: 'The KVM default network name'
        ),
        Option(
          name: '--kvm-numa-count',
          description: 'Simulate numa node count in minikube, supported numa node count range is 1-8',
          args: [
            Arg(
            name: 'numa count',
            suggestions: [
              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3'),
              FigSuggestion(name: '4'),
              FigSuggestion(name: '5'),
              FigSuggestion(name: '6'),
              FigSuggestion(name: '7'),
              FigSuggestion(name: '8')
            ]
          )
          ]
        ),
        Option(
          name: '--kvm-qemu-uri',
          description: 'The KVM QEMU connection URI'
        ),
        Option(
          name: '--listen-address',
          description: 'IP Address to use to expose ports'
        ),
        Option(
          name: '--memory',
          description: 'Amount of RAM to allocate to Kubernetes'
        ),
        Option(
          name: '--mount',
          description: 'This will start the mount daemon and automatically mount files into minikube'
        ),
        Option(
          name: '--mount-string',
          description: 'The argument to pass the minikube mount command on start'
        ),
        Option(
          name: '--namespace',
          description: 'The named space to activate after start'
        ),
        Option(
          name: '--nat-nic-type',
          description: 'NIC Type used for nat network'
        ),
        Option(
          name: '--native-ssh',
          description: 'Use native Golang SSH client'
        ),
        Option(
          name: '--network',
          description: 'Network to run minikube with'
        ),
        Option(
          name: '--network-plugin',
          description: 'Kubelet network plug-in to use'
        ),
        Option(
          name: '--nfs-share',
          description: 'Local folders to share with Guest via NFS mounts'
        ),
        Option(
          name: '--nfs-shares-root',
          description: 'Where to root the NFS Shares'
        ),
        Option(
          name: '--no-kubernetes',
          description: 'If set, minikube VM/container will start without starting or configuring Kubernetes'
        ),
        Option(
          name: '--no-vtx-check',
          description: 'Disable checking for the availability of hardware virtualization before the vm is started'
        ),
        Option(
          name: ['--nodes', '-n'],
          description: 'The number of nodes to spin up'
        ),
        Option(
          name: '--ports',
          description: 'List of ports that should be exposed'
        ),
        Option(
          name: '--preload',
          description: 'If set, download tarball of preloaded images if available to improve start time',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--registry-mirror',
          description: 'Registry mirrors to pass to the Docker daemon'
        ),
        Option(
          name: '--service-cluster-ip-range',
          description: 'The CIDR to be used for service cluster IPs'
        ),
        Option(
          name: '--ssh-ip-address',
          description: 'IP address'
        ),
        Option(
          name: '--ssh-key',
          description: 'SSH key'
        ),
        Option(
          name: '--ssh-port',
          description: 'SSH port'
        ),
        Option(
          name: '--ssh-user',
          description: 'SSH user'
        ),
        Option(
          name: '--trace',
          description: 'Send trace events',
          args: [
            Arg(
            name: 'trace',
            suggestions: [
              FigSuggestion(name: 'gcp')
            ]
          )
          ]
        ),
        Option(
          name: '--uuid',
          description: 'Provide VM UUID to restore MAC address'
        ),
        Option(
          name: '--vm',
          description: 'Filter to use only VM Drivers'
        ),
        Option(
          name: '--wait',
          description: 'Comma separated list of Kubernetes components to verify and wait for after starting a cluster'
        ),
        Option(
          name: '--wait-timeout',
          description: 'Max time to wait per Kubernetes or host to be healthy'
        )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Gets the status of a local Kubernetes cluster',
      options: [
        Option(
          name: ['--format', '-f'],
          description: 'Go template format string for the status output'
        ),
        Option(
          name: ['--layout', '-l'],
          description: 'Output layout'
        ),
        Option(
          name: ['--node', '-n'],
          description: 'The node to check status for'
        ),
        Option(
          name: ['--watch', '-w'],
          description: 'Continuously listing/getting the status with optional interval duration'
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stops a running local Kubernetes cluster',
      options: [
        Option(
          name: '--all',
          description: 'Set flag to stop all profiles (clusters)'
        ),
        Option(
          name: '--cancel-scheduled',
          description: 'Output layout'
        ),
        Option(
          name: '--keep-context-active',
          description: 'The node to check status for'
        ),
        Option(
          name: '--schedule',
          description: 'Set flag to stop cluster after a set amount of time'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes a local Kubernetes cluster',
      options: [
        Option(
          name: '--all',
          description: 'Set flag to delete all profiles'
        ),
        Option(
          name: '--purge',
          description: 'Set this flag to delete the \'.minikube\' folder from your user directory'
        )
      ]
    ),
    Subcommand(
      name: 'unpause',
      description: 'Unpause Kubernetes',
      options: [
        Option(
          name: ['--all-namespaces', '-A'],
          description: 'If set, unpause all namespaces'
        ),
        Option(
          name: ['--namespaces', '-n'],
          description: 'Namespaces to unpause'
        )
      ]
    ),
    Subcommand(
      name: 'docker-env',
      description: 'Configure environment to use minikube\'s Docker daemon',
      options: [
        Option(
          name: ['--no-proxy', '-A'],
          description: 'If set, unpause all namespaces'
        ),
        Option(
          name: '--ssh-host',
          description: 'Use SSH connection instead of HTTPS (port 2376)'
        )
      ]
    ),
    Subcommand(
      name: 'podman-env',
      description: 'Configure environment to use minikube\'s Podman service',
      options: []
    ),
    Subcommand(
      name: 'cache',
      description: 'Add, delete, or push a local image into minikube',
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Add an image to local cache'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an image from the local cache'
        ),
        Subcommand(
          name: 'list',
          description: 'List all available images from the local cache'
        ),
        Subcommand(
          name: 'reload',
          description: 'Reload cached images'
        )
      ]
    ),
    Subcommand(
      name: 'image',
      description: 'Manage images',
      subcommands: [
        Subcommand(
          name: 'build',
          description: 'Build a container image in minikube'
        ),
        Subcommand(
          name: 'load',
          description: 'Load a image into minikube'
        ),
        Subcommand(
          name: 'ls',
          description: 'List images'
        ),
        Subcommand(
          name: 'pull',
          description: 'Pull images'
        ),
        Subcommand(
          name: 'push',
          description: 'Push images'
        ),
        Subcommand(
          name: 'rm',
          description: 'Remove one or more images'
        ),
        Subcommand(
          name: 'save',
          description: 'Save a image from minikube'
        ),
        Subcommand(
          name: 'tag',
          description: 'Tag images'
        )
      ]
    ),
    Subcommand(
      name: 'addons',
      description: 'Enable or disable a minikube addon',
      subcommands: [
        Subcommand(
          name: 'configure',
          description: 'Configures the addon w/ADDON_NAME within minikube'
        ),
        Subcommand(
          name: 'disable',
          description: 'Disables the addon w/ADDON_NAME within minikube'
        ),
        Subcommand(
          name: 'enable',
          description: 'Enables the addon w/ADDON_NAME within minikube'
        ),
        Subcommand(
          name: 'images',
          description: 'List image names the addon w/ADDON_NAME used'
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all available minikube addons as well as their current statuses'
        ),
        Subcommand(
          name: 'open',
          description: 'Opens the addon w/ADDON_NAME within minikube'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Modify persistent configuration values',
      subcommands: [
        Subcommand(
          name: 'defaults',
          description: 'Lists all valid default values for PROPERTY_NAME'
        ),
        Subcommand(
          name: 'get',
          description: 'Gets the value of PROPERTY_NAME from the minikube config file'
        ),
        Subcommand(
          name: 'set',
          description: 'Sets an individual value in a minikube config file'
        ),
        Subcommand(
          name: 'unset',
          description: 'Unsets an individual value in a minikube config file'
        ),
        Subcommand(
          name: 'view',
          description: 'Display values currently set in the minikube config file'
        )
      ]
    ),
    Subcommand(
      name: 'profile',
      description: 'Get or list the current profiles (clusters)',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Lists all minikube profiles'
        )
      ]
    ),
    Subcommand(
      name: 'update-context',
      description: 'Update kubeconfig in case of an IP or port change'
    ),
    Subcommand(
      name: 'service',
      description: 'Returns a URL to connect to a service',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Lists the URLs for the services in your local cluster',
          options: [
            Option(
              name: ['--namespace', '-n'],
              description: 'The services namespace'
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--https',
          description: 'Open the service URL with https instead of http'
        ),
        Option(
          name: '--interval',
          description: 'The initial time interval for each check that wait performs in seconds'
        ),
        Option(
          name: '--namespace',
          description: 'The service namespace'
        ),
        Option(
          name: '--url',
          description: 'Display the Kubernetes service URL in the CLI instead of opening it in the default browser'
        ),
        Option(
          name: '--wait',
          description: 'Amount of time to wait for a service in seconds'
        )
      ]
    ),
    Subcommand(
      name: 'tunnel',
      description: 'Connect to LoadBalancer services',
      options: [
        Option(
          name: ['--cleanup', '-c'],
          description: 'Call with cleanup=true to remove old tunnels'
        )
      ]
    ),
    Subcommand(
      name: 'mount',
      description: 'Mounts the specified directory into minikube',
      options: [
        Option(
          name: '--9p-version',
          description: 'Specify the 9p version that the mount should use'
        ),
        Option(
          name: '--gid',
          description: 'Default group id used for the mount'
        ),
        Option(
          name: '--ip',
          description: 'Specify the ip that the mount should be setup on'
        ),
        Option(
          name: '--kill',
          description: 'Kill the mount process spawned by minikube start'
        ),
        Option(
          name: '--mode',
          description: 'File permissions used for the mount'
        ),
        Option(
          name: '--msize',
          description: 'The number of bytes to use for 9p packet payload'
        ),
        Option(
          name: '--options',
          description: 'Additional mount options, such as cache=fscache'
        ),
        Option(
          name: '--port',
          description: 'Specify the port that the mount should be setup on'
        ),
        Option(
          name: '--type',
          description: 'Specify the mount filesystem type (supported types: 9p)'
        ),
        Option(
          name: '--uid',
          description: 'Default user id used for the mount'
        )
      ]
    ),
    Subcommand(
      name: 'ssh',
      description: 'Log into the minikube environment (for debugging)',
      options: [
        Option(
          name: '--native-ssh',
          description: 'Use native Golang SSH client'
        ),
        Option(
          name: ['--node', '-n'],
          description: 'The node to ssh into'
        )
      ]
    ),
    Subcommand(
      name: 'kubectl',
      description: 'Run a kubectl binary matching the cluster version',
      options: [
        Option(
          name: '--ssh',
          description: 'Use SSH for running kubernetes client on the node'
        )
      ]
    ),
    Subcommand(
      name: 'node',
      description: 'Add, remove, or list additional nodes',
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Adds a node to the given cluster'
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a node from a cluster'
        ),
        Subcommand(
          name: 'list',
          description: 'List nodes'
        ),
        Subcommand(
          name: 'start',
          description: 'Starts a node'
        ),
        Subcommand(
          name: 'stop',
          description: 'Stops a node in a cluster'
        )
      ]
    ),
    Subcommand(
      name: 'cp',
      description: 'Copy the specified file into minikube',
      args: [
        Arg(
        name: '[source] [target]'
      )
      ]
    ),
    Subcommand(
      name: 'ssh-key',
      description: 'Retrieve the ssh identity key path of the specified node',
      options: [
        Option(
          name: ['--node', '-n'],
          description: 'The node to get ssh-key path'
        )
      ]
    ),
    Subcommand(
      name: 'ssh-host',
      description: 'Retrieve the ssh host key of the specified node',
      options: [
        Option(
          name: '--append-known',
          description: 'Add host key to SSH known_hosts file'
        ),
        Option(
          name: ['--node', '-n'],
          description: 'The node to ssh into'
        )
      ]
    ),
    Subcommand(
      name: 'ip',
      description: 'Retrieves the IP address of the specified node',
      options: [
        Option(
          name: ['--node', '-n'],
          description: 'The node to get IP'
        )
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'Returns logs to debug a local Kubernetes cluster',
      options: [
        Option(
          name: '--file',
          description: 'If present, writes to the provided file instead of stdout'
        ),
        Option(
          name: ['--follow', '-f'],
          description: 'Show only the most recent journal entries'
        ),
        Option(
          name: ['--length', '-n'],
          description: 'Number of lines back to go within the log'
        ),
        Option(
          name: '--node',
          description: 'The node to get logs from. Defaults to the primary control plane'
        ),
        Option(
          name: '--problems',
          description: 'Show only log entries which point to known problems'
        )
      ]
    ),
    Subcommand(
      name: 'update-check',
      description: 'Print current and latest version number'
    ),
    Subcommand(
      name: 'version',
      description: 'Print the version of minikube',
      options: [
        Option(
          name: '--components',
          description: 'List versions of all components included with minikube'
        ),
        Option(
          name: '--short',
          description: 'Print just the version number',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'options',
      description: 'Add, remove, or list additional nodes'
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate command completion for a shell',
      subcommands: [
        Subcommand(
          name: 'bash',
          description: 'Bash completion'
        ),
        Subcommand(
          name: 'fish',
          description: 'Fish completion'
        ),
        Subcommand(
          name: 'zsh',
          description: 'Zsh completion'
        )
      ]
    )
  ]
);
