// Auto-generated from TypeScript source: arcappliance.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `arcappliance` CLI
final FigSpec arcapplianceSpec = FigSpec(
  name: 'arcappliance',
  description: 'Commands to manage Arc resource bridge',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Command group for creation of the connection between the Arc resource bridge on-premises appliance VM and its corresponding Azure resource',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to create the connection between the on-premises appliance VM and Azure resource for Arc resource bridge (Azure Stack HCI)',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig, output from deploy command',
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'scvmm',
          description: 'Command to create the connection between the on-premises appliance VM and Azure resource for Arc resource bridge on SCVMM',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig, output from deploy command',
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'vmware',
          description: 'Command to create the connection between the on-premises appliance VM and Azure resource for Arc resource bridge (Arc-enabled VMware)',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig, output from deploy command',
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
    ),
    Subcommand(
      name: 'createconfig',
      description: 'Command group for creating configuration files for Arc resource bridge.\n\n\t\tThis command features two modes - interactive and non-interactive. Interactive mode provides helpful prompts that explain the parameter and what to pass. It is initiated by passing only the required parameters. Non-interactive mode allows you to pass all the parameters needed to create the configuration files without being prompted',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to create configuration files for Arc Resource Bridge on HCI',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The Azure location where the Arc resource bridge Azure resource will be deployed. Must be a valid location where the self-service VM feature for Azure Stack HCI is available and set to the same location as the resource group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
              name: '--authenticationport',
              description: 'Network port used by appliance VM IP to communicate with the cloud agent service endpoint. This port should be open on the firewall to enable communication between the two if the Windows Server physical cluster nodes and Arc resource bridge VM are on separate VLANs',
              args: [
                Arg(
                name: 'authenticationpor'
              )
              ]
            ),
            Option(
              name: '--certificateFilePath',
              description: 'Certificate file path if your proxy server requires the proxy clients to trust a certificate. Only pass a single proxy certificate, not a bundle',
              args: [
                Arg(
                name: 'certificateFilePat'
              )
              ]
            ),
            Option(
              name: '--cloudagent',
              description: 'FQDN or IP address of the Azure Stack HCI MOC cloud agent service used by Arc resource bridge. This can be found in the -infra.yaml configuration file stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'cloudagen'
              )
              ]
            ),
            Option(
              name: '--controlPlaneEndpoint',
              description: 'Arc resource bridge on-premises appliance VM hosts a management kubernetes cluster with a control plane that requires a static IP address. This static IP address must lie within the subnet range specified in the IP address prefix',
              args: [
                Arg(
                name: 'controlPlaneEndpoin'
              )
              ]
            ),
            Option(
              name: '--dnsservers',
              description: 'IP address(es) of DNS server(s) used by Arc resource bridge on-premises appliance VM for DNS resolution. Appliance VM must be able to resolve external sites and internal endpoints. Enter multiple IP addresses as a comma-separated list',
              args: [
                Arg(
                name: 'dnsserver'
              )
              ]
            ),
            Option(
              name: '--gateway',
              description: 'Static gateway IP address, must lie within the subnet range specified in the IP address prefix',
              args: [
                Arg(
                name: 'gatewa'
              )
              ]
            ),
            Option(
              name: '--http',
              description: 'HTTP proxy URL and port information entered as http://:. Example: http://192.168.0.10:80',
              args: [
                Arg(
                name: 'htt'
              )
              ]
            ),
            Option(
              name: '--https',
              description: 'HTTPS URL and port information entered as http://:. Example: https://192.168.0.10:443',
              args: [
                Arg(
                name: 'http'
              )
              ]
            ),
            Option(
              name: '--ipaddressprefix',
              description: 'Arc resource bridge requires 3 IP addresses for the on-premises appliance VM (appliance VM IP, upgrade VM IP, control plane IP). All IPs should reside within the same subnet and fall within the range specified in the IP address prefix. IP address prefix is entered as the subnet\'s IP address range for the virtual network and subnet mask (IP Mask) in CIDR notation (ex: 192.168.7.1/24). An IP Subnet CIDR calculator can be used for this. Example: For IPs within a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'ipaddressprefi'
              )
              ]
            ),
            Option(
              name: '--k8snodeippoolend',
              description: 'Arc resource bridge on-premises appliance VM requires 2 IP addresses (appliance VM IP & upgrade VM IP) that should reside within the same subnet and fall within the range specified in the IP address prefix. IP addresses are specified as an IP range with a minimum size of 2 IP addresses. This parameter is to specify the end range IP. Example: For a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'k8snodeippoolen'
              )
              ]
            ),
            Option(
              name: '--k8snodeippoolstart',
              description: 'Arc resource bridge on-premises appliance VM requires 2 IP addresses (appliance VM IP & upgrade VM IP) that should reside within the same subnet and fall within the range specified in the IP address prefix. IP addresses are specified as an IP range with a minimum size of 2 IP addresses. This parameter is to specify the start range IP. Example: For a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'k8snodeippoolstar'
              )
              ]
            ),
            Option(
              name: '--loginconfigfile',
              description: 'File path for the Azure Stack HCI login configuration file, kvatoken.tok. By default, it is stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'loginconfigfil'
              )
              ]
            ),
            Option(
              name: '--noproxy',
              description: 'The list of comma-separated entries for excluded networks, hosts, or domains from being accessed through the proxy server',
              args: [
                Arg(
                name: 'noprox'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for Arc resource bridge configuration files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            ),
            Option(
              name: '--overwrite-existing',
              description: 'Overwrite existing configuration files. Default: False'
            ),
            Option(
              name: '--port',
              description: 'Port',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--storagecontainer',
              description: 'Azure Stack HCI storage container',
              args: [
                Arg(
                name: 'storagecontaine'
              )
              ]
            ),
            Option(
              name: '--vlanid',
              description: 'VLAN ID',
              args: [
                Arg(
                name: 'vlani'
              )
              ]
            ),
            Option(
              name: '--vswitchname',
              description: 'Azure Stack HCI virtual network switch name',
              args: [
                Arg(
                name: 'vswitchnam'
              )
              ]
            ),
            Option(
              name: '--working-dir',
              description: 'Local directory path to store image & files downloaded for Arc resource bridge on-premises appliance VM deployment. If not specified, a default temp directory is used',
              args: [
                Arg(
                name: 'working-di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scvmm',
          description: 'Command to create Arc resource bridge configuration files for Arc-enabled SCVMM',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The Azure location where the Arc resource bridgeAzure resource will be deployed. Must be a valid location where Arc-enabled SCVMM is available and set to the same location as the resource group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
              name: '--address',
              description: 'SCVMM Server FQDN(Role name in case of HAVMM) or IP address',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--certificateFilePath',
              description: 'Certificate file path if your proxy server requires the proxy clients to trust a certificate (press enter to skip)',
              args: [
                Arg(
                name: 'certificateFilePat'
              )
              ]
            ),
            Option(
              name: '--cloudname',
              description: 'SCVMM cloud',
              args: [
                Arg(
                name: 'cloudnam'
              )
              ]
            ),
            Option(
              name: '--controlPlaneEndpoint',
              description: 'Arc resource bridge on-premises appliance VM hosts a management kubernetes cluster with a control plane that requires a static IP address. This static IP address must lie within the subnet range specified in the IP address prefix',
              args: [
                Arg(
                name: 'controlPlaneEndpoin'
              )
              ]
            ),
            Option(
              name: '--dnsservers',
              description: 'IP address(es) of DNS server(s) used by Arc resource bridge on-premises appliance VM for DNS resolution. Appliance VM must be able to resolve external sites and internal endpoints. Enter multiple IP addresses as a comma-separated list',
              args: [
                Arg(
                name: 'dnsserver'
              )
              ]
            ),
            Option(
              name: '--gateway',
              description: 'Static gateway IP address, must lie within the subnet range specified in the IP address prefix',
              args: [
                Arg(
                name: 'gatewa'
              )
              ]
            ),
            Option(
              name: '--highlyavailable',
              description: 'Deploy resource bridge as Highly available.Highly available vm recommended for production environment.(Expected true/false)',
              args: [
                Arg(
                name: 'highlyavailabl'
              )
              ]
            ),
            Option(
              name: '--http',
              description: 'HTTP proxy URL and port information entered as http://:. Example: http://192.168.0.10:80',
              args: [
                Arg(
                name: 'htt'
              )
              ]
            ),
            Option(
              name: '--https',
              description: 'HTTPS URL and port information entered as http://:. Example: https://192.168.0.10:443',
              args: [
                Arg(
                name: 'http'
              )
              ]
            ),
            Option(
              name: '--ipaddressprefix',
              description: 'Arc resource bridge requires 3 IP addresses for the on-premises appliance VM (appliance VM IP, upgrade VM IP, control plane IP). All IPs should reside within the same subnet and fall within the range specified in the IP address prefix. IP address prefix is entered as the subnet\'s IP address range for the virtual network and subnet mask (IP Mask) in CIDR notation (ex: 192.168.7.1/24). An IP Subnet CIDR calculator can be used for this. Example: For IPs within a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'ipaddressprefi'
              )
              ]
            ),
            Option(
              name: '--ippool',
              description: 'SCVMM Static IP Pool',
              args: [
                Arg(
                name: 'ippoo'
              )
              ]
            ),
            Option(
              name: '--k8snodeippoolend',
              description: 'Arc resource bridge on-premises appliance VM requires 2 IP addresses (appliance VM IP & upgrade VM IP) that should reside within the same subnet and fall within the range specified in the IP address prefix. IP addresses are specified as an IP range with a minimum size of 2 IP addresses. This parameter is to specify the end range IP. Example: For a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'k8snodeippoolen'
              )
              ]
            ),
            Option(
              name: '--k8snodeippoolstart',
              description: 'Arc resource bridge on-premises appliance VM requires 2 IP addresses (appliance VM IP & upgrade VM IP) that should reside within the same subnet and fall within the range specified in the IP address prefix. IP addresses are specified as an IP range with a minimum size of 2 IP addresses. This parameter is to specify the start range IP. Example: For a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'k8snodeippoolstar'
              )
              ]
            ),
            Option(
              name: '--libshare',
              description: 'SCVMM library share (Ensure VMM server has write access on the selected Library Share)',
              args: [
                Arg(
                name: 'libshar'
              )
              ]
            ),
            Option(
              name: '--macaddress',
              description: 'Static MAC address (Press enter to assign MAC from Default VMM MAC Pool)',
              args: [
                Arg(
                name: 'macaddres'
              )
              ]
            ),
            Option(
              name: '--memorymib',
              description: 'Specify the memory (MB) for the Arc resource bridge on-premises appliance VM',
              args: [
                Arg(
                name: 'memorymi'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'SCVMM VM network',
              args: [
                Arg(
                name: 'networ'
              )
              ]
            ),
            Option(
              name: '--noproxy',
              description: 'The list of comma separated entries for excluded networks, hosts, or domains from being accessed through the proxy server',
              args: [
                Arg(
                name: 'noprox'
              )
              ]
            ),
            Option(
              name: '--numcpus',
              description: 'Specify the number of CPUs to allocate to the Arc resource bridge on-premises appliance VM',
              args: [
                Arg(
                name: 'numcpu'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for Arc resource bridge configuration files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            ),
            Option(
              name: '--overwrite-existing',
              description: 'Overwrite existing configuration files. Default: False'
            ),
            Option(
              name: '--password',
              description: 'SCVMM Administrator Password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'SCVMM server port (The default is 8100. This is the port number specified for VMM console to server connection e.g. vmmserver.constoso.com:8100)',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'SCVMM Administrator Username (domain\\username)',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--working-dir',
              description: 'Local directory path to store image & files downloaded for Arc resource bridge on-premises appliance VM deployment. If not specified, a default temp directory is used',
              args: [
                Arg(
                name: 'working-di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vmware',
          description: 'Command to create Arc resource bridge configuration files for Arc-enabled VMware',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The Azure location where the Arc resource bridge Azure resource will be deployed. Must be a valid location where Arc-enabled VMware is available and set to the same location as the resource group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
              name: '--address',
              description: 'FQDN or IP address for vCenter Server instance. Ex: 10.160.0.1',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--certificateFilePath',
              description: 'Certificate file path if your proxy server requires the proxy clients to trust a certificate. Only pass a single proxy certificate, not a bundle. (Press enter to skip)',
              args: [
                Arg(
                name: 'certificateFilePat'
              )
              ]
            ),
            Option(
              name: '--controlPlaneEndpoint',
              description: 'Arc resource bridge on-premises appliance VM hosts a management kubernetes cluster with a control plane that requires a static IP address. This static IP address must lie within the subnet range specified in the IP address prefix',
              args: [
                Arg(
                name: 'controlPlaneEndpoin'
              )
              ]
            ),
            Option(
              name: '--datacenter',
              description: 'Name of the datacenter (as shown in vSphere) where the Arc resource bridge on-premises appliance VM should be deployed',
              args: [
                Arg(
                name: 'datacente'
              )
              ]
            ),
            Option(
              name: '--datastore',
              description: 'Name of datastore to be used for Arc resource bridge on-premises appliance VM',
              args: [
                Arg(
                name: 'datastor'
              )
              ]
            ),
            Option(
              name: '--disksizegib',
              description: 'Specify the disk size (GB) for the Arc resource bridge on-premises appliance VM',
              args: [
                Arg(
                name: 'disksizegi'
              )
              ]
            ),
            Option(
              name: '--dnsservers',
              description: 'IP address(es) of DNS server(s) used by Arc resource bridge on-premises appliance VM for DNS resolution. Appliance VM must be able to resolve external sites and internal endpoints. Enter multiple IP addresses as a comma-separated list',
              args: [
                Arg(
                name: 'dnsserver'
              )
              ]
            ),
            Option(
              name: '--folder',
              description: 'Full path to the vSphere folder, including vSphere VM name and template folder. This is where the Arc resource bridge appliance VM will be deployed. Ex: /DatacenterA/vm/FolderA',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: '--gateway',
              description: 'Static gateway IP address, must lie within the subnet range specified in the IP address prefix',
              args: [
                Arg(
                name: 'gatewa'
              )
              ]
            ),
            Option(
              name: '--http',
              description: 'HTTP proxy URL and port information entered as http://:. Example: http://192.168.0.10:80',
              args: [
                Arg(
                name: 'htt'
              )
              ]
            ),
            Option(
              name: '--https',
              description: 'HTTPS URL and port information entered as http://:. Example: https://192.168.0.10:443',
              args: [
                Arg(
                name: 'http'
              )
              ]
            ),
            Option(
              name: '--ipaddressprefix',
              description: 'Arc resource bridge requires 3 IP addresses for the on-premises appliance VM (appliance VM IP, upgrade VM IP, control plane IP). All IPs should reside within the same subnet and fall within the range specified in the IP address prefix. IP address prefix is entered as the subnet\'s IP address range for the virtual network and subnet mask (IP Mask) in CIDR notation (ex: 192.168.7.1/24). An IP Subnet CIDR calculator can be used for this. Example: For IPs within a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'ipaddressprefi'
              )
              ]
            ),
            Option(
              name: '--k8snodeippoolend',
              description: 'Arc resource bridge on-premises appliance VM requires 2 IP addresses (appliance VM IP & upgrade VM IP) that should reside within the same subnet and fall within the range specified in the IP address prefix. IP addresses are specified as an IP range with a minimum size of 2 IP addresses. This parameter is to specify the end range IP. Example: For a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'k8snodeippoolen'
              )
              ]
            ),
            Option(
              name: '--k8snodeippoolstart',
              description: 'Arc resource bridge on-premises appliance VM requires 2 IP addresses (appliance VM IP & upgrade VM IP) that should reside within the same subnet and fall within the range specified in the IP address prefix. IP addresses are specified as an IP range with a minimum size of 2 IP addresses. This parameter is to specify the start range IP. Example: For a subnet range of 192.168.7.1 - 192.168.7.254, the IP address prefix is 192.168.7.1/24. Within 192.168.7.1/24, set k8snodeippoolstart (appliance VM IP) to 192.168.7.2, k8snodeippoolend (upgrade VM IP) to 192.168.7.3 and control plane IP to 192.168.7.4',
              args: [
                Arg(
                name: 'k8snodeippoolstar'
              )
              ]
            ),
            Option(
              name: '--memorymib',
              description: 'Specify the memory (MB) for the Arc resource bridge on-premises appliance VM',
              args: [
                Arg(
                name: 'memorymi'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'Name of the virtual network or segment to connect Arc resource bridge on-premises appliance VM to. This network should allow the appliance VM to communicate with vCenter Server and the Azure endpoints (or internet)',
              args: [
                Arg(
                name: 'networ'
              )
              ]
            ),
            Option(
              name: '--noproxy',
              description: 'The list of comma separated entries for excluded networks, hosts, or domains from being accessed through the proxy server',
              args: [
                Arg(
                name: 'noprox'
              )
              ]
            ),
            Option(
              name: '--numcpus',
              description: 'Specify the number of CPUs to allocate to the Arc resource bridge on-premises appliance VM',
              args: [
                Arg(
                name: 'numcpu'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for Arc resource bridge configuration files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            ),
            Option(
              name: '--overwrite-existing',
              description: 'Overwrite existing configuration files. Default: False'
            ),
            Option(
              name: '--password',
              description: 'Password for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--resourcepool',
              description: 'Full path to the vSphere resource pool where the on-premises appliance VM will be deployed. Ex: /DatacenterA/host/Cluster-1/Resources/ResourcePoolA',
              args: [
                Arg(
                name: 'resourcepoo'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Username for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--working-dir',
              description: 'Local directory path to store image & files downloaded for Arc resource bridge on-premises appliance VM deployment. If not specified, a default temp directory is used',
              args: [
                Arg(
                name: 'working-di'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Command group for deletion of an Arc resource bridge on-premises appliance VM and its Azure resource',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to delete the on-premises appliance VM on Azure Stack HCI and Arc resource bridge Azure resource',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'scvmm',
          description: 'Command to delete the on-premises appliance VM on SCVMM and Azure resource',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'vmware',
          description: 'Command to delete the on-premises appliance VM and Azure resource for Arc resource bridge (Arc-enabled VMware)',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Command group for deployment of the Arc resource bridge on-premises appliance VM and creation of its corresponding Azure resource',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to deploy the Arc resource bridge\'s on-premises appliance VM on Azure Stack HCI and its corresponding Azure resource',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--outfile',
              description: 'File output path for the kubeconfig, defaults to ./kubeconfig',
              args: [
                Arg(
                name: 'outfil'
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
          name: 'scvmm',
          description: 'Command to deploy the Arc resource bridge\'s on-premises appliance VM and its Azure resource for Arc-enabled SCVMM',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--outfile',
              description: 'File output path for the kubeconfig, defaults to ./kubeconfig',
              args: [
                Arg(
                name: 'outfil'
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
          name: 'vmware',
          description: 'Command to deploy the Arc resource bridge\'s on-premises appliance VM on VMWare and its corresponding Azure resource',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--outfile',
              description: 'File output path for the kubeconfig, defaults to ./kubeconfig',
              args: [
                Arg(
                name: 'outfil'
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
    ),
    Subcommand(
      name: 'get-credentials',
      description: 'Command to get the on-premises infrastructure credentials used by Arc resource bridge to manage on-premises resources',
      options: [

        Option(
          name: '--config-file',
          description: 'Path to Appliance Config File. This is required if name and resource group are not specified',
          args: [
            Arg(
            name: 'config-fil'
          )
          ]
        ),
        Option(
          name: '--credentials-dir',
          description: 'Specify a directory path where the log key, certificate output and kubeconfig are saved. If no value specified, for Darwin/Linux defaults to .kva/.ssh for keys and current directory for kubeconfig,for windows defaults to C:\\ProgramData\\kva.ssh for keys and current directory for kubeconfig',
          args: [
            Arg(
            name: 'credentials-di'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Arc resource bridge',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--overwrite-existing',
          description: 'Overwrite existing kubeconfig file. Default: False'
        ),
        Option(
          name: '--partner',
          description: 'Returns the credentials used by private cloud RP/service to access Arc Resource Bridge. Default: customer user credentials'
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
          description: 'Do not prompt for confirmation to create credentials_dir if directory does not exist. Default is to prompt for directory creation'
        )
      ]
    ),
    Subcommand(
      name: 'get-upgrades',
      description: 'Command to fetch the available upgrades for an Appliance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Arc resource bridge',
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
      name: 'list',
      description: 'Command to list Arc resource bridge resources',
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
      name: 'notice',
      description: 'Command to display the EULA & Notice File link for Arc resource bridge'
    ),
    Subcommand(
      name: 'show',
      description: 'Command to provide information about an Arc resource bridge Azure resource. This is useful to monitor the status of the resource bridge',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Arc resource bridge',
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
      name: 'logs',
      description: 'Command group for collecting logs for Arc resource bridge. Run get-credentials command before running logs command',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to collect logs for an Arc resource bridge\'s on-premises appliance VM on Azure Stack HCI',
          options: [

            Option(
              name: '--cloudagent',
              description: 'FQDN or IP address of the Azure Stack HCI MOC cloud agent service used by Arc resource bridge. This can be found in the -infra.yaml configuration file stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'cloudagen'
              )
              ]
            ),
            Option(
              name: '--credentials-dir',
              description: 'Folder to read logging key and certificate from. If no value specified, defaults to .kva/.ssh for Darwin and Linux and C:\\ProgramData\\kva.ssh for Windows',
              args: [
                Arg(
                name: 'credentials-di'
              )
              ]
            ),
            Option(
              name: '--ip',
              description: 'Arc resource bridge on-premises appliance VM IP or its control plane IP',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig, output from deploy command',
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: '--loginconfigfile',
              description: 'File path for the Azure Stack HCI login configuration file, kvatoken.tok. By default, it is stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'loginconfigfil'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for on-premises appliance VM log files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scvmm',
          description: 'Command to collect logs for Arc resource bridge on SCVMM (Arc-enabled SCVMM)',
          options: [

            Option(
              name: '--credentials-dir',
              description: 'Folder to read logging key and certificate from. If no value specified, defaults to .kva/.ssh for Darwin and Linux and C:\\ProgramData\\kva.ssh for Windows',
              args: [
                Arg(
                name: 'credentials-di'
              )
              ]
            ),
            Option(
              name: '--ip',
              description: 'Arc resource bridge on-premises appliance VM IP or its control plane IP',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig, output from deploy command',
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for on-premises appliance VM log files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vmware',
          description: 'Command to collect logs for Arc resource bridge on VMware (Arc-enabled VMware)',
          options: [

            Option(
              name: '--address',
              description: 'FQDN or IP address for vCenter Server instance. Ex: 10.160.0.1',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--credentials-dir',
              description: 'Folder to read logging key and certificate from. If no value specified, defaults to .kva/.ssh for Darwin and Linux and C:\\ProgramData\\kva.ssh for Windows',
              args: [
                Arg(
                name: 'credentials-di'
              )
              ]
            ),
            Option(
              name: '--ip',
              description: 'Arc resource bridge on-premises appliance VM IP or its control plane IP',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig, output from deploy command',
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for on-premises appliance VM log files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Password for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Username for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'prepare',
      description: 'Command group for preparing for an Arc resource bridge deployment. This downloads the necessary images to build the on-premises appliance VM and uploads it to the private cloud gallery',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to prepare the on-premises Azure Stack HCI environment for an Arc resource bridge deployment. This downloads the necessary images to build the on-premises appliance VM and uploads it to the private cloud gallery',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'scvmm',
          description: 'Command to prepare for an Arc resource bridge deployment on SCVMM for Arc-enabled SCVMM. This downloads the necessary images to build the on-premises appliance VM and uploads it to the private cloud gallery',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'vmware',
          description: 'Command to prepare for an Arc resource bridge deployment on VMware for Arc-enabled VMware. This downloads the necessary images to build the on-premises appliance VM and uploads it to the private cloud gallery',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Command group for consecutively running the Arc resource bridge commands required for deployment. This command is idempotent',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to consecutively run the Arc resource bridge commands required for deployment on Azure Stack HCI. This command is idempotent',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The Azure location where the Arc resource bridge Azure resource will be deployed. Must be set to the same location as the resource group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
              name: '--cloudagent',
              description: 'FQDN or IP address of the Azure Stack HCI MOC cloud agent service used by Arc resource bridge. This can be found in the -infra.yaml configuration file stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'cloudagen'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Delete Arc resource bridge on-premises appliance VM and Azure resource with the same name/id (if it exists) before continuing to the run command'
            ),
            Option(
              name: '--loginconfigfile',
              description: 'File path for the Azure Stack HCI login configuration file, kvatoken.tok. By default, it is stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'loginconfigfil'
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for on-premises appliance VM log files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
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
            ),
            Option(
              name: '--working-dir',
              description: 'Local directory path to store image & files downloaded for Arc resource bridge on-premises appliance VM deployment. If not specified, a default temp directory is used',
              args: [
                Arg(
                name: 'working-di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scvmm',
          description: 'Command to consecutively run the Arc resource bridge commands required for deployment on SCVMM. This command is idempotent',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The Azure location where the Arc resource bridge Azure resource will be deployed. Must be set to the same location as the resource group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
              name: '--address',
              description: 'SCVMM Server FQDN(Role name in case of HAVMM) or IP address',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Delete Arc resource bridge on-premises appliance VM and Azure resource with the same name/id (if it exists) before continuing to the run command'
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for on-premises appliance VM log files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'SCVMM Administrator Password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'SCVMM server port (The default is 8100. This is the port number specified for VMM console to server connection e.g. vmmserver.constoso.com:8100)',
              args: [
                Arg(
                name: 'por'
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
            ),
            Option(
              name: '--username',
              description: 'SCVMM Administrator Username (domain\\username)',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--working-dir',
              description: 'Local directory path to store image & files downloaded for Arc resource bridge on-premises appliance VM deployment. If not specified, a default temp directory is used',
              args: [
                Arg(
                name: 'working-di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vmware',
          description: 'Command to consecutively run the Arc resource bridge commands required for deployment on VMware (Arc-enabled VMware). This command is idempotent',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The Azure location where the Arc resource bridge Azure resource will be deployed. Must be set to the same location as the resource group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
              name: '--address',
              description: 'FQDN or IP address for vCenter Server instance. Ex: 10.160.0.1',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Delete Arc resource bridge on-premises appliance VM and Azure resource with the same name/id (if it exists) before continuing to the run command'
            ),
            Option(
              name: '--out-dir',
              description: 'Output directory for on-premises appliance VM log files, defaults to ./ (current directory)',
              args: [
                Arg(
                name: 'out-di'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Password for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'passwor'
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
            ),
            Option(
              name: '--username',
              description: 'Username for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--working-dir',
              description: 'Local directory path to store image & files downloaded for Arc resource bridge on-premises appliance VM deployment. If not specified, a default temp directory is used',
              args: [
                Arg(
                name: 'working-di'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'troubleshoot',
      description: 'Command group for troubleshooting an Appliance cluster',
      subcommands: [

        Subcommand(
          name: 'command',
          description: 'Command group for troubleshooting an Appliance cluster by executing a shell command',
          subcommands: [

            Subcommand(
              name: 'hci',
              description: 'Command to execute a shell command on an HCI cluster for troubleshooting',
              options: [

                Option(
                  name: '--cloudagent',
                  description: 'FQDN or IP address of the Azure Stack HCI MOC cloud agent service used by Arc resource bridge. This can be found in the -infra.yaml configuration file stored locally on the HCI cluster',
                  args: [
                    Arg(
                    name: 'cloudagen'
                  )
                  ]
                ),
                Option(
                  name: '--command',
                  description: 'This is the shell command to be executed',
                  args: [
                    Arg(
                    name: 'comman'
                  )
                  ]
                ),
                Option(
                  name: '--credentials-dir',
                  description: 'This is the path to the log key directory, which stores credentials for your Resource Bridge. Once a scoped access key has been generated, use the az arcappliance get-credentials command to download it',
                  args: [
                    Arg(
                    name: 'credentials-di'
                  )
                  ]
                ),
                Option(
                  name: '--ip',
                  description: 'Arc resource bridge on-premises appliance VM IP or its control plane IP',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--loginconfigfile',
                  description: 'File path for the Azure Stack HCI login configuration file, kvatoken.tok. By default, it is stored locally on the HCI cluster',
                  args: [
                    Arg(
                    name: 'loginconfigfil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'scvmm',
              description: 'Command to execute a shell command on an SCVMM cluster for troubleshooting',
              options: [

                Option(
                  name: '--command',
                  description: 'This is the shell command to be executed',
                  args: [
                    Arg(
                    name: 'comman'
                  )
                  ]
                ),
                Option(
                  name: '--credentials-dir',
                  description: 'This is the path to the log key directory, which stores credentials for your Resource Bridge. Once a scoped access key has been generated, use the az arcappliance get-credentials command to download it',
                  args: [
                    Arg(
                    name: 'credentials-di'
                  )
                  ]
                ),
                Option(
                  name: '--ip',
                  description: 'Arc resource bridge on-premises appliance VM IP or its control plane IP',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'vmware',
              description: 'Command to execute a shell command on an VMWare cluster for troubleshooting',
              options: [

                Option(
                  name: '--address',
                  description: 'FQDN or IP address for vCenter Server instance. Ex: 10.160.0.1',
                  args: [
                    Arg(
                    name: 'addres'
                  )
                  ]
                ),
                Option(
                  name: '--command',
                  description: 'This is the shell command to be executed',
                  args: [
                    Arg(
                    name: 'comman'
                  )
                  ]
                ),
                Option(
                  name: '--credentials-dir',
                  description: 'This is the path to the log key directory, which stores credentials for your Resource Bridge. Once a scoped access key has been generated, use the az arcappliance get-credentials command to download it',
                  args: [
                    Arg(
                    name: 'credentials-di'
                  )
                  ]
                ),
                Option(
                  name: '--ip',
                  description: 'Arc resource bridge on-premises appliance VM IP or its control plane IP',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'Password for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'Username for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
                  args: [
                    Arg(
                    name: 'usernam'
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
      name: 'update-infracredentials',
      description: 'Command group for updating the on-premises infrastructure credentials used by Arc resource bridge to manage on-premises resources',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to update the on-premises infrastructure credentials for Azure Stack HCI used by Arc resource bridge',
          options: [

            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig output from deploy command',
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: '--cloudagent',
              description: 'FQDN or IP address of the Azure Stack HCI MOC cloud agent service used by Arc resource bridge. This can be found in the -infra.yaml configuration file stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'cloudagen'
              )
              ]
            ),
            Option(
              name: '--loginconfigfile',
              description: 'File path for the Azure Stack HCI login configuration file, kvatoken.tok. By default, it is stored locally on the HCI cluster',
              args: [
                Arg(
                name: 'loginconfigfil'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scvmm',
          description: 'Command to update the SCVMM credentials used by Arc resource bridge',
          options: [

            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig output from deploy command',
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: '--address',
              description: 'SCVMM Server FQDN(Role name in case of HAVMM) or IP address',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'SCVMM Administrator Password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'SCVMM server port (The default is 8100. This is the port number specified for VMM console to server connection e.g. vmmserver.constoso.com:8100)',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'SCVMM Administrator Username (domain\\username)',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vmware',
          description: 'Command to update the VMware credentials used by Arc resource bridge',
          options: [

            Option(
              name: '--kubeconfig',
              description: 'Path to kubeconfig output from deploy command',
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: '--address',
              description: 'FQDN or IP address for vCenter Server instance. Ex: 10.160.0.1',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Password for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--skipWait',
              description: 'Use this flag to update the vCenter credentials without verification. This is only recommended if you are locked out of vSphere and validation is not possible until lockout period expires'
            ),
            Option(
              name: '--username',
              description: 'Username for vSphere account that Arc resource bridge uses for on-premises infrastructure guest management',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Command group for upgrading an Appliance cluster',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to upgrade an Appliance on Azure Stack HCI',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to Appliance Config File',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          name: 'scvmm',
          description: 'Command to upgrade an Appliance on SCVMM',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to Appliance Config File',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          name: 'vmware',
          description: 'Command to upgrade an Appliance on VMware',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to Appliance Config File',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
        )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'Command group to perform validations on Arc resource bridge configuration files and network settings',
      subcommands: [

        Subcommand(
          name: 'hci',
          description: 'Command to validate Arc resource bridge configuration files and network settings on Azure Stack HCI - should be done before \'prepare\' command',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'scvmm',
          description: 'Command to validate Arc resource bridge configuration files and network settings for Arc-enabled SCVMM  - should be done before \'prepare\' command',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
          name: 'vmware',
          description: 'Command to validate Arc resource bridge configuration files and network settings for Arc-enabled VMware - should be done before \'prepare\' command',
          options: [

            Option(
              name: '--config-file',
              description: 'Path to the Arc resource bridge appliance config file, -appliance.yaml',
              args: [
                Arg(
                name: 'config-fil'
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
              name: ['--name', '-n'],
              description: 'Name of the Arc resource bridge',
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
        )
      ]
    )
  ]
);
