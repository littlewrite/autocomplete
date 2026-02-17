// Auto-generated from TypeScript source: jmeter.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `jmeter` CLI
final FigSpec jmeterSpec = FigSpec(
  name: 'jmeter',
  description: 'Apache JMeter - 100% Java Load Testing Tool',
  options: [

    Option(
      name: ['-v', '--version'],
      description: 'Print the JMeter version information and exit'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print usage information and exit'
    ),
    Option(
      name: ['-p', '--propfile'],
      description: 'The jmeter property file to use',
      args: [
        Arg(
        name: 'property',
        description: 'Your jmeter property file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-q', '--addprop'],
      description: 'Additional JMeter property file(s)',
      args: [
        Arg(
        name: 'files...',
        template: 'filepaths',
        isVariadic: true,
        description: 'Additional JMeter property file(s)'
      )
      ]
    ),
    Option(
      name: ['-t', '--testfile'],
      description: 'The JMeter test(.jmx) file to run. "-t LAST" will load last used file',
      args: [
        Arg(
        name: 'testfile',
        description: 'The JMeter test(.jmx) file to run. "-t LAST" will load last used file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-l', '--logfile'],
      description: 'The file to log samples to',
      args: [
        Arg(
        name: 'logfile',
        description: 'The file to log samples to',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-i', '--jmeterlogconf'],
      description: 'JMeter logging configuration file',
      args: [
        Arg(
        name: 'jmeterlogconf',
        description: 'Jmeter logging configuration file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-j', '--jmeterlogfile'],
      description: 'JMeter run log file',
      args: [
        Arg(
        name: 'jmeterlogfile',
        description: 'JMeter run log file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-n', '--nongui'],
      description: 'Run JMeter in nongui mode'
    ),
    Option(
      name: ['-s', '--server'],
      description: 'Run the JMeter server'
    ),
    Option(
      name: ['-E', '--proxyScheme'],
      description: 'Set a proxy scheme to use for the proxy server',
      args: [
        Arg(
        name: 'proxyScheme',
        description: 'Set a proxy scheme to use for the proxy server'
      )
      ]
    ),
    Option(
      name: ['-H', '--proxyHost'],
      description: 'Set a proxy server for JMeter to use',
      args: [
        Arg(
        name: 'server'
      )
      ]
    ),
    Option(
      name: ['-P', '--proxyPort'],
      description: 'Set proxy server port for JMeter to use',
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Option(
      name: ['-N', '--nonProxyHosts'],
      description: 'Set nonproxy host list (e.g. *.apache.org|localhost)',
      args: [
        Arg(
        name: 'nonProxyHosts',
        description: 'Set nonproxy host list (e.g. *.apache.org|localhost)'
      )
      ]
    ),
    Option(
      name: ['-u', '--username'],
      description: 'Set username for proxy server that JMeter is to use',
      args: [
        Arg(
        name: 'username',
        description: 'Set username for proxy server that JMeter is to use'
      )
      ]
    ),
    Option(
      name: ['-a', '--password'],
      description: 'Set password for proxy server that JMeter is to use',
      args: [
        Arg(
        name: 'password',
        description: 'Set password for proxy server that JMeter is to use'
      )
      ]
    ),
    Option(
      name: ['-J', '--jmeterproperty'],
      description: 'Define additional JMeter properties <argument>=<value>',
      args: [
        Arg(
        name: 'jmeterproperty',
        description: 'Define additional JMeter properties <argument>=<value>'
      )
      ]
    ),
    Option(
      name: ['-G', '--globalproperty'],
      description: 'Define Global properties (sent to servers) e.g. -Gport=123 or -Gglobal.properties',
      args: [
        Arg(
        name: 'globalproperty',
        description: 'Define Global properties (sent to servers) e.g. -Gport=123 or -Gglobal.properties'
      )
      ]
    ),
    Option(
      name: ['-D', '--systemproperty'],
      description: 'Define additional system properties <argument>=<value>',
      args: [
        Arg(
        name: 'systemproperty',
        description: 'Define additional system properties <argument>=<value>'
      )
      ]
    ),
    Option(
      name: ['-S', '--systemPropertyFile'],
      description: 'Additional system property file(s)',
      args: [
        Arg(
        name: 'systemPropertyFile',
        description: 'Additional system property file(s)',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-f', '--forceDeleteResultFile'],
      description: 'Force delete existing results files and web report folder'
    ),
    Option(
      name: ['-L', '--loglevel'],
      description: '[category=]level e.g. jorphan=INFO, jmeter.util=DEBUG or com.example.foo=WARN',
      args: [
        Arg(
        name: 'loglevel',
        suggestions: [

          FigSuggestion(name: 'OFF'),
          FigSuggestion(name: 'FATAL'),
          FigSuggestion(name: 'WARN'),
          FigSuggestion(name: 'INFO'),
          FigSuggestion(name: 'DEBUG'),
          FigSuggestion(name: 'TRACE'),
          FigSuggestion(name: 'ALL')
        ]
      )
      ]
    ),
    Option(
      name: ['-r', '--runremote'],
      description: 'Start remote servers (as defined in remote_hosts)'
    ),
    Option(
      name: ['-R', '--remotestart'],
      description: 'Start these remote servers (overrides remote_hosts)',
      args: [
        Arg(
        name: 'servers',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-d', '--homedir'],
      description: 'The JMeter home directory to use',
      args: [
        Arg(
        name: 'homedir'
      )
      ]
    ),
    Option(
      name: ['-X', '--remoteexit'],
      description: 'Exit the remote servers at end  of test (non-GUI)'
    ),
    Option(
      name: ['-g', '--reportonly'],
      description: 'Generate report dashboard only, from a test results file'
    ),
    Option(
      name: ['-e', '--reportatendofloadtests'],
      description: 'Generate report dashboard after load test'
    ),
    Option(
      name: ['-o', '--reportoutputfolder'],
      description: 'Output folder for report dashboard',
      args: [
        Arg(
        name: 'reportoutputfolder',
        description: 'Output folder for report dashboard',
        template: 'folders'
      )
      ]
    )
  ]
);
