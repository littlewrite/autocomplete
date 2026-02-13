// Auto-generated from TypeScript source: gcloud.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `gcloud` CLI
final FigSpec gcloudSpec = FigSpec(
  name: 'gcloud',
  description: 'Manage Google Cloud Platform resources and developer workflow',
  subcommands: [

    Subcommand(
      name: 'access-context-manager',
      description: 'Manage Access Context Manager resources',
      loadSpec: 'gcloud/access-context-manager'
    ),
    Subcommand(
      name: 'active-directory',
      description: 'Manage Managed Microsoft AD resources',
      loadSpec: 'gcloud/active-directory'
    ),
    Subcommand(
      name: 'ai-platform',
      description: 'Manage AI Platform jobs and models',
      loadSpec: 'gcloud/ai-platform'
    ),
    Subcommand(
      name: 'alpha',
      description: '*(ALPHA)*  Alpha versions of gcloud commands',
      loadSpec: 'gcloud/alpha'
    ),
    Subcommand(
      name: 'anthos',
      description: 'Anthos command Group',
      loadSpec: 'gcloud/anthos'
    ),
    Subcommand(
      name: 'apigee',
      description: 'Manage Apigee resources',
      loadSpec: 'gcloud/apigee'
    ),
    Subcommand(
      name: 'app',
      description: 'Manage your App Engine deployments',
      loadSpec: 'gcloud/app'
    ),
    Subcommand(
      name: 'artifacts',
      description: 'Manage Artifact Registry resources',
      loadSpec: 'gcloud/artifacts'
    ),
    Subcommand(
      name: 'asset',
      description: 'Manage the Cloud Asset Inventory',
      loadSpec: 'gcloud/asset'
    ),
    Subcommand(
      name: 'auth',
      description: 'Manage oauth2 credentials for the Google Cloud SDK',
      loadSpec: 'gcloud/auth'
    ),
    Subcommand(
      name: 'beta',
      description: '*(BETA)*  Beta versions of gcloud commands',
      loadSpec: 'gcloud/beta'
    ),
    Subcommand(
      name: 'bigtable',
      description: 'Manage your Cloud Bigtable storage',
      loadSpec: 'gcloud/bigtable'
    ),
    Subcommand(
      name: 'builds',
      description: 'Create and manage builds for Google Cloud Build',
      loadSpec: 'gcloud/builds'
    ),
    Subcommand(
      name: 'cheat-sheet',
      description: 'Display gcloud cheat sheet',
      loadSpec: 'gcloud/cheat-sheet'
    ),
    Subcommand(
      name: 'cloud-shell',
      description: 'Manage Google Cloud Shell',
      loadSpec: 'gcloud/cloud-shell'
    ),
    Subcommand(
      name: 'components',
      description: 'List, install, update, or remove Google Cloud SDK components',
      loadSpec: 'gcloud/components'
    ),
    Subcommand(
      name: 'composer',
      description: 'Create and manage Cloud Composer Environments',
      loadSpec: 'gcloud/composer'
    ),
    Subcommand(
      name: 'compute',
      description: 'Create and manipulate Compute Engine resources',
      loadSpec: 'gcloud/compute'
    ),
    Subcommand(
      name: 'config',
      description: 'View and edit Cloud SDK properties',
      loadSpec: 'gcloud/config'
    ),
    Subcommand(
      name: 'container',
      description: 'Deploy and manage clusters of machines for running containers',
      loadSpec: 'gcloud/container'
    ),
    Subcommand(
      name: 'data-catalog',
      description: 'Manage Cloud Data Catalog resources',
      loadSpec: 'gcloud/data-catalog'
    ),
    Subcommand(
      name: 'dataflow',
      description: 'Manage Google Cloud Dataflow resources',
      loadSpec: 'gcloud/dataflow'
    ),
    Subcommand(
      name: 'dataproc',
      description: 'Create and manage Google Cloud Dataproc clusters and jobs',
      loadSpec: 'gcloud/dataproc'
    ),
    Subcommand(
      name: 'datastore',
      description: 'Manage your Cloud Datastore resources',
      loadSpec: 'gcloud/datastore'
    ),
    Subcommand(
      name: 'debug',
      description: 'Commands for interacting with the Cloud Debugger',
      loadSpec: 'gcloud/debug'
    ),
    Subcommand(
      name: 'deployment-manager',
      description: 'Manage deployments of cloud resources',
      loadSpec: 'gcloud/deployment-manager'
    ),
    Subcommand(
      name: 'dns',
      description: 'Manage your Cloud DNS managed-zones and record-sets',
      loadSpec: 'gcloud/dns'
    ),
    Subcommand(
      name: 'docker',
      description: '*(DEPRECATED)*  Enable Docker CLI access to Google Container Registry',
      loadSpec: 'gcloud/docker'
    ),
    Subcommand(
      name: 'domains',
      description: 'Manage domains for your Google Cloud projects',
      loadSpec: 'gcloud/domains'
    ),
    Subcommand(
      name: 'endpoints',
      description: 'Create, enable and manage API services',
      loadSpec: 'gcloud/endpoints'
    ),
    Subcommand(
      name: 'feedback',
      description: 'Provide feedback to the Google Cloud SDK team',
      loadSpec: 'gcloud/feedback'
    ),
    Subcommand(
      name: 'filestore',
      description: 'Create and manipulate Cloud Filestore resources',
      loadSpec: 'gcloud/filestore'
    ),
    Subcommand(
      name: 'firebase',
      description: 'Work with Google Firebase',
      loadSpec: 'gcloud/firebase'
    ),
    Subcommand(
      name: 'firestore',
      description: 'Manage your Cloud Firestore resources',
      loadSpec: 'gcloud/firestore'
    ),
    Subcommand(
      name: 'functions',
      description: 'Manage Google Cloud Functions',
      loadSpec: 'gcloud/functions'
    ),
    Subcommand(
      name: 'game',
      description: 'Managed Cloud Game Services',
      loadSpec: 'gcloud/game'
    ),
    Subcommand(
      name: 'healthcare',
      description: 'Manage Cloud Healthcare resources',
      loadSpec: 'gcloud/healthcare'
    ),
    Subcommand(
      name: 'help',
      description: 'Search gcloud help text',
      loadSpec: 'gcloud/help'
    ),
    Subcommand(
      name: 'iam',
      description: 'Manage IAM service accounts and keys',
      loadSpec: 'gcloud/iam'
    ),
    Subcommand(
      name: 'iap',
      description: 'Manage IAP policies',
      loadSpec: 'gcloud/iap'
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage Cloud Identity Groups and Memberships resources',
      loadSpec: 'gcloud/identity'
    ),
    Subcommand(
      name: 'info',
      description: 'Display information about the current gcloud environment',
      loadSpec: 'gcloud/info'
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize or reinitialize gcloud',
      loadSpec: 'gcloud/init'
    ),
    Subcommand(
      name: 'iot',
      description: 'Manage Cloud IoT resources',
      loadSpec: 'gcloud/iot'
    ),
    Subcommand(
      name: 'kms',
      description: 'Manage cryptographic keys in the cloud',
      loadSpec: 'gcloud/kms'
    ),
    Subcommand(
      name: 'logging',
      description: 'Manage Cloud Logging',
      loadSpec: 'gcloud/logging'
    ),
    Subcommand(
      name: 'meta',
      description: 'Cloud meta introspection commands',
      loadSpec: 'gcloud/meta'
    ),
    Subcommand(
      name: 'ml',
      description: 'Use Google Cloud machine learning capabilities',
      loadSpec: 'gcloud/ml'
    ),
    Subcommand(
      name: 'ml-engine',
      description: 'Manage AI Platform jobs and models',
      loadSpec: 'gcloud/ml-engine'
    ),
    Subcommand(
      name: 'monitoring',
      description: 'Manage Cloud Monitoring dashboards',
      loadSpec: 'gcloud/monitoring'
    ),
    Subcommand(
      name: 'network-management',
      description: 'Manage Network Management resources',
      loadSpec: 'gcloud/network-management'
    ),
    Subcommand(
      name: 'organizations',
      description: 'Create and manage Google Cloud Platform Organizations',
      loadSpec: 'gcloud/organizations'
    ),
    Subcommand(
      name: 'policy-troubleshoot',
      description: 'Troubleshoot Google Cloud Platform policies',
      loadSpec: 'gcloud/policy-troubleshoot'
    ),
    Subcommand(
      name: 'projects',
      description: 'Create and manage project access policies',
      loadSpec: 'gcloud/projects'
    ),
    Subcommand(
      name: 'pubsub',
      description: 'Manage Cloud Pub/Sub topics, subscriptions, and snapshots',
      loadSpec: 'gcloud/pubsub'
    ),
    Subcommand(
      name: 'recommender',
      description: 'Manage Cloud recommendations and recommendation rules',
      loadSpec: 'gcloud/recommender'
    ),
    Subcommand(
      name: 'redis',
      description: 'Manage Cloud Memorystore Redis resources',
      loadSpec: 'gcloud/redis'
    ),
    Subcommand(
      name: 'resource-manager',
      description: 'Manage Cloud Resources',
      loadSpec: 'gcloud/resource-manager'
    ),
    Subcommand(
      name: 'run',
      description: 'Manage your Cloud Run applications',
      loadSpec: 'gcloud/run'
    ),
    Subcommand(
      name: 'scc',
      description: 'Manage Cloud SCC resources',
      loadSpec: 'gcloud/scc'
    ),
    Subcommand(
      name: 'scheduler',
      description: 'Manage Cloud Scheduler jobs and schedules',
      loadSpec: 'gcloud/scheduler'
    ),
    Subcommand(
      name: 'secrets',
      description: 'Manage secrets on Google Cloud',
      loadSpec: 'gcloud/secrets'
    ),
    Subcommand(
      name: 'services',
      description: 'List, enable and disable APIs and services',
      loadSpec: 'gcloud/services'
    ),
    Subcommand(
      name: 'source',
      description: 'Cloud git repository commands',
      loadSpec: 'gcloud/source'
    ),
    Subcommand(
      name: 'spanner',
      description: 'Command groups for Cloud Spanner',
      loadSpec: 'gcloud/spanner'
    ),
    Subcommand(
      name: 'sql',
      description: 'Create and manage Google Cloud SQL databases',
      loadSpec: 'gcloud/sql'
    ),
    Subcommand(
      name: 'survey',
      description: 'Invoke a customer satisfaction survey for Cloud SDK',
      loadSpec: 'gcloud/survey'
    ),
    Subcommand(
      name: 'tasks',
      description: 'Manage Cloud Tasks queues and tasks',
      loadSpec: 'gcloud/tasks'
    ),
    Subcommand(
      name: 'topic',
      description: 'Gcloud supplementary help',
      loadSpec: 'gcloud/topic'
    ),
    Subcommand(
      name: 'version',
      description: 'Print version information for Cloud SDK components',
      loadSpec: 'gcloud/version'
    )
  ]
);
