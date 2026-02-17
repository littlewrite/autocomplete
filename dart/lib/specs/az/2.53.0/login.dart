// AI-generated from TypeScript source: src/az/2.53.0/login.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec loginSpec = FigSpec(
  name: 'login',
  description: 'Log in to Azure',
  options: [
    FigOption(
      name: ['--allow-no-subscriptions'],
      description:
          "Support access tenants without subscriptions. It's uncommon but useful to run tenant level commands, such as 'az ad'",
    ),
    FigOption(
      name: ['--federated-token'],
      description: 'Federated token that can be used for OIDC token exchange',
      args: [FigArg(name: 'federated-token')],
    ),
    FigOption(
      name: ['--identity', '-i'],
      description: "Log in using the Virtual Machine's identity",
    ),
    FigOption(
      name: ['--password', '-p'],
      description:
          'Credentials like user password, or for a service principal, provide client secret or a pem file with key and public certificate. Will prompt if not given',
      args: [FigArg(name: 'password')],
    ),
    FigOption(
      name: ['--scope'],
      description:
          'Used in the /authorize request. It can cover only one static resource',
      args: [FigArg(name: 'scope')],
    ),
    FigOption(
      name: ['--service-principal'],
      description: 'The credential representing a service principal',
      args: [FigArg(name: 'service-principal')],
    ),
    FigOption(
      name: ['--tenant', '-t'],
      description: 'The AAD tenant, must provide when using service principals',
      args: [FigArg(name: 'tenant')],
    ),
    FigOption(
      name: ['--use-cert-sn-issuer'],
      description:
          'Used with a service principal configured with Subject Name and Issuer Authentication in order to support automatic certificate rolls',
      args: [FigArg(name: 'use-cert-sn-issuer')],
    ),
    FigOption(
      name: ['--use-device-code'],
      description:
          "Use CLI's old authentication flow based on device code. CLI will also use this if it can't launch a browser in your behalf, e.g. in remote SSH or Cloud Shell",
    ),
    FigOption(
      name: ['--username', '-u'],
      description:
          'User name, service principal, or managed service identity ID',
      args: [FigArg(name: 'username')],
    ),
  ],
);
