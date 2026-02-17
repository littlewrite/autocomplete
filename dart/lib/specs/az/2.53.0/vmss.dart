// Auto-generated from TypeScript source: vmss.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vmss` CLI
final FigSpec vmssSpec = FigSpec(
  name: 'vmss',
  description: 'Manage groupings of virtual machines in an Azure Virtual Machine Scale Set (VMSS)',
  subcommands: [

    Subcommand(
      name: 'application',
      description: 'Manage applications for VM scale set',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List applications for VMSS',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: 'set',
          description: 'Set applications for VMSS',
          options: [

            Option(
              name: '--app-version-ids',
              description: 'Space-separated application version ids to set to VM',
              args: [
                Arg(
                name: 'app-version-id'
              )
              ]
            ),
            Option(
              name: '--app-config-overrides',
              description: 'Space-separated application configuration overrides for each application version ids. It should have the same number of items as the application version ids. Null is available for a application which does not have a configuration override',
              args: [
                Arg(
                name: 'app-config-override'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--order-applications',
              description: 'Whether to set order index at each gallery application. If specified, the first app version id gets specified an order = 1, then the next one 2, and so on. This parameter is meant to be used when the VMApplications specified by app version ids must be installed in a particular order; the lowest order is installed first'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--treat-deployment-as-failure',
              description: 'Space-separated list of true or false corresponding to the application version ids. If set to true, failure to install or update gallery application version operation will fail this operation',
              args: [
                Arg(
                name: 'treat-deployment-as-failur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create an Azure Virtual Machine Scale Set',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the virtual machine scale set',
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
          name: '--accelerated-networking',
          description: 'Enable accelerated networking. Unless specified, CLI will enable it based on machine image and size',
          args: [
            Arg(
            name: 'accelerated-networking',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--accept-term',
          description: 'Accept the license agreement and privacy statement',
          args: [
            Arg(
            name: 'accept-ter'
          )
          ]
        ),
        Option(
          name: '--admin-password',
          description: 'Password for the VM if authentication type is \'Password\'',
          args: [
            Arg(
            name: 'admin-passwor'
          )
          ]
        ),
        Option(
          name: '--admin-username',
          description: 'Username for the VM. Default value is current username of OS. If the default value is system reserved, then default value will be set to azureuser. Please refer to https://docs.microsoft.com/rest/api/compute/virtualmachines/createorupdate#osprofile to get a full list of reserved values',
          args: [
            Arg(
            name: 'admin-usernam'
          )
          ]
        ),
        Option(
          name: '--app-gateway',
          description: 'Name to use when creating a new application gateway (default) or referencing an existing one. Can also reference an existing application gateway by ID or specify "" for none',
          args: [
            Arg(
            name: 'app-gatewa'
          )
          ]
        ),
        Option(
          name: '--app-gateway-capacity',
          description: 'The number of instances to use when creating a new application gateway',
          args: [
            Arg(
            name: 'app-gateway-capacit'
          )
          ]
        ),
        Option(
          name: '--app-gateway-sku',
          description: 'SKU when creating a new application gateway',
          args: [
            Arg(
            name: 'app-gateway-sk'
          )
          ]
        ),
        Option(
          name: '--app-gateway-subnet-address-prefix',
          description: 'The subnet IP address prefix to use when creating a new application gateway in CIDR format',
          args: [
            Arg(
            name: 'app-gateway-subnet-address-prefi'
          )
          ]
        ),
        Option(
          name: '--asgs',
          description: 'Space-separated list of existing application security groups to associate with the VM',
          args: [
            Arg(
            name: 'asg'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Accept system or user assigned identities separated by spaces. Use \'[system]\' to refer system assigned identity, or a resource id to refer user assigned identity. Check out help for more examples',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--authentication-type',
          description: 'Type of authentication to use with the VM. Defaults to password for Windows and SSH public key for Linux. "all" enables both ssh and password authentication',
          args: [
            Arg(
            name: 'authentication-type',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'password'),
              FigSuggestion(name: 'ssh')
            ]
          )
          ]
        ),
        Option(
          name: '--automatic-repairs-action',
          description: 'Type of repair action that will be used for repairing unhealthy virtual machines in the scale set',
          args: [
            Arg(
            name: 'automatic-repairs-action',
            suggestions: [

              FigSuggestion(name: 'Reimage'),
              FigSuggestion(name: 'Replace'),
              FigSuggestion(name: 'Restart')
            ]
          )
          ]
        ),
        Option(
          name: '--automatic-repairs-grace-period',
          description: 'The amount of time (in minutes, between 30 and 90) for which automatic repairs are suspended due to a state change on VM',
          args: [
            Arg(
            name: 'automatic-repairs-grace-perio'
          )
          ]
        ),
        Option(
          name: '--backend-pool-name',
          description: 'Name to use for the backend pool when creating a new load balancer or application gateway',
          args: [
            Arg(
            name: 'backend-pool-nam'
          )
          ]
        ),
        Option(
          name: '--backend-port',
          description: 'When creating a new load balancer, backend port to open with NAT rules (Defaults to 22 on Linux and 3389 on Windows). When creating an application gateway, the backend port to use for the backend HTTP settings',
          args: [
            Arg(
            name: 'backend-por'
          )
          ]
        ),
        Option(
          name: ['--capacity-reservation-group', '--crg'],
          description: 'The ID or name of the capacity reservation group that is used to allocate. Pass in "None" to disassociate the capacity reservation group. Please note that if you want to delete a VM/VMSS that has been associated with capacity reservation group, you need to disassociate the capacity reservation group first',
          args: [
            Arg(
            name: 'capacity-reservation-grou'
          )
          ]
        ),
        Option(
          name: '--computer-name-prefix',
          description: 'Computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 15 characters long',
          args: [
            Arg(
            name: 'computer-name-prefi'
          )
          ]
        ),
        Option(
          name: '--custom-data',
          description: 'Custom init script file or text (cloud-init, cloud-config, etc..)',
          args: [
            Arg(
            name: 'custom-dat'
          )
          ]
        ),
        Option(
          name: '--data-disk-caching',
          description: 'Storage caching type for data disk(s), including \'None\', \'ReadOnly\', \'ReadWrite\', etc. Use a singular value to apply on all disks, or use <lun>=<vaule1> <lun>=<value2> to configure individual disk',
          args: [
            Arg(
            name: 'data-disk-cachin'
          )
          ]
        ),
        Option(
          name: '--data-disk-delete-option',
          description: 'Specify whether data disk should be deleted or detached upon VMSS Flex deletion (This feature is only for VMSS with flexible orchestration mode)',
          args: [
            Arg(
            name: 'data-disk-delete-option',
            suggestions: [

              FigSuggestion(name: 'Delete'),
              FigSuggestion(name: 'Detach')
            ]
          )
          ]
        ),
        Option(
          name: '--data-disk-encryption-sets',
          description: 'Names or IDs (space delimited) of disk encryption sets for data disks',
          args: [
            Arg(
            name: 'data-disk-encryption-set'
          )
          ]
        ),
        Option(
          name: '--data-disk-iops',
          description: 'Specify the Read-Write IOPS (space delimited) for the managed disk. Should be used only when StorageAccountType is UltraSSD_LRS. If not specified, a default value would be assigned based on diskSizeGB',
          args: [
            Arg(
            name: 'data-disk-iop'
          )
          ]
        ),
        Option(
          name: '--data-disk-mbps',
          description: 'Specify the bandwidth in MB per second (space delimited) for the managed disk. Should be used only when StorageAccountType is UltraSSD_LRS. If not specified, a default value would be assigned based on diskSizeGB',
          args: [
            Arg(
            name: 'data-disk-mbp'
          )
          ]
        ),
        Option(
          name: '--data-disk-sizes-gb',
          description: 'Space-separated empty managed data disk sizes in GB to create',
          args: [
            Arg(
            name: 'data-disk-sizes-g'
          )
          ]
        ),
        Option(
          name: '--disable-integrity-monitoring',
          description: 'Disable the default behavior of installing guest attestation extension and enabling System Assigned Identity for Trusted Launch enabled VMs and VMSS'
        ),
        Option(
          name: '--disable-integrity-monitoring-autoupgrade',
          description: 'Disable auto upgrade of guest attestation extension for Trusted Launch enabled VMs and VMSS'
        ),
        Option(
          name: '--disable-overprovision',
          description: 'Overprovision option (see https://azure.microsoft.com/documentation/articles/virtual-machine-scale-sets-overview/ for details)',
          args: [
            Arg(
            name: 'disable-overprovisio'
          )
          ]
        ),
        Option(
          name: '--disk-controller-type',
          description: 'Specify the disk controller type configured for the VM or VMSS',
          args: [
            Arg(
            name: 'disk-controller-type',
            suggestions: [

              FigSuggestion(name: 'NVMe'),
              FigSuggestion(name: 'SCSI')
            ]
          )
          ]
        ),
        Option(
          name: '--dns-servers',
          description: 'Space-separated IP addresses of DNS servers, e.g. 10.0.0.5 10.0.0.6',
          args: [
            Arg(
            name: 'dns-server'
          )
          ]
        ),
        Option(
          name: '--edge-zone',
          description: 'The name of edge zone',
          args: [
            Arg(
            name: 'edge-zon'
          )
          ]
        ),
        Option(
          name: '--enable-agent',
          description: 'Indicate whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified, default behavior is to set it to true. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later',
          args: [
            Arg(
            name: 'enable-agent',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-auto-update',
          description: 'Indicate whether Automatic Updates is enabled for the Windows virtual machine',
          args: [
            Arg(
            name: 'enable-auto-update',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-cross-zone-upgrade',
          description: 'Set this Boolean property will allow VMSS to ignore AZ boundaries when constructing upgrade batches, and only consider Update Domain and maxBatchInstancePercent to determine the batch size',
          args: [
            Arg(
            name: 'enable-cross-zone-upgrade',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-hibernation',
          description: 'The flag that enable or disable hibernation capability on the VMSS',
          args: [
            Arg(
            name: 'enable-hibernation',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-osimage-notification',
          description: 'Specify whether the OS Image Scheduled event is enabled or disabled',
          args: [
            Arg(
            name: 'enable-osimage-notification',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-secure-boot',
          description: 'Enable secure boot',
          args: [
            Arg(
            name: 'enable-secure-boot',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-spot-restore',
          description: 'Enable the Spot-Try-Restore feature where evicted VMSS SPOT instances will be tried to be restored opportunistically based on capacity availability and pricing constraints',
          args: [
            Arg(
            name: 'enable-spot-restore',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-vtpm',
          description: 'Enable vTPM',
          args: [
            Arg(
            name: 'enable-vtpm',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-at-host',
          description: 'Enable Host Encryption for the VM or VMSS. This will enable the encryption for all the disks including Resource/Temp disk at host itself',
          args: [
            Arg(
            name: 'encryption-at-host',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ephemeral-os-disk',
          description: 'Allows you to create an OS disk directly on the host node, providing local disk performance and faster VM/VMSS reimage time',
          args: [
            Arg(
            name: 'ephemeral-os-disk',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--ephemeral-os-disk-placement', '--ephemeral-placement'],
          description: 'Only applicable when used with --ephemeral-os-disk. Allows you to choose the Ephemeral OS disk provisioning location',
          args: [
            Arg(
            name: 'ephemeral-os-disk-placement',
            suggestions: [

              FigSuggestion(name: 'CacheDisk'),
              FigSuggestion(name: 'ResourceDisk')
            ]
          )
          ]
        ),
        Option(
          name: '--eviction-policy',
          description: 'The eviction policy for virtual machines in a Spot priority scale set. Default eviction policy is Deallocate for a Spot priority scale set',
          args: [
            Arg(
            name: 'eviction-policy',
            suggestions: [

              FigSuggestion(name: 'Deallocate'),
              FigSuggestion(name: 'Delete')
            ]
          )
          ]
        ),
        Option(
          name: '--generate-ssh-keys',
          description: 'Generate SSH public and private key files if missing. The keys will be stored in the ~/.ssh directory'
        ),
        Option(
          name: '--health-probe',
          description: 'Probe name from the existing load balancer, mainly used for rolling upgrade or automatic repairs',
          args: [
            Arg(
            name: 'health-prob'
          )
          ]
        ),
        Option(
          name: '--host-group',
          description: 'Name or ID of dedicated host group that the virtual machine scale set resides in',
          args: [
            Arg(
            name: 'host-grou'
          )
          ]
        ),
        Option(
          name: '--image',
          description: 'The name of the operating system image as a URN alias, URN, custom image name or ID, or VHD blob URI. In addition, it also supports shared gallery image. Please use the image alias including the version of the distribution you want to use. For example: please use Debian11 instead of Debian.\' This parameter is required unless using --attach-os-disk. Valid URN format: "Publisher:Offer:Sku:Version". For more information, see https://docs.microsoft.com/azure/virtual-machines/linux/cli-ps-findimage. value from: az sig image-version show-shared, az vm image list, az vm image show',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--instance-count',
          description: 'Number of VMs in the scale set',
          args: [
            Arg(
            name: 'instance-coun'
          )
          ]
        ),
        Option(
          name: ['--load-balancer', '--lb'],
          description: 'Name to use when creating a new load balancer (default) or referencing an existing one. Can also reference an existing load balancer by ID or specify "" for none',
          args: [
            Arg(
            name: 'load-balance'
          )
          ]
        ),
        Option(
          name: ['--lb-nat-rule-name', '--nat-rule-name'],
          description: 'Name to use for the NAT rule v2 when creating a new load balancer. (NAT rule V2 is used to replace NAT pool)',
          args: [
            Arg(
            name: 'lb-nat-rule-nam'
          )
          ]
        ),
        Option(
          name: '--lb-sku',
          description: 'Sku of the Load Balancer to create. Default to \'Standard\' when single placement group is turned off; otherwise, default to \'Basic\'. The public IP is supported to be created on edge zone only when it is \'Standard\'',
          args: [
            Arg(
            name: 'lb-sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Gateway'),
              FigSuggestion(name: 'Standard')
            ]
          )
          ]
        ),
        Option(
          name: '--license-type',
          description: 'Specifies that the Windows image or disk was licensed on-premises. To enable Azure Hybrid Benefit for Windows Server, use \'Windows_Server\'. To enable Multi-tenant Hosting Rights for Windows 10, use \'Windows_Client\'. For more information see the Azure Windows VM online docs',
          args: [
            Arg(
            name: 'license-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'RHEL_BASE'),
              FigSuggestion(name: 'RHEL_BASESAPAPPS'),
              FigSuggestion(name: 'RHEL_BASESAPHA'),
              FigSuggestion(name: 'RHEL_BYOS'),
              FigSuggestion(name: 'RHEL_ELS_6'),
              FigSuggestion(name: 'RHEL_EUS'),
              FigSuggestion(name: 'RHEL_SAPAPPS'),
              FigSuggestion(name: 'RHEL_SAPHA'),
              FigSuggestion(name: 'SLES'),
              FigSuggestion(name: 'SLES_BYOS'),
              FigSuggestion(name: 'SLES_HPC'),
              FigSuggestion(name: 'SLES_SAP'),
              FigSuggestion(name: 'SLES_STANDARD'),
              FigSuggestion(name: 'UBUNTU'),
              FigSuggestion(name: 'UBUNTU_PRO'),
              FigSuggestion(name: 'Windows_Client'),
              FigSuggestion(name: 'Windows_Server')
            ]
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location in which to create VM and related resources. If default location is not configured, will default to the resource group\'s location',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--max-batch-instance-percent',
          description: 'The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. Default: 20%',
          args: [
            Arg(
            name: 'max-batch-instance-percen'
          )
          ]
        ),
        Option(
          name: '--max-price',
          description: 'The maximum price (in US Dollars) you are willing to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted for price reasons',
          args: [
            Arg(
            name: 'max-pric'
          )
          ]
        ),
        Option(
          name: '--max-surge',
          description: 'Specify it to create new virtual machines to upgrade the scale set, rather than updating the existing virtual machines',
          args: [
            Arg(
            name: 'max-surge',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--max-unhealthy-instance-percent',
          description: 'The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy. Default: 20%',
          args: [
            Arg(
            name: 'max-unhealthy-instance-percen'
          )
          ]
        ),
        Option(
          name: '--max-unhealthy-upgraded-instance-percent',
          description: 'The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. Default: 20%',
          args: [
            Arg(
            name: 'max-unhealthy-upgraded-instance-percen'
          )
          ]
        ),
        Option(
          name: '--network-api-version',
          description: 'Specify the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set with orchestration mode \'Flexible\'. Default value is 2020-11-01',
          args: [
            Arg(
            name: 'network-api-versio'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--nsg',
          description: 'Name or ID of an existing Network Security Group',
          args: [
            Arg(
            name: 'ns'
          )
          ]
        ),
        Option(
          name: '--orchestration-mode',
          description: 'Choose how virtual machines are managed by the scale set. In Uniform mode, you define a virtual machine model and Azure will generate identical instances based on that model. In Flexible mode, you manually create and add a virtual machine of any configuration to the scale set or generate identical instances based on virtual machine model defined for the scale set',
          args: [
            Arg(
            name: 'orchestration-mode',
            suggestions: [

              FigSuggestion(name: 'Flexible'),
              FigSuggestion(name: 'Uniform')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-caching',
          description: 'Storage caching type for the VM OS disk. Default: ReadWrite',
          args: [
            Arg(
            name: 'os-disk-caching',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'ReadOnly'),
              FigSuggestion(name: 'ReadWrite')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-delete-option',
          description: 'Specify whether OS disk should be deleted or detached upon VMSS Flex deletion (This feature is only for VMSS with flexible orchestration mode)',
          args: [
            Arg(
            name: 'os-disk-delete-option',
            suggestions: [

              FigSuggestion(name: 'Delete'),
              FigSuggestion(name: 'Detach')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-encryption-set',
          description: 'Name or ID of disk encryption set for OS disk',
          args: [
            Arg(
            name: 'os-disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--os-disk-name',
          description: 'The name of the new VM OS disk',
          args: [
            Arg(
            name: 'os-disk-nam'
          )
          ]
        ),
        Option(
          name: '--os-disk-secure-vm-disk-encryption-set',
          description: 'Specify the customer managed disk encryption set resource ID or name for the managed disk that is used for customer managed key encrypted Confidential VM OS disk and VM guest blob',
          args: [
            Arg(
            name: 'os-disk-secure-vm-disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--os-disk-security-encryption-type',
          description: 'Specify the encryption type of the OS managed disk',
          args: [
            Arg(
            name: 'os-disk-security-encryption-type',
            suggestions: [

              FigSuggestion(name: 'DiskWithVMGuestState'),
              FigSuggestion(name: 'VMGuestStateOnly')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-size-gb',
          description: 'OS disk size in GB to create',
          args: [
            Arg(
            name: 'os-disk-size-g'
          )
          ]
        ),
        Option(
          name: '--os-type',
          description: 'Type of OS installed on a custom VHD. Do not use when specifying an URN or URN alias',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'linux'),
              FigSuggestion(name: 'windows')
            ]
          )
          ]
        ),
        Option(
          name: '--patch-mode',
          description: 'Mode of in-guest patching to IaaS virtual machine. Allowed values for Windows VM: AutomaticByOS, AutomaticByPlatform, Manual. Allowed values for Linux VM: AutomaticByPlatform, ImageDefault. Manual - You control the application of patches to a virtual machine. You do this by applying patches manually inside the VM. In this mode, automatic updates are disabled; the paramater --enable-auto-update must be false. AutomaticByOS - The virtual machine will automatically be updated by the OS. The parameter --enable-auto-update must be true. AutomaticByPlatform - the virtual machine will automatically updated by the OS. ImageDefault - The virtual machine\'s default patching configuration is used. The parameter --enable-agent and --enable-auto-update must be true',
          args: [
            Arg(
            name: 'patch-mode',
            suggestions: [

              FigSuggestion(name: 'AutomaticByOS'),
              FigSuggestion(name: 'AutomaticByPlatform'),
              FigSuggestion(name: 'ImageDefault'),
              FigSuggestion(name: 'Manual')
            ]
          )
          ]
        ),
        Option(
          name: '--pause-time-between-batches',
          description: 'The wait time between completing the update for all virtual machines in one batch and starting the next batch. Default: 0 seconds',
          args: [
            Arg(
            name: 'pause-time-between-batche'
          )
          ]
        ),
        Option(
          name: '--plan-name',
          description: 'Plan name',
          args: [
            Arg(
            name: 'plan-nam'
          )
          ]
        ),
        Option(
          name: '--plan-product',
          description: 'Plan product',
          args: [
            Arg(
            name: 'plan-produc'
          )
          ]
        ),
        Option(
          name: '--plan-promotion-code',
          description: 'Plan promotion code',
          args: [
            Arg(
            name: 'plan-promotion-cod'
          )
          ]
        ),
        Option(
          name: '--plan-publisher',
          description: 'Plan publisher',
          args: [
            Arg(
            name: 'plan-publishe'
          )
          ]
        ),
        Option(
          name: '--platform-fault-domain-count',
          description: 'Fault Domain count for each placement group in the availability zone',
          args: [
            Arg(
            name: 'platform-fault-domain-coun'
          )
          ]
        ),
        Option(
          name: '--ppg',
          description: 'The name or ID of the proximity placement group the VMSS should be associated with',
          args: [
            Arg(
            name: 'pp'
          )
          ]
        ),
        Option(
          name: '--prioritize-unhealthy-instances',
          description: 'Set this Boolean property will lead to all unhealthy instances in a scale set getting upgraded before any healthy instances',
          args: [
            Arg(
            name: 'prioritize-unhealthy-instances',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Priority. Use \'Spot\' to run short-lived workloads in a cost-effective way. \'Low\' enum will be deprecated in the future. Please use \'Spot\' to deploy Azure spot VM and/or VMSS. Default to Regular',
          args: [
            Arg(
            name: 'priority',
            suggestions: [

              FigSuggestion(name: 'Low'),
              FigSuggestion(name: 'Regular'),
              FigSuggestion(name: 'Spot')
            ]
          )
          ]
        ),
        Option(
          name: '--public-ip-address',
          description: 'Name of the public IP address when creating one (default) or referencing an existing one. Can also reference an existing public IP by ID or specify "" for None (\'""\' in Azure CLI using PowerShell or --% operator). For Azure CLI using powershell core edition 7.3.4, specify or "" (--public-ip-address or --public-ip-address "")',
          args: [
            Arg(
            name: 'public-ip-addres'
          )
          ]
        ),
        Option(
          name: '--public-ip-address-allocation',
          description: '',
          args: [
            Arg(
            name: 'public-ip-address-allocation',
            suggestions: [

              FigSuggestion(name: 'dynamic'),
              FigSuggestion(name: 'static')
            ]
          )
          ]
        ),
        Option(
          name: '--public-ip-address-dns-name',
          description: 'Globally unique DNS name for a newly created public IP',
          args: [
            Arg(
            name: 'public-ip-address-dns-nam'
          )
          ]
        ),
        Option(
          name: '--public-ip-per-vm',
          description: 'Each VM instance will have a public ip. For security, you can use \'--nsg\' to apply appropriate rules'
        ),
        Option(
          name: '--regular-priority-count',
          description: 'The base number of regular priority VMs that will be created in this scale set as it scales out. Must be greater than 0',
          args: [
            Arg(
            name: 'regular-priority-coun'
          )
          ]
        ),
        Option(
          name: '--regular-priority-percentage',
          description: 'The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority. Must be between 0 and 100',
          args: [
            Arg(
            name: 'regular-priority-percentag'
          )
          ]
        ),
        Option(
          name: '--role',
          description: 'Role name or id the system assigned identity will have',
          args: [
            Arg(
            name: 'rol'
          )
          ]
        ),
        Option(
          name: '--scale-in-policy',
          description: 'Specify the scale-in policy (space delimited) that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled-in',
          args: [
            Arg(
            name: 'scale-in-policy',
            suggestions: [

              FigSuggestion(name: 'Default'),
              FigSuggestion(name: 'NewestVM'),
              FigSuggestion(name: 'OldestVM')
            ]
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Scope that the system assigned identity can access',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--secrets',
          description: 'One or many Key Vault secrets as JSON strings or files via @{path} containing [{ "sourceVault": { "id": "value" }, "vaultCertificates": [{ "certificateUrl": "value", "certificateStore": "cert store name (only on windows)"}] }]',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: '--security-type',
          description: 'Specify the security type of the virtual machine',
          args: [
            Arg(
            name: 'security-type',
            suggestions: [

              FigSuggestion(name: 'ConfidentialVM'),
              FigSuggestion(name: 'Standard'),
              FigSuggestion(name: 'TrustedLaunch')
            ]
          )
          ]
        ),
        Option(
          name: '--single-placement-group',
          description: 'Limit the scale set to a single placement group. See https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-placement-groups for details',
          args: [
            Arg(
            name: 'single-placement-group',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--specialized',
          description: 'Indicate whether the source image is specialized',
          args: [
            Arg(
            name: 'specialized',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--spot-restore-timeout',
          description: 'Timeout value expressed as an ISO 8601 time duration after which the platform will not try to restore the VMSS SPOT instances',
          args: [
            Arg(
            name: 'spot-restore-timeou'
          )
          ]
        ),
        Option(
          name: '--ssh-dest-key-path',
          description: 'Destination file path on the VM for the SSH key. If the file already exists, the specified key(s) are appended to the file. Destination path for SSH public keys is currently limited to its default value "/home/username/.ssh/authorized_keys" due to a known issue in Linux provisioning agent',
          args: [
            Arg(
            name: 'ssh-dest-key-pat'
          )
          ]
        ),
        Option(
          name: '--ssh-key-values',
          description: 'Space-separated list of SSH public keys or public key file paths',
          args: [
            Arg(
            name: 'ssh-key-value'
          )
          ]
        ),
        Option(
          name: '--storage-container-name',
          description: 'Only applicable when used with --use-unmanaged-disk. Name of the storage container for the VM OS disk. Default: vhds',
          args: [
            Arg(
            name: 'storage-container-nam'
          )
          ]
        ),
        Option(
          name: '--storage-sku',
          description: 'The SKU of the storage account with which to persist VM. Use a singular sku that would be applied across all disks, or specify individual disks. Usage: [--storage-sku SKU | --storage-sku ID=SKU ID=SKU ID=SKU...], where each ID is "os" or a 0-indexed lun. Allowed values: Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, PremiumV2_LRS',
          args: [
            Arg(
            name: 'storage-sk'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'The name of the subnet when creating a new VNet or referencing an existing one. Can also reference an existing subnet by ID. If both vnet-name and subnet are omitted, an appropriate VNet and subnet will be selected automatically, or a new one will be created',
          args: [
            Arg(
            name: 'subne'
          )
          ]
        ),
        Option(
          name: '--subnet-address-prefix',
          description: 'The subnet IP address prefix to use when creating a new VNet in CIDR format',
          args: [
            Arg(
            name: 'subnet-address-prefi'
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
          name: '--terminate-notification-time',
          description: 'Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted',
          args: [
            Arg(
            name: 'terminate-notification-tim'
          )
          ]
        ),
        Option(
          name: '--ultra-ssd-enabled',
          description: 'Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account',
          args: [
            Arg(
            name: 'ultra-ssd-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--upgrade-policy-mode',
          description: '',
          args: [
            Arg(
            name: 'upgrade-policy-mode',
            suggestions: [

              FigSuggestion(name: 'Automatic'),
              FigSuggestion(name: 'Manual'),
              FigSuggestion(name: 'Rolling')
            ]
          )
          ]
        ),
        Option(
          name: '--use-unmanaged-disk',
          description: 'Do not use managed disk to persist VM'
        ),
        Option(
          name: '--user-data',
          description: 'UserData for the virtual machines in the scale set. It can be passed in as file or string',
          args: [
            Arg(
            name: 'user-dat'
          )
          ]
        ),
        Option(
          name: '--v-cpus-available',
          description: 'Specify the number of vCPUs available',
          args: [
            Arg(
            name: 'v-cpus-availabl'
          )
          ]
        ),
        Option(
          name: '--v-cpus-per-core',
          description: 'Specify the ratio of vCPU to physical core. Setting this property to 1 also means that hyper-threading is disabled',
          args: [
            Arg(
            name: 'v-cpus-per-cor'
          )
          ]
        ),
        Option(
          name: '--validate',
          description: 'Generate and validate the ARM template without creating any resources'
        ),
        Option(
          name: '--vm-domain-name',
          description: 'Domain name of VM instances, once configured, the FQDN is vm<vm-index>.<vm-domain-name>.<..rest..>',
          args: [
            Arg(
            name: 'vm-domain-nam'
          )
          ]
        ),
        Option(
          name: '--vm-sku',
          description: 'Size of VMs in the scale set. Default to "Standard_DS1_v2". See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info',
          args: [
            Arg(
            name: 'vm-sk'
          )
          ]
        ),
        Option(
          name: '--vnet-address-prefix',
          description: 'The IP address prefix to use when creating a new VNet in CIDR format',
          args: [
            Arg(
            name: 'vnet-address-prefi'
          )
          ]
        ),
        Option(
          name: '--vnet-name',
          description: 'Name of the virtual network when creating a new one or referencing an existing one',
          args: [
            Arg(
            name: 'vnet-nam'
          )
          ]
        ),
        Option(
          name: ['--zones', '-z'],
          description: 'Space-separated list of availability zones into which to provision the resource',
          args: [
            Arg(
            name: 'zones',
            suggestions: [

              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deallocate',
      description: 'Deallocate VMs within a VMSS',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--hibernate',
          description: 'Hibernate a virtual machine from the VM scale set. Available for VMSS with Flexible OrchestrationMode only',
          args: [
            Arg(
            name: 'hibernate',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--instance-ids',
          description: 'Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances. If not provided, the action will be applied on the scaleset itself',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a VM scale set',
      options: [

        Option(
          name: '--force-deletion',
          description: 'Optional parameter to force delete a VM scale set. (Feature in Preview)',
          args: [
            Arg(
            name: 'force-deletion',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
            ]
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--vm-scale-set-name', '--name', '-n'],
          description: 'The name of the VM scale set',
          args: [
            Arg(
            name: 'vm-scale-set-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
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
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-instances',
      description: 'Delete VMs within a VMSS',
      options: [

        Option(
          name: '--instance-ids',
          description: 'Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'get-instance-view',
      description: 'View an instance of a VMSS',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--instance-id',
          description: 'A VM instance ID or "*" to list instance view for all VMs in a scale set',
          args: [
            Arg(
            name: 'instance-i'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-os-upgrade-history',
      description: 'List the OS upgrades on a VM scale set instance',
      options: [

        Option(
          name: ['--vm-scale-set-name', '--name', '-n'],
          description: 'The name of the VM scale set',
          args: [
            Arg(
            name: 'vm-scale-set-nam'
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
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all VM scale sets under a resource group',
      options: [

        Option(
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
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
      name: 'list-instance-connection-info',
      description: 'Get the IP address and port number used to connect to individual VM instances within a set',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-instance-public-ips',
      description: 'List public IP addresses of VM instances within a set',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-instances',
      description: 'List all virtual machines in a VM scale sets',
      options: [

        Option(
          name: ['--virtual-machine-scale-set-name', '--name', '-n'],
          description: 'The name of the VM scale set',
          args: [
            Arg(
            name: 'virtual-machine-scale-set-nam'
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
          name: '--expand',
          description: 'The expand expression to apply to the operation. Allowed values are \'instanceView\'',
          args: [
            Arg(
            name: 'expan'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'The filter to apply to the operation. Allowed values are \'startswith(instanceView/statuses/code, \'PowerState\') eq true\', \'properties/latestModelApplied eq true\', \'properties/latestModelApplied eq false\'',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
          )
          ]
        ),
        Option(
          name: '--select',
          description: 'The list parameters. Allowed values are \'instanceView\', \'instanceView/statuses\'',
          args: [
            Arg(
            name: 'selec'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-skus',
      description: 'List SKUs available for your VM scale set, including the minimum and maximum VM instances allowed for each SKU',
      options: [

        Option(
          name: ['--vm-scale-set-name', '--name', '-n'],
          description: 'The name of the VM scale set',
          args: [
            Arg(
            name: 'vm-scale-set-nam'
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
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'perform-maintenance',
      description: 'Perform maintenance on one or more virtual machines in a VM scale set. Operation on instances which are not eligible for perform maintenance will be failed. Please refer to best practices for more details: https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-maintenance-notifications',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--instance-ids',
          description: 'The virtual machine scale set instance ids. Omitting the virtual machine scale set instance ids will result in the operation being performed on all virtual machines in the virtual machine scale set. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: ['--vm-scale-set-name', '--name', '-n'],
          description: 'The name of the VM scale set',
          args: [
            Arg(
            name: 'vm-scale-set-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
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
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'reimage',
      description: 'Reimage VMs within a VMSS',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--instance-ids',
          description: 'Space-separated list of VM instance ID. If missing, reimage all instances',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart VMs within a VMSS',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--instance-ids',
          description: 'Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances. If not provided, the action will be applied on the scaleset itself',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'scale',
      description: 'Change the number of VMs within a VMSS',
      options: [

        Option(
          name: '--new-capacity',
          description: 'Number of VMs in the VMSS',
          args: [
            Arg(
            name: 'new-capacit'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'set-orchestration-service-state',
      description: 'Change ServiceState property for a given service within a VMSS',
      options: [

        Option(
          name: '--action',
          description: 'The action to be performed',
          args: [
            Arg(
            name: 'action',
            suggestions: [

              FigSuggestion(name: 'Resume'),
              FigSuggestion(name: 'Suspend')
            ]
          )
          ]
        ),
        Option(
          name: '--service-name',
          description: 'The name of the orchestration service',
          args: [
            Arg(
            name: 'service-name',
            suggestions: [

              FigSuggestion(name: 'AutomaticRepairs'),
              FigSuggestion(name: 'DummyOrchestrationServiceName')
            ]
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get details on VMs within a VMSS',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: ['--include-user-data', '-u'],
          description: 'Include the user data properties in the query result'
        ),
        Option(
          name: '--instance-id',
          description: 'VM instance ID. If missing, show the VMSS',
          args: [
            Arg(
            name: 'instance-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'simulate-eviction',
      description: 'Simulate the eviction of a Spot virtual machine in a VM scale set',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--instance-id',
          description: 'The instance ID of the virtual machine',
          args: [
            Arg(
            name: 'instance-i'
          )
          ]
        ),
        Option(
          name: ['--vm-scale-set-name', '--name', '-n'],
          description: 'The name of the VM scale set',
          args: [
            Arg(
            name: 'vm-scale-set-nam'
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Start VMs within a VMSS',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--instance-ids',
          description: 'Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances. If not provided, the action will be applied on the scaleset itself',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Power off (stop) VMs within a VMSS',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--instance-ids',
          description: 'Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances. If not provided, the action will be applied on the scaleset itself',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--skip-shutdown',
          description: 'Skip shutdown and power-off immediately'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a VMSS. Run \'az vmss update-instances\' command to roll out the changes to VMs if you have not configured upgrade policy',
      options: [

        Option(
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--automatic-repairs-action',
          description: 'Type of repair action that will be used for repairing unhealthy virtual machines in the scale set',
          args: [
            Arg(
            name: 'automatic-repairs-action',
            suggestions: [

              FigSuggestion(name: 'Reimage'),
              FigSuggestion(name: 'Replace'),
              FigSuggestion(name: 'Restart')
            ]
          )
          ]
        ),
        Option(
          name: '--automatic-repairs-grace-period',
          description: 'The amount of time (in minutes, between 30 and 90) for which automatic repairs are suspended due to a state change on VM',
          args: [
            Arg(
            name: 'automatic-repairs-grace-perio'
          )
          ]
        ),
        Option(
          name: ['--capacity-reservation-group', '--crg'],
          description: 'The ID or name of the capacity reservation group that is used to allocate. Pass in "None" to disassociate the capacity reservation group. Please note that if you want to delete a VM/VMSS that has been associated with capacity reservation group, you need to disassociate the capacity reservation group first',
          args: [
            Arg(
            name: 'capacity-reservation-grou'
          )
          ]
        ),
        Option(
          name: '--custom-data',
          description: 'Custom init script file or text (cloud-init, cloud-config, etc..)',
          args: [
            Arg(
            name: 'custom-dat'
          )
          ]
        ),
        Option(
          name: '--disk-controller-type',
          description: 'Specify the disk controller type configured for the VM or VMSS',
          args: [
            Arg(
            name: 'disk-controller-type',
            suggestions: [

              FigSuggestion(name: 'NVMe'),
              FigSuggestion(name: 'SCSI')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-automatic-repairs',
          description: 'Enable automatic repairs',
          args: [
            Arg(
            name: 'enable-automatic-repairs',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-cross-zone-upgrade',
          description: 'Set this Boolean property will allow VMSS to ignore AZ boundaries when constructing upgrade batches, and only consider Update Domain and maxBatchInstancePercent to determine the batch size',
          args: [
            Arg(
            name: 'enable-cross-zone-upgrade',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-hibernation',
          description: 'The flag that enable or disable hibernation capability on the VMSS',
          args: [
            Arg(
            name: 'enable-hibernation',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-osimage-notification',
          description: 'Specify whether the OS Image Scheduled event is enabled or disabled',
          args: [
            Arg(
            name: 'enable-osimage-notification',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-secure-boot',
          description: 'Enable secure boot',
          args: [
            Arg(
            name: 'enable-secure-boot',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-spot-restore',
          description: 'Enable the Spot-Try-Restore feature where evicted VMSS SPOT instances will be tried to be restored opportunistically based on capacity availability and pricing constraints',
          args: [
            Arg(
            name: 'enable-spot-restore',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-terminate-notification',
          description: 'Enable terminate notification',
          args: [
            Arg(
            name: 'enable-terminate-notification',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-vtpm',
          description: 'Enable vTPM',
          args: [
            Arg(
            name: 'enable-vtpm',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--ephemeral-os-disk-placement', '--ephemeral-placement'],
          description: 'Only applicable when used with --vm-sku. Allows you to choose the Ephemeral OS disk provisioning location',
          args: [
            Arg(
            name: 'ephemeral-os-disk-placement',
            suggestions: [

              FigSuggestion(name: 'CacheDisk'),
              FigSuggestion(name: 'ResourceDisk')
            ]
          )
          ]
        ),
        Option(
          name: '--force-deletion',
          description: 'This property allow you to specify if virtual machines chosen for removal have to be force deleted when a virtual machine scale set is being scaled-in',
          args: [
            Arg(
            name: 'force-deletio'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--instance-id',
          description: 'Update the VM instance with this ID. If missing, Update the VMSS',
          args: [
            Arg(
            name: 'instance-i'
          )
          ]
        ),
        Option(
          name: '--license-type',
          description: 'Specifies that the Windows image or disk was licensed on-premises. To enable Azure Hybrid Benefit for Windows Server, use \'Windows_Server\'. To enable Multi-tenant Hosting Rights for Windows 10, use \'Windows_Client\'. For more information see the Azure Windows VM online docs',
          args: [
            Arg(
            name: 'license-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'RHEL_BASE'),
              FigSuggestion(name: 'RHEL_BASESAPAPPS'),
              FigSuggestion(name: 'RHEL_BASESAPHA'),
              FigSuggestion(name: 'RHEL_BYOS'),
              FigSuggestion(name: 'RHEL_ELS_6'),
              FigSuggestion(name: 'RHEL_EUS'),
              FigSuggestion(name: 'RHEL_SAPAPPS'),
              FigSuggestion(name: 'RHEL_SAPHA'),
              FigSuggestion(name: 'SLES'),
              FigSuggestion(name: 'SLES_BYOS'),
              FigSuggestion(name: 'SLES_HPC'),
              FigSuggestion(name: 'SLES_SAP'),
              FigSuggestion(name: 'SLES_STANDARD'),
              FigSuggestion(name: 'UBUNTU'),
              FigSuggestion(name: 'UBUNTU_PRO'),
              FigSuggestion(name: 'Windows_Client'),
              FigSuggestion(name: 'Windows_Server')
            ]
          )
          ]
        ),
        Option(
          name: '--max-batch-instance-percent',
          description: 'The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. Default: 20%',
          args: [
            Arg(
            name: 'max-batch-instance-percen'
          )
          ]
        ),
        Option(
          name: '--max-price',
          description: 'The maximum price (in US Dollars) you are willing to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted for price reasons',
          args: [
            Arg(
            name: 'max-pric'
          )
          ]
        ),
        Option(
          name: '--max-unhealthy-instance-percent',
          description: 'The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy. Default: 20%',
          args: [
            Arg(
            name: 'max-unhealthy-instance-percen'
          )
          ]
        ),
        Option(
          name: '--max-unhealthy-upgraded-instance-percent',
          description: 'The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. Default: 20%',
          args: [
            Arg(
            name: 'max-unhealthy-upgraded-instance-percen'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--pause-time-between-batches',
          description: 'The wait time between completing the update for all virtual machines in one batch and starting the next batch. Default: 0 seconds',
          args: [
            Arg(
            name: 'pause-time-between-batche'
          )
          ]
        ),
        Option(
          name: '--ppg',
          description: 'The name or ID of the proximity placement group the VMSS should be associated with',
          args: [
            Arg(
            name: 'pp'
          )
          ]
        ),
        Option(
          name: '--prioritize-unhealthy-instances',
          description: 'Set this Boolean property will lead to all unhealthy instances in a scale set getting upgraded before any healthy instances',
          args: [
            Arg(
            name: 'prioritize-unhealthy-instances',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Priority. Use \'Spot\' to run short-lived workloads in a cost-effective way. \'Low\' enum will be deprecated in the future. Please use \'Spot\' to deploy Azure spot VM and/or VMSS. Default to Regular',
          args: [
            Arg(
            name: 'priority',
            suggestions: [

              FigSuggestion(name: 'Low'),
              FigSuggestion(name: 'Regular'),
              FigSuggestion(name: 'Spot')
            ]
          )
          ]
        ),
        Option(
          name: '--protect-from-scale-in',
          description: 'Protect the VM instance from scale-in operations',
          args: [
            Arg(
            name: 'protect-from-scale-in',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--protect-from-scale-set-actions',
          description: 'Protect the VM instance from scale set actions (including scale-in)',
          args: [
            Arg(
            name: 'protect-from-scale-set-actions',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--regular-priority-count',
          description: 'The base number of regular priority VMs that will be created in this scale set as it scales out. Must be greater than 0',
          args: [
            Arg(
            name: 'regular-priority-coun'
          )
          ]
        ),
        Option(
          name: '--regular-priority-percentage',
          description: 'The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority. Must be between 0 and 100',
          args: [
            Arg(
            name: 'regular-priority-percentag'
          )
          ]
        ),
        Option(
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
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
          name: '--scale-in-policy',
          description: 'Specify the scale-in policy (space delimited) that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled-in',
          args: [
            Arg(
            name: 'scale-in-policy',
            suggestions: [

              FigSuggestion(name: 'Default'),
              FigSuggestion(name: 'NewestVM'),
              FigSuggestion(name: 'OldestVM')
            ]
          )
          ]
        ),
        Option(
          name: '--security-type',
          description: 'Specify the security type of the virtual machine scale set',
          args: [
            Arg(
            name: 'security-type',
            suggestions: [

              FigSuggestion(name: 'TrustedLaunch')
            ]
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--spot-restore-timeout',
          description: 'Timeout value expressed as an ISO 8601 time duration after which the platform will not try to restore the VMSS SPOT instances',
          args: [
            Arg(
            name: 'spot-restore-timeou'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--terminate-notification-time',
          description: 'Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted',
          args: [
            Arg(
            name: 'terminate-notification-tim'
          )
          ]
        ),
        Option(
          name: '--ultra-ssd-enabled',
          description: 'Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account',
          args: [
            Arg(
            name: 'ultra-ssd-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--user-data',
          description: 'UserData for the virtual machines in the scale set. It can be passed in as file or string. If empty string is passed in, the existing value will be deleted',
          args: [
            Arg(
            name: 'user-dat'
          )
          ]
        ),
        Option(
          name: '--v-cpus-available',
          description: 'Specify the number of vCPUs available',
          args: [
            Arg(
            name: 'v-cpus-availabl'
          )
          ]
        ),
        Option(
          name: '--v-cpus-per-core',
          description: 'Specify the ratio of vCPU to physical core. Setting this property to 1 also means that hyper-threading is disabled',
          args: [
            Arg(
            name: 'v-cpus-per-cor'
          )
          ]
        ),
        Option(
          name: '--vm-sku',
          description: 'The new size of the virtual machine instances in the scale set. Default to "Standard_DS1_v2". See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info',
          args: [
            Arg(
            name: 'vm-sk'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-instances',
      description: 'Upgrade VMs within a VMSS',
      options: [

        Option(
          name: '--instance-ids',
          description: 'Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances',
          args: [
            Arg(
            name: 'instance-id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of a scale set is met',
      options: [

        Option(
          name: '--created',
          description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
        ),
        Option(
          name: '--custom',
          description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
          args: [
            Arg(
            name: 'custo'
          )
          ]
        ),
        Option(
          name: '--deleted',
          description: 'Wait until deleted'
        ),
        Option(
          name: '--exists',
          description: 'Wait until the resource exists'
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--instance-id',
          description: 'Wait on the VM instance with this ID. If missing, Wait on the VMSS',
          args: [
            Arg(
            name: 'instance-i'
          )
          ]
        ),
        Option(
          name: '--interval',
          description: 'Polling interval in seconds',
          args: [
            Arg(
            name: 'interva'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Maximum wait in seconds',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: '--updated',
          description: 'Wait until updated with provisioningState at \'Succeeded\''
        )
      ]
    ),
    Subcommand(
      name: 'diagnostics',
      description: 'Configure the Azure Virtual Machine Scale Set diagnostics extension',
      subcommands: [

        Subcommand(
          name: 'get-default-config',
          description: 'Show the default config file which defines data to be collected',
          options: [

            Option(
              name: '--is-windows-os',
              description: 'For Windows VMs'
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Enable diagnostics on a VMSS',
          options: [

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
              name: '--settings',
              description: 'Json string or a file path, which defines data to be collected',
              args: [
                Arg(
                name: 'setting'
              )
              ]
            ),
            Option(
              name: '--vmss-name',
              description: 'Scale set name',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            ),
            Option(
              name: '--no-auto-upgrade',
              description: 'Option \'--no-auto-upgrade\' has been deprecated and will be removed in a future release. Use \'--no-auto-upgrade-minor-version\' instead. If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--no-auto-upgrade-minor-version',
              description: 'If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--protected-settings',
              description: 'Json string or a file path containing private configurations such as storage account keys, etc',
              args: [
                Arg(
                name: 'protected-setting'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of the diagnostics extension. Will use the latest if not specfied',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'disk',
      description: 'Manage data disks of a VMSS',
      subcommands: [

        Subcommand(
          name: 'attach',
          description: 'Attach managed data disks to a scale set or its instances',
          options: [

            Option(
              name: '--caching',
              description: 'Disk caching policy',
              args: [
                Arg(
                name: 'caching',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'ReadOnly'),
                  FigSuggestion(name: 'ReadWrite')
                ]
              )
              ]
            ),
            Option(
              name: '--disk',
              description: 'Existing disk name or ID to attach or detach from VM instances',
              args: [
                Arg(
                name: 'dis'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-id',
              description: 'Scale set VM instance id',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            ),
            Option(
              name: '--lun',
              description: '0-based logical unit number (LUN). Max value depends on the Virtual Machine instance size',
              args: [
                Arg(
                name: 'lu'
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
              name: ['--size-gb', '-z'],
              description: 'Size in GB. Max size: 4095 GB (certain preview disks can be larger)',
              args: [
                Arg(
                name: 'size-g'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Underlying storage SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'PremiumV2_LRS'),
                  FigSuggestion(name: 'Premium_LRS'),
                  FigSuggestion(name: 'Premium_ZRS'),
                  FigSuggestion(name: 'StandardSSD_LRS'),
                  FigSuggestion(name: 'StandardSSD_ZRS'),
                  FigSuggestion(name: 'Standard_LRS'),
                  FigSuggestion(name: 'UltraSSD_LRS')
                ]
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--vmss-name',
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'detach',
          description: 'Detach managed data disks from a scale set or its instances',
          options: [

            Option(
              name: '--lun',
              description: '0-based logical unit number (LUN). Max value depends on the Virtual Machine instance size',
              args: [
                Arg(
                name: 'lu'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-id',
              description: 'Scale set VM instance id',
              args: [
                Arg(
                name: 'instance-i'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--vmss-name',
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'encryption',
      description: 'Manage encryption of VMSS.\n\n\t\tFor more information, see: ttps://docs.microsoft.com/azure/security/fundamentals/azure-disk-encryption-vms-vmss',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable the encryption on a VMSS with managed disks',
          options: [

            Option(
              name: '--force',
              description: 'Continue by ignoring client side validation errors'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--volume-type',
              description: 'Type of volume that the encryption operation is performed on',
              args: [
                Arg(
                name: 'volume-type',
                suggestions: [

                  FigSuggestion(name: 'ALL'),
                  FigSuggestion(name: 'DATA'),
                  FigSuggestion(name: 'OS')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Encrypt a VMSS with managed disks',
          options: [

            Option(
              name: '--disk-encryption-keyvault',
              description: 'Name or ID of the key vault where the generated encryption key will be placed',
              args: [
                Arg(
                name: 'disk-encryption-keyvaul'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Continue by ignoring client side validation errors'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--key-encryption-algorithm',
              description: '',
              args: [
                Arg(
                name: 'key-encryption-algorith'
              )
              ]
            ),
            Option(
              name: '--key-encryption-key',
              description: 'Key vault key name or URL used to encrypt the disk encryption key',
              args: [
                Arg(
                name: 'key-encryption-ke'
              )
              ]
            ),
            Option(
              name: '--key-encryption-keyvault',
              description: 'Name or ID of the key vault containing the key encryption key used to encrypt the disk encryption key. If missing, CLI will use --disk-encryption-keyvault',
              args: [
                Arg(
                name: 'key-encryption-keyvaul'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--volume-type',
              description: 'Type of volume that the encryption operation is performed on',
              args: [
                Arg(
                name: 'volume-type',
                suggestions: [

                  FigSuggestion(name: 'ALL'),
                  FigSuggestion(name: 'DATA'),
                  FigSuggestion(name: 'OS')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show encryption status',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'extension',
      description: 'Manage extensions on a VM scale set',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete an extension from a VMSS',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the extension',
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
              name: '--vmss-name',
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List extensions associated with a VMSS',
          options: [

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
              name: '--vmss-name',
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Add an extension to a VMSS or update an existing extension',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the extension. value from: az vm extension image list',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--publisher',
              description: 'The name of the extension publisher',
              args: [
                Arg(
                name: 'publishe'
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
              name: '--vmss-name',
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            ),
            Option(
              name: '--enable-auto-upgrade',
              description: 'Indicate the extension should be automatically upgraded by the platform if there is a newer version of the extension available',
              args: [
                Arg(
                name: 'enable-auto-upgrade',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--extension-instance-name',
              description: 'Name of extension instance, which can be customized. Default: name of the extension',
              args: [
                Arg(
                name: 'extension-instance-nam'
              )
              ]
            ),
            Option(
              name: '--force-update',
              description: 'Force to update even if the extension configuration has not changed'
            ),
            Option(
              name: '--no-auto-upgrade',
              description: 'Option \'--no-auto-upgrade\' has been deprecated and will be removed in a future release. Use \'--no-auto-upgrade-minor-version\' instead. If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--no-auto-upgrade-minor-version',
              description: 'If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--protected-settings',
              description: 'Protected settings in JSON format for sensitive information like credentials. A JSON file path is also accepted',
              args: [
                Arg(
                name: 'protected-setting'
              )
              ]
            ),
            Option(
              name: '--provision-after-extensions',
              description: 'Space-separated list of extension names after which this extension should be provisioned. These extensions must already be set on the vm',
              args: [
                Arg(
                name: 'provision-after-extension'
              )
              ]
            ),
            Option(
              name: '--settings',
              description: 'Extension settings in JSON format. A JSON file path is also accepted',
              args: [
                Arg(
                name: 'setting'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'The version of the extension. To pin extension version to this value, please specify --no-auto-upgrade-minor-version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details on a VMSS extension',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the extension',
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
              name: '--vmss-name',
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade all extensions for all VMSS instances to the latest version',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'image',
          description: 'Find the available VM extensions for a subscription and region',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the information on available extensions',
              options: [

                Option(
                  name: '--latest',
                  description: 'Show the latest version only'
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Image location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Image name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Extension version',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-names',
              description: 'List virtual machine extension image types',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--publisher-name', '--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publisher-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-versions',
              description: 'List virtual machine extension image versions',
              options: [

                Option(
                  name: '--filter',
                  description: 'The filter to apply on the operation. Default value is None',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--name', '--type', '-n'],
                  description: 'Name of the extension',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'The \$orderby odata query option',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher-name', '--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publisher-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'The \$top odata query option',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a virtual machine extension image',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--name', '--type', '-n'],
                  description: 'Name of the extension',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher-name', '--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publisher-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Extension version',
                  args: [
                    Arg(
                    name: 'versio'
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
      name: 'identity',
      description: 'Manage service identities of a VM scaleset',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Enable managed service identity on a VMSS',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
              name: '--role',
              description: 'Role name or id the system assigned identity will have. Please note that the default value "Contributor" will be removed in the breaking change release of the fall, so please specify "--role" and "--scope" at the same time when assigning a role to the managed identity',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope that the system assigned identity can access',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove user assigned identities from a VM scaleset',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to remove. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display VM scaleset\'s managed identity info',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'nic',
      description: 'Manage network interfaces of a VMSS',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get all network interfaces in a virtual machine scale set',
          options: [

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
              name: ['--virtual-machine-scale-set-name', '--vmss-name'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'virtual-machine-scale-set-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-vm-nics',
          description: 'Get information about all network interfaces in a virtual machine in a virtual machine scale set',
          options: [

            Option(
              name: ['--virtualmachine-index', '--instance-id'],
              description: 'The virtual machine index',
              args: [
                Arg(
                name: 'virtualmachine-inde'
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
              name: ['--virtual-machine-scale-set-name', '--vmss-name'],
              description: 'Scale set name',
              args: [
                Arg(
                name: 'virtual-machine-scale-set-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the specified network interface in a virtual machine scale set',
          options: [

            Option(
              name: '--expand',
              description: 'Expands referenced resources. Default value is None',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--virtualmachine-index', '--instance-id'],
              description: 'The virtual machine index',
              args: [
                Arg(
                name: 'virtualmachine-inde'
              )
              ]
            ),
            Option(
              name: ['--network-interface-name', '--name', '-n'],
              description: 'The network interface (NIC)',
              args: [
                Arg(
                name: 'network-interface-nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--virtual-machine-scale-set-name', '--vmss-name'],
              description: 'Scale set name',
              args: [
                Arg(
                name: 'virtual-machine-scale-set-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rolling-upgrade',
      description: 'Manage rolling upgrades',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel the current virtual machine scale set rolling upgrade',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: [
                '--virtual-machine-scale-set-name',
                '--vm-scale-set-name',
                '--name',
                '-n',
              ],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'virtual-machine-scale-set-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish',
              args: [
                Arg(
                name: 'no-wait',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: 'f'),
                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'n'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 't'),
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'y'),
                  FigSuggestion(name: 'yes')
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
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-latest',
          description: 'Get the status of the latest virtual machine scale set rolling upgrade',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: [
                '--virtual-machine-scale-set-name',
                '--vm-scale-set-name',
                '--name',
                '-n',
              ],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'virtual-machine-scale-set-nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start a rolling upgrade to move all virtual machine scale set instances to the latest available Platform Image OS version. Instances which are already running the latest available OS version are not affected',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: [
                '--virtual-machine-scale-set-name',
                '--vm-scale-set-name',
                '--name',
                '-n',
              ],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'virtual-machine-scale-set-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish',
              args: [
                Arg(
                name: 'no-wait',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: 'f'),
                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'n'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 't'),
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'y'),
                  FigSuggestion(name: 'yes')
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
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run-command',
      description: 'Manage run commands on a Virtual Machine Scale Set.\n\n\t\tFor more information, see https://docs.microsoft.com/azure/virtual-machines/windows/run-command or https://docs.microsoft.com/azure/virtual-machines/linux/run-command',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'The operation to Create the VMSS VM run command',
          options: [

            Option(
              name: '--instance-id',
              description: 'The instance ID of the virtual machine',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            ),
            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
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
              name: '--vmss-name',
              description: 'The name of the VM scale set',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            ),
            Option(
              name: '--async-execution',
              description: 'Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete',
              args: [
                Arg(
                name: 'async-execution',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--command-id',
              description: 'Specify a commandId of predefined built-in script',
              args: [
                Arg(
                name: 'command-i'
              )
              ]
            ),
            Option(
              name: '--error-blob-uri',
              description: 'Uri (without SAS) to an append blob where the script error stream will be uploaded',
              args: [
                Arg(
                name: 'error-blob-ur'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--output-blob-uri',
              description: 'Uri (without SAS) to an append blob where the script output will be uploaded',
              args: [
                Arg(
                name: 'output-blob-ur'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--protected-parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'protected-parameter'
              )
              ]
            ),
            Option(
              name: '--run-as-password',
              description: 'Password if needed for using run-as-user parameter. It will be encrypted and not logged',
              args: [
                Arg(
                name: 'run-as-passwor'
              )
              ]
            ),
            Option(
              name: '--run-as-user',
              description: 'By default script process runs under system/root user. Specify custom user to host the process',
              args: [
                Arg(
                name: 'run-as-use'
              )
              ]
            ),
            Option(
              name: '--script',
              description: 'Specify the script content to be executed on the VM',
              args: [
                Arg(
                name: 'scrip'
              )
              ]
            ),
            Option(
              name: '--script-uri',
              description: 'Specify the script download location',
              args: [
                Arg(
                name: 'script-ur'
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
              name: '--timeout-in-seconds',
              description: 'The timeout in seconds to execute the run command',
              args: [
                Arg(
                name: 'timeout-in-second'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'The operation to delete the run command',
          options: [

            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-id',
              description: 'The instance ID of the virtual machine',
              args: [
                Arg(
                name: 'instance-i'
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
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--vmss-name',
              description: 'The name of the VM scale set',
              args: [
                Arg(
                name: 'vmss-nam'
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
          name: 'invoke',
          description: 'Execute a specific run command on a Virtual Machine Scale Set instance',
          options: [

            Option(
              name: '--command-id',
              description: 'The command id. value from: az vmss run-command list',
              args: [
                Arg(
                name: 'command-i'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-id',
              description: 'Scale set VM instance id',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Scale set name. You can configure the default using az configure --defaults vmss=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Space-separated parameters in the format of \'[name=]value\'',
              args: [
                Arg(
                name: 'parameter'
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
              name: '--scripts',
              description: 'Space-separated script lines. Use @{file} to load script from a file',
              args: [
                Arg(
                name: 'script'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'The operation to get all run commands of an instance in Virtual Machine Scaleset',
          options: [

            Option(
              name: '--instance-id',
              description: 'The instance ID of the virtual machine',
              args: [
                Arg(
                name: 'instance-i'
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
              name: '--vmss-name',
              description: 'The name of the VM scale set',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'The expand expression to apply on the operation',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'The operation to get the VMSS run command',
          options: [

            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-id',
              description: 'The instance ID of the virtual machine',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            ),
            Option(
              name: '--instance-view',
              description: 'The instance view of a run command'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--vmss-name',
              description: 'The name of the VM scale set',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'The operation to update the VMSS run command',
          options: [

            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
              name: '--async-execution',
              description: 'Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete',
              args: [
                Arg(
                name: 'async-execution',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--command-id',
              description: 'Specify a commandId of predefined built-in script',
              args: [
                Arg(
                name: 'command-i'
              )
              ]
            ),
            Option(
              name: '--error-blob-uri',
              description: 'Uri (without SAS) to an append blob where the script error stream will be uploaded',
              args: [
                Arg(
                name: 'error-blob-ur'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-id',
              description: 'The instance ID of the virtual machine',
              args: [
                Arg(
                name: 'instance-i'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--output-blob-uri',
              description: 'Uri (without SAS) to an append blob where the script output will be uploaded',
              args: [
                Arg(
                name: 'output-blob-ur'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--protected-parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'protected-parameter'
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
              name: '--run-as-password',
              description: 'Password if needed for using run-as-user parameter. It will be encrypted and not logged',
              args: [
                Arg(
                name: 'run-as-passwor'
              )
              ]
            ),
            Option(
              name: '--run-as-user',
              description: 'By default script process runs under system/root user. Specify custom user to host the process',
              args: [
                Arg(
                name: 'run-as-use'
              )
              ]
            ),
            Option(
              name: '--script',
              description: 'Specify the script content to be executed on the VM',
              args: [
                Arg(
                name: 'scrip'
              )
              ]
            ),
            Option(
              name: '--script-uri',
              description: 'Specify the script download location',
              args: [
                Arg(
                name: 'script-ur'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
              name: '--timeout-in-seconds',
              description: 'The timeout in seconds to execute the run command',
              args: [
                Arg(
                name: 'timeout-in-second'
              )
              ]
            ),
            Option(
              name: '--vmss-name',
              description: 'The name of the VM scale set',
              args: [
                Arg(
                name: 'vmss-nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
