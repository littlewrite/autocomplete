// Auto-generated from TypeScript source: create-nx-workspace.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-nx-workspace` CLI
final FigSpec createNxWorkspaceSpec = FigSpec(
  name: 'create-nx-workspace',
  description: 'Create a new Nx workspace',
  options: [

    Option(
      name: '--name',
      description: 'Workspace name (e.g., org name)'
    ),
    Option(
      name: '--preset',
      description: 'What to create in a new workspace (options: "empty", "npm", "web-components", "angular", "angular-nest", "react", "react-express", "react-native", "next", "gatsby", "nest", "express")',
      args: [
        Arg(
        name: 'preset',
        suggestions: [

          FigSuggestion(
            name: 'empty',
            description: 'Empty [an empty workspace with a layout that works best for building apps]'
          ),
          FigSuggestion(
            name: 'npm',
            description: 'Npm [an empty workspace set up to publish npm packages (similar to and compatible with yarn workspaces)]'
          ),
          FigSuggestion(
            name: 'web-components',
            description: 'Web components [a workspace with a single app built using web components]'
          ),
          FigSuggestion(
            name: 'angular',
            description: 'Angular [a workspace with a single Angular application]'
          ),
          FigSuggestion(
            name: 'angular-nest',
            description: 'Angular-nest [a workspace with a full stack application (Angular + Nest)]'
          ),
          FigSuggestion(
            name: 'react',
            description: 'React [a workspace with a single React application]'
          ),
          FigSuggestion(
            name: 'react-express',
            description: 'React-express [a workspace with a full stack application (React + Express)]'
          ),
          FigSuggestion(
            name: 'react-native',
            description: 'React-native [a workspace with a single React Native application]'
          ),
          FigSuggestion(
            name: 'next',
            description: 'Next.js [a workspace with a single Next.js application]'
          ),
          FigSuggestion(
            name: 'gatsby',
            description: 'Gatsby [a workspace with a single Gatsby application]'
          ),
          FigSuggestion(
            name: 'nest',
            description: 'Nest [a workspace with a single Nest application]'
          ),
          FigSuggestion(
            name: 'express',
            description: 'Express [a workspace with a single Express application]'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--appName',
      description: 'The name of the application created by some presets',
      args: [
        Arg(
        name: 'appName',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--cli',
      description: 'CLI to power the Nx workspace (options: "nx", "angular")',
      args: [
        Arg(
        name: 'cli',
        suggestions: [

          FigSuggestion(
            name: 'nx'
          ),
          FigSuggestion(
            name: 'angular'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--style',
      description: 'Default style option to be used when a non-empty preset is selected options: ("css", "scss", "less") plus ("styl") for all non-Angular and ("styled-components", "@emotion/styled", "styled-jsx") for React, Next.js, Gatsby',
      args: [
        Arg(
        name: 'style',
        suggestions: [

          FigSuggestion(
            name: 'css',
            description: 'CSS'
          ),
          FigSuggestion(
            name: 'scss',
            description: 'SASS(.scss) [ http://sass-lang.com ]'
          ),
          FigSuggestion(
            name: 'less',
            description: 'LESS [ http://lesscss.org ]'
          ),
          FigSuggestion(
            name: 'styl',
            description: 'Stylus(.styl) [ http://stylus-lang.com ]'
          ),
          FigSuggestion(
            name: 'styled-components',
            description: 'Styled-components [ https://styled-components.com ]'
          ),
          FigSuggestion(
            name: '@emotion/styled',
            description: 'Emotion [ https://emotion.sh ]'
          ),
          FigSuggestion(
            name: 'styled-jsx',
            description: 'Styled-jsx [ https://www.npmjs.com/package/styled-jsx ]'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--interactive',
      description: 'Enable interactive mode when using presets (boolean)'
    ),
    Option(
      name: ['--packageManager', '--pm'],
      description: 'Package manager to use (npm, yarn, pnpm)',
      args: [
        Arg(
        name: 'packageManager',
        suggestions: [

          FigSuggestion(
            name: 'npm'
          ),
          FigSuggestion(
            name: 'yarn'
          ),
          FigSuggestion(
            name: 'pnpm'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--nx-cloud',
      description: 'Use Nx Cloud (boolean)'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for create-nx-workspace'
    )
  ]
);
