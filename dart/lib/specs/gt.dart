// Auto-generated from TypeScript source: gt.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `gt` CLI
final FigSpec gtSpec = FigSpec(
  name: 'gt',
  description: 'Graphite.dev CLI',
  subcommands: [
    Subcommand(
      name: 'aliases',
      description: 'Edit your command aliases',
      options: [
        Option(
          name: '--reset',
          description: 'Reset your alias configuration'
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Add your auth token to enable Graphite CLI to create and update your PRs on GitHub',
      priority: 50,
      options: [
        Option(
          name: ['--token', '-t'],
          description: 'Auth token. Get it from: https://app.graphite.dev/activate',
          args: [
            Arg(
            name: 'token',
            description: 'Auth token'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['bottom', 'b'],
      description: 'Switch to the first branch from trunk in the current stack'
    ),
    Subcommand(
      name: 'changelog',
      description: 'Show the Graphite CLI changelog',
      priority: 50
    ),
    Subcommand(
      name: ['checkout', 'co'],
      description: 'Switch to a branch. If no branch is provided, opens an interactive selector',
      args: [
        Arg(
        name: 'branch',
        description: 'Name of branch to checkout',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['--show-untracked', '-u'],
          description: 'Include untracked branched in interactive selection'
        )
      ]
    ),
    Subcommand(
      name: 'children',
      description: 'Show the children of the current branch'
    ),
    Subcommand(
      name: 'completion',
      description: 'Set up bash or zsh tab completion'
    ),
    Subcommand(
      name: 'config',
      description: 'Configure the Graphite CLI'
    ),
    Subcommand(
      name: ['continue', 'cont'],
      description: 'Continues the most recent Graphite command halted by a merge conflict',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Stage all changes before continuing'
        )
      ]
    ),
    Subcommand(
      name: ['create', 'c'],
      description: 'Create a new branch stacked on top of the current branch and commit staged changes. If no branch name is specified but a commit message is passed, generate a branch name from the commit message',
      args: [
        Arg(
        name: 'name',
        description: 'Branch name',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['--message', '-m'],
          description: 'Commit staged changes on the new branch with this message',
          args: [
            Arg(
            name: 'message',
            description: 'Commit message'
          )
          ]
        ),
        Option(
          name: ['--all', '-a'],
          description: 'Stage all unstaged changes on the new branch with this message'
        ),
        Option(
          name: ['--patch', '-p'],
          description: 'Pick hunks to stage before committing'
        ),
        Option(
          name: ['--insert', '-i'],
          description: 'When true, any existing children of the current branch will become children of the new branch'
        )
      ]
    ),
    Subcommand(
      name: 'dash',
      description: 'Open the web dashboard'
    ),
    Subcommand(
      name: ['delete', 'dl'],
      description: 'Delete a branch and its corresponding Graphite metadata',
      args: [
        Arg(
        name: 'name',
        description: 'Branch name'
      )
      ],
      options: [
        Option(
          name: ['--force', '-f'],
          description: 'Delete the branch even if it is not merged or closed'
        )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Show the Graphite CLI docs'
    ),
    Subcommand(
      name: ['down', 'd'],
      description: 'Switch to the parent of the current branch',
      args: [
        Arg(
        name: 'steps',
        description: 'The number of levels to traverse downstack',
        isOptional: true,
        defaultValue: '1'
      )
      ],
      options: [
        Option(
          name: ['--steps', '-n'],
          description: 'The number of levels to traverse downstack',
          args: [
            Arg(
            name: 'steps',
            defaultValue: '1'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'feedback',
      description: 'Commands for providing feedback and debug state',
      args: [
        Arg(
        name: 'message',
        description: 'Post a string directly to the maintainers\' Slack so they can drown in praise, factor in your feedback, laugh at your jokes, cry at your insults, or fall victim to Slack injection attacks',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '--print-debug-context',
          description: 'Print a debug summary of your repository. Useful for creating bug report details'
        ),
        Option(
          name: '--with-debug-context',
          description: 'Include a blob of json describing your repo\'s state to help with debugging. Run \'gt feedback debug-context\' to see what would be included'
        )
      ]
    ),
    Subcommand(
      name: 'fish',
      description: 'Set up \'fish\' tab completion'
    ),
    Subcommand(
      name: ['fold', 'f'],
      description: 'Fold a branch\'s changes into its parent, update dependencies of descendants of the new combined branch, and restack',
      options: [
        Option(
          name: ['--keep', '-k'],
          description: 'Keeps the name of the current branch instead of using the name of its parent'
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get branches from trunk to the specified branch from remote, prompting the user to resolve conflicts. If no branch is provided, get downstack from the current branch',
      args: [
        Arg(
        name: 'branch',
        description: 'Branch to get from remote',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['--force', '-f'],
          description: 'Overwrite all fetched branches with remote source of truth'
        )
      ]
    ),
    Subcommand(
      name: ['info', 'i'],
      description: 'Display information about the current branch',
      options: [
        Option(
          name: ['--patch', '-p'],
          description: 'Show the changes made by each commit'
        ),
        Option(
          name: ['--diff', '-d'],
          description: 'Show the diff between this branch and its parent. Takes precedence over patch'
        ),
        Option(
          name: ['--body', '-b'],
          description: 'Show the PR body, if it exists'
        ),
        Option(
          name: ['--stat', '-s'],
          description: 'Show a diffstat instead of a full diff. Modifies either --patch or --diff. If neither is passed, implies --diff'
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize Graphite in this repository by selecting a trunk branch. Can also be used to change the trunk branch of the repository',
      options: [
        Option(
          name: '--reset',
          description: 'Untrack all branches'
        ),
        Option(
          name: '--trunk',
          description: 'The name of your trunk branch. If no name is passed, you will be prompted to select one interactively',
          args: [
            Arg(
            name: 'trunk',
            description: 'Name of the trunk branch',
            isOptional: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['log', 'l'],
      description: 'Commands that log your stacks',
      options: [
        Option(
          name: '--classic',
          description: 'Use the old short logging style, which runs out of screen real estate more quickly. Other options will not work in classic mode'
        ),
        Option(
          name: ['--reverse', '-r'],
          description: 'Print the log upside down. Handy when you have a lot of branches'
        ),
        Option(
          name: ['--show-untracked', '-u'],
          description: 'Include untracked branched in interactive selection'
        ),
        Option(
          name: ['--stack', '-s'],
          description: 'Only show ancestors and descendants of the current branch'
        ),
        Option(
          name: ['--steps', '-n'],
          description: 'Only show this many levels upstack and downstack. Implies --stack',
          dependsOn: ['--stack'],
          args: [
            Arg(
            name: 'Number of steps'
          )
          ]
        )
      ],
      subcommands: [
        Subcommand(
          name: '',
          description: 'Log all branches tracked by Graphite, showing dependencies and info for each'
        ),
        Subcommand(
          name: 'long',
          description: 'Display a graph of the commit ancestry of all branches'
        ),
        Subcommand(
          name: 'short',
          description: 'Log all stacks tracked by Graphite, arranged to show dependencies'
        )
      ]
    ),
    Subcommand(
      name: 'merge',
      description: 'Merge the pull requests associated with all branches from trunk to the current branch via Graphite',
      options: [
        Option(
          name: ['--confirm', '-c'],
          description: 'Asks for confirmation before merging branches. Prompts for confirmation if the local branches differ from remote, regardless of the value of this flag'
        ),
        Option(
          name: '--dry-run',
          description: 'Reports the PRs that would be merged and terminates. No branches are merged'
        )
      ]
    ),
    Subcommand(
      name: ['modify', 'm'],
      description: 'Modify the current branch by amending its commit or creating a new commit. Automatically restacks descendants. If you have any unstaged changes, you will be asked whether you\'d like to stage them',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Stage all changes before committing'
        ),
        Option(
          name: ['--commit', '-c'],
          description: 'Create a new commit instead of amending the current commit. If this branch has no commits, this command always creates a new commit'
        ),
        Option(
          name: ['--edit', '-e'],
          description: 'If passed, open an editor to edit the commit message. When creating a new commit, this flag is ignored'
        ),
        Option(
          name: '--interactive-rebase',
          description: 'Ignore all other flags and start a git interactive rebase on the commits in this branch'
        ),
        Option(
          name: ['--message', '-m'],
          description: 'The message for the new or amended commit. If passed, no editor is opened',
          args: [
            Arg(
            name: 'message',
            description: 'Commit message'
          )
          ]
        ),
        Option(
          name: ['--patch', '-p'],
          description: 'Pick hunks to stage before committing'
        )
      ]
    ),
    Subcommand(
      name: 'move',
      description: 'Rebase the current branch onto the target branch and restack all of its descendants. If no branch is passed in, opens an interactive selector',
      options: [
        Option(
          name: ['--onto', '-o'],
          description: 'Branch to move the current branch onto',
          args: [
            Arg(
            name: 'branch',
            description: 'Branch to move'
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Branch to move (defaults to current branch)',
          args: [
            Arg(
            name: 'branch',
            description: 'Branch to move'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'parent',
      description: 'Show the parent of the current branch'
    ),
    Subcommand(
      name: 'pop',
      description: 'Delete the current branch but reaint the state of files in the working tree'
    ),
    Subcommand(
      name: 'pr',
      description: 'Opens the pull request page for a branch or PR number. If no branch is passed, the current branch\'s PR is opened',
      args: [
        Arg(
        name: 'branch',
        description: 'A branch name or PR number to open'
      )
      ]
    ),
    Subcommand(
      name: ['rename', 'rn'],
      description: 'Rename a branch and update metadata referencing it. If no branch name is supplied, you will be prompted for a new branch name. Note that this removes any associated GitHub pull request',
      args: [
        Arg(
        name: 'name',
        description: 'Branch name'
      )
      ],
      options: [
        Option(
          name: ['--force', '-f'],
          description: 'Allow renaming a branch that is already associated with an open GitHub pull request'
        )
      ]
    ),
    Subcommand(
      name: 'reorder',
      description: 'Reorder branches between trunk and the current branch, restacking all of their descendants. Opens an editor where you can reorder branches by moving around a line corresponding to each branch'
    ),
    Subcommand(
      name: ['restack', 'r'],
      description: 'Ensure the current branch is based on its parent, rebasing if necessary. If conflicts are encountered, you will be prompted to resolve them via an interactive Git rebase',
      options: [
        Option(
          name: '--branch',
          description: 'Which branch to run this command from. Defaults to the current branch',
          args: [
            Arg(
            name: 'branch',
            description: 'Name of the branch'
          )
          ]
        ),
        Option(
          name: '--downstack',
          description: 'Only restack this branch and its ancestors'
        ),
        Option(
          name: '--only',
          description: 'Only restack this branch'
        ),
        Option(
          name: '--upstack',
          description: 'Only restack this branch and its descendants'
        )
      ]
    ),
    Subcommand(
      name: 'revert',
      description: 'Create a branch that reverts a commit on the trunk branch. Currently experimental',
      args: [
        Arg(
        name: 'sha',
        description: 'The commit to revert'
      )
      ],
      options: [
        Option(
          name: ['--edit', '-e'],
          description: 'Edit the commit message'
        )
      ]
    ),
    Subcommand(
      name: ['split', 'sp'],
      description: 'Split the current branch into multiple single-commit branches',
      options: [
        Option(
          name: ['--by-commit', '--commit', '-c'],
          description: 'Split by commit - slice up the history of this branch'
        ),
        Option(
          name: ['--by-hunk', '--hunk', '-h'],
          description: 'Split by hunk - split into new single-commit branches'
        )
      ]
    ),
    Subcommand(
      name: ['squash', 'sq'],
      description: 'Squash all commits in the current branch and restack upstack branches',
      options: [
        Option(
          name: ['--message', '-m'],
          description: 'The updated message for the commit',
          args: [
            Arg(
            name: 'message',
            description: 'Commit message'
          )
          ]
        ),
        Option(
          name: '--edit',
          description: 'Modify the existing commit message'
        ),
        Option(
          name: ['--no-edit', '-n'],
          description: 'Don\'t modify the existing commit message. Takes precedence over --edit'
        )
      ]
    ),
    Subcommand(
      name: ['submit', 's'],
      description: 'Idempotently force push the current branch to GitHub, creating or updating a pull request.  Opens an interactive prompt that allows you to input pull request metadata. \'gt ss\' is a default alias for \'gt submit --stack\''
    ),
    Subcommand(
      name: 'sync',
      description: 'Pull the trunk branch from remote and prompt to delete any branches that have been merged. Restacks all branches in your repository that can be restacked without conflicts. If trunk cannot be fast-forwarded to match remote, overwrites trunk with the remote version',
      options: [
        Option(
          name: '--delete',
          description: 'Delete merged branches (true by default; skip with --no-delete)'
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Don\'t prompt for confirmation before deleting a branch or overwriting trunk to match remote if it can\'t be fast-forwarded'
        ),
        Option(
          name: '--pull',
          description: 'Pull the trunk branch from remote (true by default; skip with --no-pull)'
        ),
        Option(
          name: '--restack',
          description: 'Restack any branches that can be restacked without conflicts (true by default; skip with --no-restack)'
        ),
        Option(
          name: '--show-delete-progress',
          description: 'Show progress through merged branches'
        )
      ]
    ),
    Subcommand(
      name: ['top', 't'],
      description: 'Switch to the tip branch of the current stack. Prompts if ambiguous'
    ),
    Subcommand(
      name: ['track', 'tr'],
      description: 'Start tracking the current (or provided) branch with Graphite by selecting its parent. This command can also be used to fix corrupted Graphite metadata',
      args: [
        Arg(
        name: 'branch',
        description: 'Branch name'
      )
      ],
      options: [
        Option(
          name: ['--parent', '-p'],
          description: 'The tracked branch\'s parent. If unset, prompts for a parent branch',
          args: [
            Arg(
            name: 'parent',
            description: 'Name of parent branch'
          )
          ]
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Sets the parent to the most recent tracked ancestor of the branch being tracked. Takes precedence over `--parent`'
        )
      ]
    ),
    Subcommand(
      name: 'trunk',
      description: 'Switch to the trunk branch'
    ),
    Subcommand(
      name: ['untrack', 'utr'],
      description: 'Stop tracking a branch with Graphite. If the branch has children, they will also be untracked. Default to the current branch if none is passed in',
      args: [
        Arg(
        name: 'branch',
        description: 'Branch name'
      )
      ],
      options: [
        Option(
          name: ['--force', '-f'],
          description: 'Will not prompt for confirmation before untracking a branch with children'
        )
      ]
    ),
    Subcommand(
      name: ['up', 'u'],
      description: 'Switch to the child of the current branch. Prompts if ambiguous',
      args: [
        Arg(
        name: 'steps',
        description: 'The number of levels to traverse upstack',
        isOptional: true,
        defaultValue: '1'
      )
      ],
      options: [
        Option(
          name: ['--steps', '-n'],
          description: 'The number of levels to traverse upstack',
          args: [
            Arg(
            name: 'steps',
            defaultValue: '1'
          )
          ]
        )
      ]
    )
  ],
  options: [
    Option(
      name: '--version',
      description: 'Show Graphite CLI version',
      priority: 0,
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for Graphite CLI',
      priority: 20,
      isPersistent: true
    ),
    Option(
      name: '--interactive',
      description: 'Prompt the user. Disable with --no-interactive',
      priority: 10,
      isPersistent: true
    ),
    Option(
      name: '--no-interactive',
      description: 'Run non interactive',
      priority: 10,
      isPersistent: true
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Minimize output to the terminal. Implies --no-interactive',
      priority: 10,
      isPersistent: true
    ),
    Option(
      name: '--verify',
      description: 'Run git hooks. Disable with --no-verify',
      priority: 10,
      isPersistent: true
    ),
    Option(
      name: '--no-verify',
      description: 'Disable git hooks',
      priority: 10,
      isPersistent: true
    ),
    Option(
      name: '--debug',
      description: 'Display debug output',
      priority: 10,
      isPersistent: true
    ),
    Option(
      name: '--cwd',
      description: 'Working directory in which to perform operations',
      priority: 10,
      isPersistent: true
    )
  ]
);
