// Auto-generated from TypeScript source: sphere.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sphere` CLI
final FigSpec sphereSpec = FigSpec(
  name: 'sphere',
  description: 'Manage Azure Sphere',
  subcommands: [

    Subcommand(
      name: 'ca-certificate',
      description: 'Manage certificates in your Azure Sphere Catalog',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download the certificate for your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-of'],
              description: 'Path and file name in which to save the certificate. Specify a relative or absolute path',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--serial-number', '-sn'],
              description: 'The certificate to download. Specify serial number',
              args: [
                Arg(
                name: 'serial-numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download-chain',
          description: 'Download the certificate chain for your Azure Sphere Catalog as a PKCS#7 \'.p7b\' file',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-of'],
              description: 'Path and file name in which to save the certificate chain. Specify a relative or absolute path using a \'.p7b\' extension',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--serial-number', '-sn'],
              description: 'The certificate to download. Specify serial number',
              args: [
                Arg(
                name: 'serial-numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download-proof',
          description: 'Download a proof-of-possession certificate for your Azure Sphere Catalog for use with a provided code',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-of'],
              description: 'Path and file name in which to save the certificate. Specify a relative or absolute path',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--verification-code', '-v'],
              description: 'The verification code for the Azure Sphere Security Service to use when generating the certificate',
              args: [
                Arg(
                name: 'verification-cod'
              )
              ]
            ),
            Option(
              name: ['--serial-number', '-sn'],
              description: 'The certificate to download. Specify serial number',
              args: [
                Arg(
                name: 'serial-numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all certificates in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
      name: 'catalog',
      description: 'Manage Azure Sphere Catalogs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an Azure Sphere Catalog',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The Azure Sphere Catalog name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog name. value from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download-error-report',
          description: 'List or download the available error reports for the selected Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-of'],
              description: 'The path to the new csv file to create, containing the error report data. You can provide a relative or absolute path. If this parameter is not set, the file will be saved in the current folder with a default name. (Path)',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the available Azure Sphere Catalogs',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'Show details of an Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog name. value from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
      name: 'deployment',
      description: 'Manage deployments in your Azure Sphere Catalog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a deployment',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--images', '-i'],
              description: 'Space-separated list of images to deploy. value from: az sphere image list',
              args: [
                Arg(
                name: 'image'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product in which to create a deployment. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'List all deployments',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product in which to list deployments. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'Show details of a deployment',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--deployment-id', '-di'],
              description: 'The deployment ID',
              args: [
                Arg(
                name: 'deployment-i'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product in which to list deployments. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
      name: 'device',
      description: 'Manage Azure Sphere devices',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign a device to a device group in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--targeted-device-group',
              description: 'The targeted device group id. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'targeted-device-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to target for this command. This is required when no device or multiple devices are attached, to disambiguate which device to target. If the device is attached, you may provide either Device ID, IP address, or Local Connection ID. Values from: az sphere device list-attached. Otherwise you must provide the Device ID only. value from: az sphere device list',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The current device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The current product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'claim',
          description: 'Claim a device in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to target for this command. This is required when no device or multiple devices are attached, to disambiguate which device to target. If the device is attached, you may provide either Device ID, IP address, or Local Connection ID. Values from: az sphere device list-attached. Otherwise you must provide the Device ID only',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name where to claim the device. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name where to claim the device. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-cloud-test',
          description: 'Enable a device for testing cloud loading by disabling development and debugging on the attached device, and by assigning it to a device group that enables application updates from the cloud. By default, this will be the \'Field Test\' device group of the device\'s product, but other device groups can be specified. Not for use in manufacturing scenarios: see https://aka.ms/AzureSphereManufacturing for more information',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name to which the device will be assigned. By default, this is the \'Field Test\' device group of the product. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The target product name. The device will be assigned to the default \'Field Test\' device group of the selected product unless the device-group is also specified. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-development',
          description: 'Enable a device for development by enabling sideloading and debugging on the attached device, and by assigning it to a device group that disables application updates from the cloud. By default, this will be the \'Development\' device group of the device\'s product, but other device groups can be specified. Not for use in manufacturing scenarios: see https://aka.ms/AzureSphereManufacturing for more information',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name to which the device will be assigned. By default, this is the \'Development\' device group of the product. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--enable-rt-core-debugging', '-r'],
              description: 'Install drivers required to debug applications running on a real-time core. Requires administrator permissions'
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The target product name. The device will be assigned to the default \'Development\' device group of the selected product unless the device-group is also specified. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the devices in your Azure Sphere Catalog, product, or device group',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-attached',
          description: 'List all the attached devices'
        ),
        Subcommand(
          name: 'recover',
          description: 'Use recovery mode to load new firmware onto the attached device',
          options: [

            Option(
              name: '--capability',
              description: 'Filename of a device capability image to apply to the device during recovery. (Path)',
              args: [
                Arg(
                name: 'capabilit'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: '--images',
              description: 'Folder containing the image packages to write to the device. If not specified then the latest OS images are downloaded and used. (Path)',
              args: [
                Arg(
                name: 'image'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rescan-attached',
          description: 'Show the number of attached devices'
        ),
        Subcommand(
          name: 'restart',
          description: 'Restart the attached device',
          options: [

            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of an existing device in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to target for this command. This is required when no device or multiple devices are attached, to disambiguate which device to target. If the device is attached, you may provide either Device ID, IP address, or Local Connection ID. Values from: az sphere device list-attached. Otherwise you must provide the Device ID only. value from: az sphere device list',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-attached',
          description: 'Show the details of the attached device',
          options: [

            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-count',
          description: 'Show the number of devices in your Azure Sphere Catalog, product, or device group',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-deployment-status',
          description: 'Show the deployment status of the operating system on a device',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-os-version',
          description: 'Show the operating system version on the attached device',
          options: [

            Option(
              name: ['--device', '-d'],
              description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unassign',
          description: 'Unassign a device from a device group in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to target for this command. This is required when no device or multiple devices are attached, to disambiguate which device to target. If the device is attached, you may provide either Device ID, IP address, or Local Connection ID. Values from: az sphere device list-attached. Otherwise you must provide the Device ID only. value from: az sphere device list',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'app',
          description: 'Manage applications on the attached device',
          subcommands: [

            Subcommand(
              name: 'show-memory-stats',
              description: 'Show the memory statistics for applications on the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-quota',
              description: 'Show the storage quota and usage for applications on the attached device',
              options: [

                Option(
                  name: ['--component-id', '-i'],
                  description: 'The ID of the component to get the quota information for. By default, gets all components. (Guid)',
                  args: [
                    Arg(
                    name: 'component-i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-status',
              description: 'Show the status of applications on the attached device',
              options: [

                Option(
                  name: ['--component-id', '-i'],
                  description: 'The ID of the component to show the status of; by default, all application statuses are shown. (Guid)',
                  args: [
                    Arg(
                    name: 'component-i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Start applications on the attached device',
              options: [

                Option(
                  name: ['--component-id', '-i'],
                  description: 'The ID of the component to start; by default, all applications are started. Required if \'--debug-mode\' is used. (Guid)',
                  args: [
                    Arg(
                    name: 'component-i'
                  )
                  ]
                ),
                Option(
                  name: '--debug-mode',
                  description: 'Start the application in debug mode. \'--component-id\' must be provided',
                  args: [
                    Arg(
                    name: 'debug-mode',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'stop',
              description: 'Stop applications on the attached device',
              options: [

                Option(
                  name: ['--component-id', '-i'],
                  description: 'The ID of the component to stop; by default, all applications are stopped. (Guid)',
                  args: [
                    Arg(
                    name: 'component-i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'capability',
          description: 'Manage device capability configurations',
          subcommands: [

            Subcommand(
              name: 'download',
              description: 'Download a device capability file from the Azure Sphere Security Service',
              options: [

                Option(
                  name: ['--catalog', '-c'],
                  description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
                  args: [
                    Arg(
                    name: 'catalo'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to target for this command. This is required when no device or multiple devices are attached, to disambiguate which device to target. If the device is attached, you may provide either Device ID, IP address, or Local Connection ID. Values from: az sphere device list-attached. Otherwise you must provide the Device ID only. value from: az sphere device list',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: ['--device-group', '-dg'],
                  description: 'The device group name. value from: az sphere device-group list',
                  args: [
                    Arg(
                    name: 'device-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--output-file', '-of'],
                  description: 'Path and file name in which to download capabilities. If this parameter is not set, the file will be saved in the current folder with a default name (capability-device.cap)',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--product', '-p'],
                  description: 'The product name. value from: az sphere product list',
                  args: [
                    Arg(
                    name: 'produc'
                  )
                  ]
                ),
                Option(
                  name: ['--type', '-t'],
                  description: 'Space-separated list of capabilities to download. If this parameter is not set, the capability None will be applied',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'ApplicationDevelopment'),
                      FigSuggestion(name: 'FieldServicing')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'select',
              description: 'Temporarily select the device capability session for the attached device',
              options: [

                Option(
                  name: '--capability-file',
                  description: 'The path and filename to the device capability configuration file to select. You can provide a relative or absolute path',
                  args: [
                    Arg(
                    name: 'capability-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--none', '-n'],
                  description: 'End the temporarily selected device capability session'
                )
              ]
            ),
            Subcommand(
              name: 'show-attached',
              description: 'Show the current device capability configuration of the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the device capability configuration for the attached device',
              options: [

                Option(
                  name: '--capability-file',
                  description: 'The path and filename to the device capability configuration file to apply',
                  args: [
                    Arg(
                    name: 'capability-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'certificate',
          description: 'Manage certificates on the attached device',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a certificate in the attached device\'s certificate store',
              options: [

                Option(
                  name: ['--cert-type', '-t'],
                  description: 'The type of certificate to add. \'rootca\' - a root CA certificate for use with EAP-TLS networks where the device authenticates the server. \'client\' - a client certificate, containing both the public and private key, for use with EAP-TLS networks. Please see: https://aka.ms/AzureSphereCertificateStore for more details',
                  args: [
                    Arg(
                    name: 'cert-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate', '-c'],
                  description: 'The name of the certificate to add',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                ),
                Option(
                  name: ['--public-key-file', '-p'],
                  description: 'The path to a public key certificate .pem file. You can provide a relative or absolute path',
                  args: [
                    Arg(
                    name: 'public-key-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Values from: az sphere device list-attached. Specify the ID, IP address, or Local Connection ID of an attached device',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: '--private-key-file',
                  description: 'The path to a client private key .pem file. Required when adding a certificate of type \'client\'. You can provide a relative or absolute path',
                  args: [
                    Arg(
                    name: 'private-key-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--private-key-password', '-w'],
                  description: 'Password for the client private key. Required when adding a client private key that is encrypted',
                  args: [
                    Arg(
                    name: 'private-key-passwor'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a certificate in the attached device\'s certificate store',
              options: [

                Option(
                  name: ['--certificate', '-c'],
                  description: 'The name of the certificate to delete. value from: az sphere device certificate list',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Values from: az sphere device list-attached. Specify the ID, IP address, or Local Connection ID of an attached device',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List certificates in the attached device\'s certificate store',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Values from: az sphere device list-attached. Specify the ID, IP address, or Local Connection ID of an attached device',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a certificate in the attached device\'s certificate store',
              options: [

                Option(
                  name: ['--certificate', '-c'],
                  description: 'The certificate name of the certificate for which to show the details. value from: az sphere device certificate list',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Values from: az sphere device list-attached. Specify the ID, IP address, or Local Connection ID of an attached device',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-quota',
              description: 'Show the available free space in the attached device\'s certificate store',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Values from: az sphere device list-attached. Specify the ID, IP address, or Local Connection ID of an attached device',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'image',
          description: 'Manage device images',
          subcommands: [

            Subcommand(
              name: 'list-installed',
              description: 'List the images currently on the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: ['--full', '-f'],
                  description: 'Lists all images on the device; rather than only applications'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'manufacturing-state',
          description: 'Manage the manufacturing state of attached devices',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the manufacturing state of the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the manufacturing state of the attached device. Caution: manufacturing state changes are permanent and irreversible',
              options: [

                Option(
                  name: ['--state', '-s'],
                  description: 'The manufacturing state of the attached device',
                  args: [
                    Arg(
                    name: 'state',
                    suggestions: [

                      FigSuggestion(name: 'DeviceComplete'),
                      FigSuggestion(name: 'Module1Complete')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'network',
          description: 'Provides information about the status of network interfaces on the attached device',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disable a network interface on the attached device',
              options: [

                Option(
                  name: '--interface',
                  description: 'The interface to enable. value from: az sphere device network list-interfaces',
                  args: [
                    Arg(
                    name: 'interfac'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'enable',
              description: 'Enable a network interface on the attached device',
              options: [

                Option(
                  name: '--interface',
                  description: 'The interface to enable. value from: az sphere device network list-interfaces',
                  args: [
                    Arg(
                    name: 'interfac'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-firewall-rules',
              description: 'List firewall rules for the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-interfaces',
              description: 'List the network interfaces for the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-diagnostics',
              description: 'Show diagnostics for one or all Wi-Fi networks on the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: ['--network', '-n'],
                  description: 'The network for which to show diagnostics. value from: az sphere device network list-interfaces',
                  args: [
                    Arg(
                    name: 'networ'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-status',
              description: 'Show the network status for the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update-interface',
              description: 'Update the network interface configuration for the attached device',
              options: [

                Option(
                  name: '--hardware-address',
                  description: 'Specify the device hardware address to be set',
                  args: [
                    Arg(
                    name: 'hardware-addres'
                  )
                  ]
                ),
                Option(
                  name: '--interface',
                  description: 'The interface to update. value from: az sphere device network list-interfaces',
                  args: [
                    Arg(
                    name: 'interfac'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'proxy',
              description: 'Manage proxy address use for network connection',
              subcommands: [

                Subcommand(
                  name: 'apply',
                  description: 'Configure the network proxy on the attached device',
                  options: [

                    Option(
                      name: ['--address', '-a'],
                      description: 'The network address of the proxy',
                      args: [
                        Arg(
                        name: 'addres'
                      )
                      ]
                    ),
                    Option(
                      name: ['--authentication', '-t'],
                      description: 'If the proxy requires a user name and password, set this to basic, otherwise anonymous. Allowed values are anonymous, basic',
                      args: [
                        Arg(
                        name: 'authenticatio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--port', '-r'],
                      description: 'The port on the network address to be used',
                      args: [
                        Arg(
                        name: 'por'
                      )
                      ]
                    ),
                    Option(
                      name: ['--device', '-d'],
                      description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                      args: [
                        Arg(
                        name: 'devic'
                      )
                      ]
                    ),
                    Option(
                      name: '--disable',
                      description: 'Disable network proxy on the attached device'
                    ),
                    Option(
                      name: '--enable',
                      description: 'Enable network proxy on the attached device'
                    ),
                    Option(
                      name: ['--no-proxy-addresses', '-n'],
                      description: 'Array of space-separated network addresses the device should avoid for proxy connection',
                      args: [
                        Arg(
                        name: 'no-proxy-addresse'
                      )
                      ]
                    ),
                    Option(
                      name: ['--password', '-p'],
                      description: 'For Basic Authentication, password used for proxy authentication',
                      args: [
                        Arg(
                        name: 'passwor'
                      )
                      ]
                    ),
                    Option(
                      name: ['--username', '-u'],
                      description: 'For Basic Authentication, username used for proxy authentication',
                      args: [
                        Arg(
                        name: 'usernam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete proxy connection on the attached device',
                  options: [

                    Option(
                      name: ['--device', '-d'],
                      description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                      args: [
                        Arg(
                        name: 'devic'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show proxy connection on the attached device',
                  options: [

                    Option(
                      name: ['--device', '-d'],
                      description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                      args: [
                        Arg(
                        name: 'devic'
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
          name: 'sideload',
          description: 'Deploy and manage applications on the attached device',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete applications from the attached device',
              options: [

                Option(
                  name: ['--component-id', '-i'],
                  description: 'The ID of the component to delete; by default, all applications are deleted',
                  args: [
                    Arg(
                    name: 'component-i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: ['--except-component-ids', '-e'],
                  description: 'Space-separated IDs of components to exclude from the set of applications to be deleted',
                  args: [
                    Arg(
                    name: 'except-component-id'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'deploy',
              description: 'Deploy an application to the attached device',
              options: [

                Option(
                  name: ['--image-package', '-p'],
                  description: 'The path and filename of the image package file to deploy. You can provide a relative or absolute path. (Path)',
                  args: [
                    Arg(
                    name: 'image-packag'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Force the deployment of an image using a Beta API that may no longer be supported'
                ),
                Option(
                  name: ['--manual-start', '-m'],
                  description: 'Do not automatically start the application after sideload'
                )
              ]
            ),
            Subcommand(
              name: 'set-deployment-timeout',
              description: 'Set deployment timeout in seconds',
              options: [

                Option(
                  name: ['--value', '-v'],
                  description: 'Timeout value in seconds',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-deployment-timeout',
              description: 'Show deployment timeout in seconds'
            )
          ]
        ),
        Subcommand(
          name: 'wifi',
          description: 'Manage Wi-Fi configurations for the attached device',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a Wi-Fi network on the attached device',
              options: [

                Option(
                  name: ['--ssid', '-s'],
                  description: 'The SSID of the new network',
                  args: [
                    Arg(
                    name: 'ssi'
                  )
                  ]
                ),
                Option(
                  name: '--client-cert-id',
                  description: '[EAP-TLS] - A string value (up to 16 characters) that identifies the client certificate (containing both the public and private key). Required to set up an EAP-TLS network',
                  args: [
                    Arg(
                    name: 'client-cert-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'User@domain [EAP-TLS] ID recognized for authentication by this network\'s RADIUS server. Required for some EAP-TLS networks',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--config-name',
                  description: 'A string value (up to 16 characters) that specifies the name for this network configuration',
                  args: [
                    Arg(
                    name: 'config-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                ),
                Option(
                  name: ['--psk', '-p'],
                  description: 'The WPA/WPA2 PSK for the new network. Do not set this if connecting to an open network',
                  args: [
                    Arg(
                    name: 'ps'
                  )
                  ]
                ),
                Option(
                  name: '--root-ca-cert-id',
                  description: '[EAP-TLS] - A string value (up to 16 characters) that identifies the server\'s root CA certificate for EAP-TLS networks where the device authenticates the server',
                  args: [
                    Arg(
                    name: 'root-ca-cert-i'
                  )
                  ]
                ),
                Option(
                  name: '--targeted-scan',
                  description: 'Attempt to connect to an SSID even if not advertised',
                  args: [
                    Arg(
                    name: 'targeted-scan',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'disable',
              description: 'Disable a Wi-Fi connection on the attached device',
              options: [

                Option(
                  name: ['--id', '-i'],
                  description: 'The ID of the network to disable',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'enable',
              description: 'Enable a Wi-Fi network on the attached device',
              options: [

                Option(
                  name: ['--id', '-i'],
                  description: 'The ID of the network to disable',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'forget',
              description: 'Forget a Wi-Fi network on the attached device',
              options: [

                Option(
                  name: ['--id', '-i'],
                  description: 'The ID of the network to disable',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the current Wi-Fi configurations for the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'reload-config',
              description: 'Reload the Wi-Fi network configuration on the attached device. Use this command after you add or remove a certificate (azsphere device certificate) to ensure that EAP-TLS networks use the most recent contents of the certificate store',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'scan',
              description: 'Scan for available Wi-Fi networks visible to the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a Wi-Fi network on the attached device',
              options: [

                Option(
                  name: ['--id', '-i'],
                  description: 'The ID of the network to show details for',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-status',
              description: 'Show the status of the wireless interface on the attached device',
              options: [

                Option(
                  name: ['--device', '-d'],
                  description: 'The device to run the command on when multiple devices are attached. Specify the ID, IP address, or Local Connection ID of the device. value from: az sphere device list-attached',
                  args: [
                    Arg(
                    name: 'devic'
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
      name: 'device-group',
      description: 'Manage device groups in your Azure Sphere Catalog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a device group',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of the device group',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Alphanumeric name of the device group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--allow-crash-dumps-collection', '-cd'],
              description: 'Provide consent for collection of crash dumps by Microsoft for this device-group. For more information, see https://aka.ms/AzureSphereCrashDumpsCollection',
              args: [
                Arg(
                name: 'allow-crash-dumps-collection',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--application-update', '-a'],
              description: 'Application update policy for this device group',
              args: [
                Arg(
                name: 'application-update',
                suggestions: [

                  FigSuggestion(name: 'No3rdPartyAppUpdates'),
                  FigSuggestion(name: 'UpdateAll')
                ]
              )
              ]
            ),
            Option(
              name: ['--os-feed', '-f'],
              description: 'The OS feed type to use for OS updates',
              args: [
                Arg(
                name: 'os-feed',
                suggestions: [

                  FigSuggestion(name: 'Retail'),
                  FigSuggestion(name: 'RetailEval')
                ]
              )
              ]
            ),
            Option(
              name: ['--regional-data-boundary', '-r'],
              description: 'Regional data boundary for this device group',
              args: [
                Arg(
                name: 'regional-data-boundary',
                suggestions: [

                  FigSuggestion(name: 'EU'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-defaults',
          description: 'Create default device groups targeting a product',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified device group',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product for which to delete the device groups. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'List all device groups in an Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'List all device groups that have a specified name',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'List all device groups in a product. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a device group\'s details',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group to show. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name for which to show the device group. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'Update a device group\'s details',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--device-group', '-dg'],
              description: 'The device group name. value from: az sphere device-group list',
              args: [
                Arg(
                name: 'device-grou'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--allow-crash-dumps-collection', '-cd'],
              description: 'Provide consent for collection of crash dumps by Microsoft for this device-group. For more information, see https://aka.ms/AzureSphereCrashDumpsCollection',
              args: [
                Arg(
                name: 'allow-crash-dumps-collection',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--application-update', '-a'],
              description: 'Application update policy for this device group',
              args: [
                Arg(
                name: 'application-update',
                suggestions: [

                  FigSuggestion(name: 'No3rdPartyAppUpdates'),
                  FigSuggestion(name: 'UpdateAll')
                ]
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'A new description of the device group',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--os-feed', '-f'],
              description: 'The OS feed type to use for OS updates',
              args: [
                Arg(
                name: 'os-feed',
                suggestions: [

                  FigSuggestion(name: 'Retail'),
                  FigSuggestion(name: 'RetailEval')
                ]
              )
              ]
            ),
            Option(
              name: ['--regional-data-boundary', '-r'],
              description: 'Regional data boundary for this device group',
              args: [
                Arg(
                name: 'regional-data-boundary',
                suggestions: [

                  FigSuggestion(name: 'EU'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-support-data',
      description: 'Gather diagnostic data about your system, cloud and device configurations',
      options: [

        Option(
          name: ['--catalog', '-c'],
          description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
          args: [
            Arg(
            name: 'catalo'
          )
          ]
        ),
        Option(
          name: ['--output-file', '-of'],
          description: 'The path and filename of the .zip file to save the support data in. You can provide a relative or absolute path',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'image',
      description: 'Manage images in your Azure Sphere Catalog',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add an image to your Azure Sphere Catalog from your local machine',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--image-path', '-img'],
              description: 'Path to a local image file',
              args: [
                Arg(
                name: 'image-pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--regional-data-boundary', '-r'],
              description: 'Regional data boundary for this image',
              args: [
                Arg(
                name: 'regional-data-boundary',
                suggestions: [

                  FigSuggestion(name: 'EU'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all images in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-targeted',
          description: 'List images uploaded in your Azure Sphere Catalog that will be installed when the device is updated',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--device', '-d'],
              description: 'The device to target for this command. This is required when no device or multiple devices are attached, to disambiguate which device to target. If the device is attached, you may provide either Device ID, IP address, or Local Connection ID. Values from: az sphere device list-attached. Otherwise you must provide the Device ID only',
              args: [
                Arg(
                name: 'devic'
              )
              ]
            ),
            Option(
              name: ['--full', '-f'],
              description: 'List all images in your Azure Sphere Catalog'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of an existing image from your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: '--image',
              description: 'The image ID. value from: az sphere image list',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
      name: 'image-package',
      description: 'Manage image packaging',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show details of a given image package',
          options: [

            Option(
              name: '--image-package',
              description: 'Path to the image package file to show details for. You can provide a relative or absolute path',
              args: [
                Arg(
                name: 'image-packag'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'product',
      description: 'Manage products in your Azure Sphere Catalog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new product in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'A description of the product',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Alphanumeric name of the product',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified product',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'List all products in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'Show details of a product in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
          description: 'Update a product\'s details in your Azure Sphere Catalog',
          options: [

            Option(
              name: ['--catalog', '-c'],
              description: 'The Azure Sphere Catalog in which to perform this operation. Specify Azure Sphere Catalog name. You can configure the default Azure Sphere Catalog using az config set defaults.sphere.catalog=<name>. Values from: az sphere catalog list',
              args: [
                Arg(
                name: 'catalo'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'The new product description to update the product to',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--product', '-p'],
              description: 'The product name. value from: az sphere product list',
              args: [
                Arg(
                name: 'produc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the Azure resource group. You can configure the default group using az config set defaults.group=<name>. Values from: az group list',
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
