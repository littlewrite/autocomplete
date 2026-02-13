// Auto-generated from TypeScript source: login.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `login` CLI
final FigSpec loginSpec = FigSpec(
  name: 'login',
  description: 'Log in to Azure',
  options: [

    Option(
      name: '--allow-no-subscriptions',
      description: 'Support access tenants without subscriptions. It\'s uncommon but useful to run tenant level commands, such as \'az ad\''
    ),
    Option(
      name: '--federated-token',
      description: 'Federated token that can be used for OIDC token exchange',
      args: [
        Arg(
        name: 'federated-toke'
      )
      ]
    ),
    Option(
      name: ['--identity', '-i'],
      description: 'Log in using the Virtual Machine\'s identity'
    ),
    Option(
      name: ['--password', '-p'],
      description: 'Credentials like user password, or for a service principal, provide client secret or a pem file with key and public certificate. Will prompt if not given',
      args: [
        Arg(
        name: 'passwor'
      )
      ]
    ),
    Option(
      name: '--scope',
      description: 'Used in the /authorize request. It can cover only one static resource',
      args: [
        Arg(
        name: 'scop'
      )
      ]
    ),
    Option(
      name: '--service-principal',
      description: 'The credential representing a service principal',
      args: [
        Arg(
        name: 'service-principa'
      )
      ]
    ),
    Option(
      name: ['--tenant', '-t'],
      description: 'The AAD tenant, must provide when using service principals',
      args: [
        Arg(
        name: 'tenan'
      )
      ]
    ),
    Option(
      name: '--use-cert-sn-issuer',
      description: 'Used with a service principal configured with Subject Name and Issuer Authentication in order to support automatic certificate rolls',
      args: [
        Arg(
        name: 'use-cert-sn-issue'
      )
      ]
    ),
    Option(
      name: '--use-device-code',
      description: 'Use CLI\'s old authentication flow based on device code. CLI will also use this if it can\'t launch a browser in your behalf, e.g. in remote SSH or Cloud Shell'
    ),
    Option(
      name: ['--username', '-u'],
      description: 'User name, service principal, or managed service identity ID',
      args: [
        Arg(
        name: 'usernam'
      )
      ]
    )
  ]
);
