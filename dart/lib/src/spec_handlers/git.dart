// Hand-written handlers for the first git JSON vertical slice.
//
// `configSuggestions` is the ~650-entry static list from src/git.ts, ported
// verbatim as a const. The `git config` args[0] `suggestions` field renders it
// with a gear icon; the config postProcess filters out names already present in
// it (mirroring the source's `configSuggestions.find(...)` guard).

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gitGenerateSpecHandler = 'manual.src_git.spec.generatespec';
const gitConfigPostProcessHandler =
    'manual.src_git.spec.subcommands_3_.args_0_.generators.postprocess';
const gitAliasHandler = 'manual.src_git.spec.args.parserdirectives.alias';

/// The `ai()` generator on `git commit -m` (subcommands_2 options_0 args),
/// materialized as a `custom` handler because the JSON references it as a bare
/// generator.
const gitCommitMessageHandler =
    'manual.src_git.spec.subcommands_2_.options_0_.args.generators';

/// The `git config` args[0] `suggestions` field: the static
/// `configSuggestions` list rendered with a gear icon.
const gitConfigSuggestionsHandler =
    'manual.src_git.spec.subcommands_3_.args_0_.suggestions';

/// `configSuggestions` from src/git.ts, ported verbatim (name,
/// description, insertValue, deprecated, hidden). The suggestions
/// handler adds the `⚙️` icon, mirroring `configSuggestions.map(...)`.
const List<FigSuggestion> _configSuggestions = [
  FigSuggestion(
    name: "add.ignore-errors",
    description:
        "Tells 'git add' to continue adding files when some files cannot be added due to indexing errors. Equivalent to the `--ignore-errors` option of git-add[1]. `add.ignore-errors` is deprecated, as it does not follow the usual naming convention for configuration variables",
    deprecated: true,
    hidden: true,
  ),
  FigSuggestion(
    name: "add.interactive.useBuiltin",
    description:
        "Set to `false` to fall back to the original Perl implementation of the interactive version of git-add[1] instead of the built-in version. Is `true` by default",
  ),
  FigSuggestion(
    name: "advice.addEmbeddedRepo",
    description:
        "Advice on what to do when you've accidentally added one git repo inside of another",
  ),
  FigSuggestion(
    name: "advice.addEmptyPathspec",
    description:
        "Advice shown if a user runs the add command without providing the pathspec parameter",
  ),
  FigSuggestion(
    name: "advice.addIgnoredFile",
    description:
        "Advice shown if a user attempts to add an ignored file to the index",
  ),
  FigSuggestion(
    name: "advice.ambiguousFetchRefspec",
    description:
        "Advice shown when fetch refspec for multiple remotes map to the same remote-tracking branch namespace and causes branch tracking set-up to fail",
  ),
  FigSuggestion(
    name: "advice.amWorkDir",
    description:
        "Advice that shows the location of the patch file when git-am[1] fails to apply it",
  ),
  FigSuggestion(
    name: "advice.checkoutAmbiguousRemoteBranchName",
    description:
        "Advice shown when the argument to git-checkout[1] and git-switch[1] ambiguously resolves to a remote tracking branch on more than one remote in situations where an unambiguous argument would have otherwise caused a remote-tracking branch to be checked out. See the `checkout.defaultRemote` configuration variable for how to set a given remote to used by default in some situations where this advice would be printed",
  ),
  FigSuggestion(
    name: "advice.commitBeforeMerge",
    description:
        "Advice shown when git-merge[1] refuses to merge to avoid overwriting local changes",
  ),
  FigSuggestion(
    name: "advice.detachedHead",
    description:
        "Advice shown when you used git-switch[1] or git-checkout[1] to move to the detach HEAD state, to instruct how to create a local branch after the fact",
  ),
  FigSuggestion(
    name: "advice.fetchShowForcedUpdates",
    description:
        "Advice shown when git-fetch[1] takes a long time to calculate forced updates after ref updates, or to warn that the check is disabled",
  ),
  FigSuggestion(
    name: "advice.ignoredHook",
    description:
        "Advice shown if a hook is ignored because the hook is not set as executable",
  ),
  FigSuggestion(
    name: "advice.implicitIdentity",
    description:
        "Advice on how to set your identity configuration when your information is guessed from the system username and domain name",
  ),
  FigSuggestion(
    name: "advice.nestedTag",
    description:
        "Advice shown if a user attempts to recursively tag a tag object",
  ),
  FigSuggestion(
    name: "advice.pushAlreadyExists",
    description:
        "Shown when git-push[1] rejects an update that does not qualify for fast-forwarding (e.g., a tag.)",
  ),
  FigSuggestion(
    name: "advice.pushFetchFirst",
    description:
        "Shown when git-push[1] rejects an update that tries to overwrite a remote ref that points at an object we do not have",
  ),
  FigSuggestion(
    name: "advice.pushNeedsForce",
    description:
        "Shown when git-push[1] rejects an update that tries to overwrite a remote ref that points at an object that is not a commit-ish, or make the remote ref point at an object that is not a commit-ish",
  ),
  FigSuggestion(
    name: "advice.pushNonFFCurrent",
    description:
        "Advice shown when git-push[1] fails due to a non-fast-forward update to the current branch",
  ),
  FigSuggestion(
    name: "advice.pushNonFFMatching",
    description:
        "Advice shown when you ran git-push[1] and pushed 'matching refs' explicitly (i.e. you used ':', or specified a refspec that isn't your current branch) and it resulted in a non-fast-forward error",
  ),
  FigSuggestion(
    name: "advice.pushRefNeedsUpdate",
    description:
        "Shown when git-push[1] rejects a forced update of a branch when its remote-tracking ref has updates that we do not have locally",
  ),
  FigSuggestion(
    name: "advice.pushUnqualifiedRefname",
    description:
        "Shown when git-push[1] gives up trying to guess based on the source and destination refs what remote ref namespace the source belongs in, but where we can still suggest that the user push to either refs/heads/* or refs/tags/* based on the type of the source object",
  ),
  FigSuggestion(
    name: "advice.pushUpdateRejected",
    description:
        "Set this variable to 'false' if you want to disable 'pushNonFFCurrent', 'pushNonFFMatching', 'pushAlreadyExists', 'pushFetchFirst', 'pushNeedsForce', and 'pushRefNeedsUpdate' simultaneously",
  ),
  FigSuggestion(
    name: "advice.resetNoRefresh",
    description:
        "Advice to consider using the `--no-refresh` option to git-reset[1] when the command takes more than 2 seconds to refresh the index after reset",
  ),
  FigSuggestion(
    name: "advice.resolveConflict",
    description:
        "Advice shown by various commands when conflicts prevent the operation from being performed",
  ),
  FigSuggestion(
    name: "advice.rmHints",
    description:
        "In case of failure in the output of git-rm[1], show directions on how to proceed from the current state",
  ),
  FigSuggestion(
    name: "advice.sequencerInUse",
    description: "Advice shown when a sequencer command is already in progress",
  ),
  FigSuggestion(
    name: "advice.skippedCherryPicks",
    description:
        "Shown when git-rebase[1] skips a commit that has already been cherry-picked onto the upstream branch",
  ),
  FigSuggestion(
    name: "advice.statusAheadBehind",
    description:
        "Shown when git-status[1] computes the ahead/behind counts for a local ref compared to its remote tracking ref, and that calculation takes longer than expected. Will not appear if `status.aheadBehind` is false or the option `--no-ahead-behind` is given",
  ),
  FigSuggestion(
    name: "advice.statusHints",
    description:
        "Show directions on how to proceed from the current state in the output of git-status[1], in the template shown when writing commit messages in git-commit[1], and in the help message shown by git-switch[1] or git-checkout[1] when switching branch",
  ),
  FigSuggestion(
    name: "advice.statusUoption",
    description:
        "Advise to consider using the `-u` option to git-status[1] when the command takes more than 2 seconds to enumerate untracked files",
  ),
  FigSuggestion(
    name: "advice.submoduleAlternateErrorStrategyDie",
  ),
  FigSuggestion(
    name: "advice.submodulesNotUpdated",
    description:
        "Advice shown when a user runs a submodule command that fails because `git submodule update --init` was not run",
  ),
  FigSuggestion(
    name: "advice.suggestDetachingHead",
    description:
        "Advice shown when git-switch[1] refuses to detach HEAD without the explicit `--detach` option",
  ),
  FigSuggestion(
    name: "advice.updateSparsePath",
    description:
        "Advice shown when either git-add[1] or git-rm[1] is asked to update index entries outside the current sparse checkout",
  ),
  FigSuggestion(
    name: "advice.waitingForEditor",
    description:
        "Print a message to the terminal whenever Git is waiting for editor input from the user",
  ),
  FigSuggestion(
    name: "alias.*",
    description:
        "Command aliases for the git[1] command wrapper - e.g. after defining `alias.last = cat-file commit HEAD`, the invocation `git last` is equivalent to `git cat-file commit HEAD`. To avoid confusion and troubles with script usage, aliases that hide existing Git commands are ignored. Arguments are split by spaces, the usual shell quoting and escaping is supported. A quote pair or a backslash can be used to quote them",
    insertValue: "alias.{cursor}",
  ),
  FigSuggestion(
    name: "am.keepcr",
    description:
        "If true, git-am will call git-mailsplit for patches in mbox format with parameter `--keep-cr`. In this case git-mailsplit will not remove `\\r` from lines ending with `\\r\\n`. Can be overridden by giving `--no-keep-cr` from the command line. See git-am[1], git-mailsplit[1]",
  ),
  FigSuggestion(
    name: "am.threeWay",
    description:
        "By default, `git am` will fail if the patch does not apply cleanly. When set to true, this setting tells `git am` to fall back on 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally (equivalent to giving the `--3way` option from the command line). Defaults to `false`. See git-am[1]",
  ),
  FigSuggestion(
    name: "apply.ignoreWhitespace",
    description:
        "When set to 'change', tells 'git apply' to ignore changes in whitespace, in the same way as the `--ignore-space-change` option. When set to one of: no, none, never, false tells 'git apply' to respect all whitespace differences. See git-apply[1]",
  ),
  FigSuggestion(
    name: "apply.whitespace",
    description:
        "Tells 'git apply' how to handle whitespaces, in the same way as the `--whitespace` option. See git-apply[1]",
  ),
  FigSuggestion(
    name: "blame.blankBoundary",
    description:
        "Show blank commit object name for boundary commits in git-blame[1]. This option defaults to false",
  ),
  FigSuggestion(
    name: "blame.coloring",
    description:
        "This determines the coloring scheme to be applied to blame output. It can be 'repeatedLines', 'highlightRecent', or 'none' which is the default",
  ),
  FigSuggestion(
    name: "blame.date",
    description:
        "Specifies the format used to output dates in git-blame[1]. If unset the iso format is used. For supported values, see the discussion of the `--date` option at git-log[1]",
  ),
  FigSuggestion(
    name: "blame.ignoreRevsFile",
    description:
        "Ignore revisions listed in the file, one unabbreviated object name per line, in git-blame[1]. Whitespace and comments beginning with `#` are ignored. This option may be repeated multiple times. Empty file names will reset the list of ignored revisions. This option will be handled before the command line option `--ignore-revs-file`",
  ),
  FigSuggestion(
    name: "blame.markIgnoredLines",
    description:
        "Mark lines that were changed by an ignored revision that we attributed to another commit with a '?' in the output of git-blame[1]",
  ),
  FigSuggestion(
    name: "blame.markUnblamableLines",
    description:
        "Mark lines that were changed by an ignored revision that we could not attribute to another commit with a '*' in the output of git-blame[1]",
  ),
  FigSuggestion(
    name: "blame.showEmail",
    description:
        "Show the author email instead of author name in git-blame[1]. This option defaults to false",
  ),
  FigSuggestion(
    name: "blame.showRoot",
    description:
        "Do not treat root commits as boundaries in git-blame[1]. This option defaults to false",
  ),
  FigSuggestion(
    name: "branch.<name>.description",
    description:
        "Branch description, can be edited with `git branch --edit-description`. Branch description is automatically added in the format-patch cover letter or request-pull summary",
    insertValue: "branch.{cursor}.description",
  ),
  FigSuggestion(
    name: "branch.<name>.merge",
    description:
        "Defines, together with branch.<name>.remote, the upstream branch for the given branch. It tells 'git fetch'/'git pull'/'git rebase' which branch to merge and can also affect 'git push' (see push.default). When in branch <name>, it tells 'git fetch' the default refspec to be marked for merging in FETCH_HEAD. The value is handled like the remote part of a refspec, and must match a ref which is fetched from the remote given by \\",
    insertValue: "branch.{cursor}.merge",
  ),
  FigSuggestion(
    name: "branch.<name>.mergeOptions",
    description:
        "Sets default options for merging into branch <name>. The syntax and supported options are the same as those of git-merge[1], but option values containing whitespace characters are currently not supported",
    insertValue: "branch.{cursor}.mergeOptions",
  ),
  FigSuggestion(
    name: "branch.<name>.pushRemote",
    description:
        "When on branch <name>, it overrides `branch.<name>.remote` for pushing. It also overrides `remote.pushDefault` for pushing from branch <name>. When you pull from one place (e.g. your upstream) and push to another place (e.g. your own publishing repository), you would want to set `remote.pushDefault` to specify the remote to push to for all branches, and use this option to override it for a specific branch",
    insertValue: "branch.{cursor}.pushRemote",
  ),
  FigSuggestion(
    name: "branch.<name>.rebase",
    insertValue: "branch.{cursor}.rebase",
  ),
  FigSuggestion(
    name: "branch.<name>.remote",
    description:
        "When on branch <name>, it tells 'git fetch' and 'git push' which remote to fetch from/push to. The remote to push to may be overridden with `remote.pushDefault` (for all branches). The remote to push to, for the current branch, may be further overridden by `branch.<name>.pushRemote`. If no remote is configured, or if you are not on any branch and there is more than one remote defined in the repository, it defaults to `origin` for fetching and `remote.pushDefault` for pushing. Additionally, `.` (a period) is the current local repository (a dot-repository), see `branch.<name>.merge`'s final note below",
    insertValue: "branch.{cursor}.remote",
  ),
  FigSuggestion(
    name: "branch.autoSetupMerge",
    description:
        "Tells 'git branch', 'git switch' and 'git checkout' to set up new branches so that git-pull[1] will appropriately merge from the starting point branch. Note that even if this option is not set, this behavior can be chosen per-branch using the `--track` and `--no-track` options. The valid settings are: `false` -- no automatic setup is done; `true` -- automatic setup is done when the starting point is a remote-tracking branch; `always` -- automatic setup is done when the starting point is either a local branch or remote-tracking branch; `inherit` -- if the starting point has a tracking configuration, it is copied to the new branch; `simple` -- automatic setup is done only when the starting point is a remote-tracking branch and the new branch has the same name as the remote branch. This option defaults to true",
  ),
  FigSuggestion(
    name: "branch.autoSetupRebase",
    description:
        "When a new branch is created with 'git branch', 'git switch' or 'git checkout' that tracks another branch, this variable tells Git to set up pull to rebase instead of merge (see \\",
  ),
  FigSuggestion(
    name: "branch.sort",
  ),
  FigSuggestion(
    name: "browser.<tool>.cmd",
    description:
        "Specify the command to invoke the specified browser. The specified command is evaluated in shell with the URLs passed as arguments. (See git-web{litdd}browse[1].)",
    insertValue: "browser.{cursor}.cmd",
  ),
  FigSuggestion(
    name: "browser.<tool>.path",
    description:
        "Override the path for the given tool that may be used to browse HTML help (see `-w` option in git-help[1]) or a working repository in gitweb (see git-instaweb[1])",
    insertValue: "browser.{cursor}.path",
  ),
  FigSuggestion(
    name: "checkout.defaultRemote",
    description:
        "When you run `git checkout <something>` or `git switch <something>` and only have one remote, it may implicitly fall back on checking out and tracking e.g. `origin/<something>`. This stops working as soon as you have more than one remote with a `<something>` reference. This setting allows for setting the name of a preferred remote that should always win when it comes to disambiguation. The typical use-case is to set this to `origin`",
  ),
  FigSuggestion(
    name: "checkout.guess",
    description:
        "Provides the default value for the `--guess` or `--no-guess` option in `git checkout` and `git switch`. See git-switch[1] and git-checkout[1]",
  ),
  FigSuggestion(
    name: "checkout.thresholdForParallelism",
    description:
        "When running parallel checkout with a small number of files, the cost of subprocess spawning and inter-process communication might outweigh the parallelization gains. This setting allows to define the minimum number of files for which parallel checkout should be attempted. The default is 100",
  ),
  FigSuggestion(
    name: "checkout.workers",
    description:
        "The number of parallel workers to use when updating the working tree. The default is one, i.e. sequential execution. If set to a value less than one, Git will use as many workers as the number of logical cores available. This setting and `checkout.thresholdForParallelism` affect all commands that perform checkout. E.g. checkout, clone, reset, sparse-checkout, etc",
  ),
  FigSuggestion(
    name: "clean.requireForce",
    description:
        "A boolean to make git-clean do nothing unless given -f, -i or -n. Defaults to true",
  ),
  FigSuggestion(
    name: "clone.defaultRemoteName",
    description:
        "The name of the remote to create when cloning a repository. Defaults to `origin`, and can be overridden by passing the `--origin` command-line option to git-clone[1]",
  ),
  FigSuggestion(
    name: "clone.filterSubmodules",
    description:
        "If a partial clone filter is provided (see `--filter` in git-rev-list[1]) and `--recurse-submodules` is used, also apply the filter to submodules",
  ),
  FigSuggestion(
    name: "clone.rejectShallow",
    description:
        "Reject to clone a repository if it is a shallow one, can be overridden by passing option `--reject-shallow` in command line. See git-clone[1]",
  ),
  FigSuggestion(
    name: "color.advice",
    description:
        "A boolean to enable/disable color in hints (e.g. when a push failed, see `advice.*` for a list). May be set to `always`, `false` (or `never`) or `auto` (or `true`), in which case colors are used only when the error output goes to a terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.advice.hint",
    description: "Use customized color for hints",
  ),
  FigSuggestion(
    name: "color.blame.highlightRecent",
    description:
        "Specify the line annotation color for `git blame --color-by-age` depending upon the age of the line",
  ),
  FigSuggestion(
    name: "color.blame.repeatedLines",
    description:
        "Use the specified color to colorize line annotations for `git blame --color-lines`, if they come from the same commit as the preceding line. Defaults to cyan",
  ),
  FigSuggestion(
    name: "color.branch",
    description:
        "A boolean to enable/disable color in the output of git-branch[1]. May be set to `always`, `false` (or `never`) or `auto` (or `true`), in which case colors are used only when the output is to a terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.branch.<slot>",
    description:
        "Use customized color for branch coloration. `<slot>` is one of `current` (the current branch), `local` (a local branch), `remote` (a remote-tracking branch in refs/remotes/), `upstream` (upstream tracking branch), `plain` (other refs)",
    insertValue: "color.branch.{cursor}",
  ),
  FigSuggestion(
    name: "color.decorate.<slot>",
    description:
        "Use customized color for 'git log --decorate' output. `<slot>` is one of `branch`, `remoteBranch`, `tag`, `stash` or `HEAD` for local branches, remote-tracking branches, tags, stash and HEAD, respectively and `grafted` for grafted commits",
    insertValue: "color.decorate.{cursor}",
  ),
  FigSuggestion(
    name: "color.diff",
    description:
        "Whether to use ANSI escape sequences to add color to patches. If this is set to `always`, git-diff[1], git-log[1], and git-show[1] will use color for all patches. If it is set to `true` or `auto`, those commands will only use color when output is to the terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.diff.<slot>",
    description:
        "Use customized color for diff colorization. `<slot>` specifies which part of the patch to use the specified color, and is one of `context` (context text - `plain` is a historical synonym), `meta` (metainformation), `frag` (hunk header), 'func' (function in hunk header), `old` (removed lines), `new` (added lines), `commit` (commit headers), `whitespace` (highlighting whitespace errors), `oldMoved` (deleted lines), `newMoved` (added lines), `oldMovedDimmed`, `oldMovedAlternative`, `oldMovedAlternativeDimmed`, `newMovedDimmed`, `newMovedAlternative` `newMovedAlternativeDimmed` (See the '<mode>' setting of '--color-moved' in git-diff[1] for details), `contextDimmed`, `oldDimmed`, `newDimmed`, `contextBold`, `oldBold`, and `newBold` (see git-range-diff[1] for details)",
    insertValue: "color.diff.{cursor}",
  ),
  FigSuggestion(
    name: "color.grep",
    description:
        "When set to `always`, always highlight matches. When `false` (or `never`), never. When set to `true` or `auto`, use color only when the output is written to the terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.grep.<slot>",
    description:
        "Use customized color for grep colorization. `<slot>` specifies which part of the line to use the specified color, and is one of",
    insertValue: "color.grep.{cursor}",
  ),
  FigSuggestion(
    name: "color.interactive",
  ),
  FigSuggestion(
    name: "color.interactive.<slot>",
    description:
        "Use customized color for 'git add --interactive' and 'git clean --interactive' output. `<slot>` may be `prompt`, `header`, `help` or `error`, for four distinct types of normal output from interactive commands",
    insertValue: "color.interactive.{cursor}",
  ),
  FigSuggestion(
    name: "color.pager",
    description:
        "A boolean to specify whether `auto` color modes should colorize output going to the pager. Defaults to true; set this to false if your pager does not understand ANSI color codes",
  ),
  FigSuggestion(
    name: "color.push",
    description:
        "A boolean to enable/disable color in push errors. May be set to `always`, `false` (or `never`) or `auto` (or `true`), in which case colors are used only when the error output goes to a terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.push.error",
    description: "Use customized color for push errors",
  ),
  FigSuggestion(
    name: "color.remote",
  ),
  FigSuggestion(
    name: "color.remote.<slot>",
    description:
        "Use customized color for each remote keyword. `<slot>` may be `hint`, `warning`, `success` or `error` which match the corresponding keyword",
    insertValue: "color.remote.{cursor}",
  ),
  FigSuggestion(
    name: "color.showBranch",
    description:
        "A boolean to enable/disable color in the output of git-show-branch[1]. May be set to `always`, `false` (or `never`) or `auto` (or `true`), in which case colors are used only when the output is to a terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.status",
    description:
        "A boolean to enable/disable color in the output of git-status[1]. May be set to `always`, `false` (or `never`) or `auto` (or `true`), in which case colors are used only when the output is to a terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.status.<slot>",
    description:
        "Use customized color for status colorization. `<slot>` is one of `header` (the header text of the status message), `added` or `updated` (files which are added but not committed), `changed` (files which are changed but not added in the index), `untracked` (files which are not tracked by Git), `branch` (the current branch), `nobranch` (the color the 'no branch' warning is shown in, defaulting to red), `localBranch` or `remoteBranch` (the local and remote branch names, respectively, when branch and tracking information is displayed in the status short-format), or `unmerged` (files which have unmerged changes)",
    insertValue: "color.status.{cursor}",
  ),
  FigSuggestion(
    name: "color.transport",
    description:
        "A boolean to enable/disable color when pushes are rejected. May be set to `always`, `false` (or `never`) or `auto` (or `true`), in which case colors are used only when the error output goes to a terminal. If unset, then the value of `color.ui` is used (`auto` by default)",
  ),
  FigSuggestion(
    name: "color.transport.rejected",
    description: "Use customized color when a push was rejected",
  ),
  FigSuggestion(
    name: "color.ui",
    description:
        "This variable determines the default value for variables such as `color.diff` and `color.grep` that control the use of color per command family. Its scope will expand as more commands learn configuration to set a default for the `--color` option. Set it to `false` or `never` if you prefer Git commands not to use color unless enabled explicitly with some other configuration or the `--color` option. Set it to `always` if you want all output not intended for machine consumption to use color, to `true` or `auto` (this is the default since Git 1.8.4) if you want such output to use color when written to the terminal",
  ),
  FigSuggestion(
    name: "column.branch",
    description:
        "Specify whether to output branch listing in `git branch` in columns. See `column.ui` for details",
  ),
  FigSuggestion(
    name: "column.clean",
    description:
        "Specify the layout when list items in `git clean -i`, which always shows files and directories in columns. See `column.ui` for details",
  ),
  FigSuggestion(
    name: "column.status",
    description:
        "Specify whether to output untracked files in `git status` in columns. See `column.ui` for details",
  ),
  FigSuggestion(
    name: "column.tag",
    description:
        "Specify whether to output tag listing in `git tag` in columns. See `column.ui` for details",
  ),
  FigSuggestion(
    name: "column.ui",
    description:
        "Specify whether supported commands should output in columns. This variable consists of a list of tokens separated by spaces or commas:",
  ),
  FigSuggestion(
    name: "commit.cleanup",
    description:
        "This setting overrides the default of the `--cleanup` option in `git commit`. See git-commit[1] for details. Changing the default can be useful when you always want to keep lines that begin with comment character `#` in your log message, in which case you would do `git config commit.cleanup whitespace` (note that you will have to remove the help lines that begin with `#` in the commit log template yourself, if you do this)",
  ),
  FigSuggestion(
    name: "commit.status",
    description:
        "A boolean to enable/disable inclusion of status information in the commit message template when using an editor to prepare the commit message. Defaults to true",
  ),
  FigSuggestion(
    name: "commit.template",
    description:
        "Specify the pathname of a file to use as the template for new commit messages",
  ),
  FigSuggestion(
    name: "commit.verbose",
    description:
        "A boolean or int to specify the level of verbose with `git commit`. See git-commit[1]",
  ),
  FigSuggestion(
    name: "commitGraph.generationVersion",
    description:
        "Specifies the type of generation number version to use when writing or reading the commit-graph file. If version 1 is specified, then the corrected commit dates will not be written or read. Defaults to 2",
  ),
  FigSuggestion(
    name: "commitGraph.maxNewFilters",
    description:
        "Specifies the default value for the `--max-new-filters` option of `git commit-graph write` (c.f., git-commit-graph[1])",
  ),
  FigSuggestion(
    name: "commitGraph.readChangedPaths",
    description:
        "If true, then git will use the changed-path Bloom filters in the commit-graph file (if it exists, and they are present). Defaults to true. See git-commit-graph[1] for more information",
  ),
  FigSuggestion(
    name: "committer.email",
    description:
        "The `user.name` and `user.email` variables determine what ends up in the `author` and `committer` field of commit objects. If you need the `author` or `committer` to be different, the `author.name`, `author.email`, `committer.name` or `committer.email` variables can be set. Also, all of these can be overridden by the `GIT_AUTHOR_NAME`, `GIT_AUTHOR_EMAIL`, `GIT_COMMITTER_NAME`, `GIT_COMMITTER_EMAIL` and `EMAIL` environment variables",
  ),
  FigSuggestion(
    name: "completion.commands",
    description:
        "This is only used by git-completion.bash to add or remove commands from the list of completed commands. Normally only porcelain commands and a few select others are completed. You can add more commands, separated by space, in this variable. Prefixing the command with '-' will remove it from the existing list",
  ),
  FigSuggestion(
    name: "core.abbrev",
  ),
  FigSuggestion(
    name: "core.alternateRefsCommand",
    description:
        "When advertising tips of available history from an alternate, use the shell to execute the specified command instead of git-for-each-ref[1]. The first argument is the absolute path of the alternate. Output must contain one hex object id per line (i.e., the same as produced by `git for-each-ref --format='%(objectname)'`)",
  ),
  FigSuggestion(
    name: "core.alternateRefsPrefixes",
    description:
        "When listing references from an alternate, list only references that begin with the given prefix. Prefixes match as if they were given as arguments to git-for-each-ref[1]. To list multiple prefixes, separate them with whitespace. If `core.alternateRefsCommand` is set, setting `core.alternateRefsPrefixes` has no effect",
  ),
  FigSuggestion(
    name: "core.askPass",
    description:
        "Some commands (e.g. svn and http interfaces) that interactively ask for a password can be told to use an external program given via the value of this variable. Can be overridden by the `GIT_ASKPASS` environment variable. If not set, fall back to the value of the `SSH_ASKPASS` environment variable or, failing that, a simple password prompt. The external program shall be given a suitable prompt as command-line argument and write the password on its STDOUT",
  ),
  FigSuggestion(
    name: "core.attributesFile",
    description:
        "In addition to `.gitattributes` (per-directory) and `.git/info/attributes`, Git looks into this file for attributes (see gitattributes[5]). Path expansions are made the same way as for `core.excludesFile`. Its default value is `\$XDG_CONFIG_HOME/git/attributes`. If `\$XDG_CONFIG_HOME` is either not set or empty, `\$HOME/.config/git/attributes` is used instead",
  ),
  FigSuggestion(
    name: "core.autocrlf",
  ),
  FigSuggestion(
    name: "core.bare",
    description:
        "If true this repository is assumed to be 'bare' and has no working directory associated with it. If this is the case a number of commands that require a working directory will be disabled, such as git-add[1] or git-merge[1]",
  ),
  FigSuggestion(
    name: "core.bigFileThreshold",
    description: "The size of files considered \\",
  ),
  FigSuggestion(
    name: "core.checkRoundtripEncoding",
    description:
        "A comma and/or whitespace separated list of encodings that Git performs UTF-8 round trip checks on if they are used in an `working-tree-encoding` attribute (see gitattributes[5]). The default value is `SHIFT-JIS`",
  ),
  FigSuggestion(
    name: "core.checkStat",
    description:
        "When missing or is set to `default`, many fields in the stat structure are checked to detect if a file has been modified since Git looked at it. When this configuration variable is set to `minimal`, sub-second part of mtime and ctime, the uid and gid of the owner of the file, the inode number (and the device number, if Git was compiled to use it), are excluded from the check among these fields, leaving only the whole-second part of mtime (and ctime, if `core.trustCtime` is set) and the filesize to be checked",
  ),
  FigSuggestion(
    name: "core.commentChar",
    description:
        "Commands such as `commit` and `tag` that let you edit messages consider a line that begins with this character commented, and removes them after the editor returns (default '#')",
  ),
  FigSuggestion(
    name: "core.commitGraph",
    description:
        "If true, then git will read the commit-graph file (if it exists) to parse the graph structure of commits. Defaults to true. See git-commit-graph[1] for more information",
  ),
  FigSuggestion(
    name: "core.compression",
    description:
        "An integer -1..9, indicating a default compression level. -1 is the zlib default. 0 means no compression, and 1..9 are various speed/size tradeoffs, 9 being slowest. If set, this provides a default to other compression variables, such as `core.looseCompression` and `pack.compression`",
  ),
  FigSuggestion(
    name: "core.createObject",
    description:
        "You can set this to 'link', in which case a hardlink followed by a delete of the source are used to make sure that object creation will not overwrite existing objects",
  ),
  FigSuggestion(
    name: "core.deltaBaseCacheLimit",
    description:
        "Maximum number of bytes per thread to reserve for caching base objects that may be referenced by multiple deltified objects. By storing the entire decompressed base objects in a cache Git is able to avoid unpacking and decompressing frequently used base objects multiple times",
  ),
  FigSuggestion(
    name: "core.editor",
    description:
        "Commands such as `commit` and `tag` that let you edit messages by launching an editor use the value of this variable when it is set, and the environment variable `GIT_EDITOR` is not set. See git-var[1]",
  ),
  FigSuggestion(
    name: "core.eol",
    description:
        "Sets the line ending type to use in the working directory for files that are marked as text (either by having the `text` attribute set, or by having `text=auto` and Git auto-detecting the contents as text). Alternatives are 'lf', 'crlf' and 'native', which uses the platform's native line ending. The default value is `native`. See gitattributes[5] for more information on end-of-line conversion. Note that this value is ignored if `core.autocrlf` is set to `true` or `input`",
  ),
  FigSuggestion(
    name: "core.excludesFile",
    description:
        "Specifies the pathname to the file that contains patterns to describe paths that are not meant to be tracked, in addition to `.gitignore` (per-directory) and `.git/info/exclude`. Defaults to `\$XDG_CONFIG_HOME/git/ignore`. If `\$XDG_CONFIG_HOME` is either not set or empty, `\$HOME/.config/git/ignore` is used instead. See gitignore[5]",
  ),
  FigSuggestion(
    name: "core.fileMode",
    description:
        "Tells Git if the executable bit of files in the working tree is to be honored",
  ),
  FigSuggestion(
    name: "core.filesRefLockTimeout",
    description:
        "The length of time, in milliseconds, to retry when trying to lock an individual reference. Value 0 means not to retry at all; -1 means to try indefinitely. Default is 100 (i.e., retry for 100ms)",
  ),
  FigSuggestion(
    name: "core.fsmonitor",
    description:
        "If set to true, enable the built-in file system monitor daemon for this working directory (git-fsmonitor{litdd}daemon[1])",
  ),
  FigSuggestion(
    name: "core.fsmonitorHookVersion",
  ),
  FigSuggestion(
    name: "core.fsync",
    description:
        "A comma-separated list of components of the repository that should be hardened via the core.fsyncMethod when created or modified. You can disable hardening of any component by prefixing it with a '-'. Items that are not hardened may be lost in the event of an unclean system shutdown. Unless you have special requirements, it is recommended that you leave this option empty or pick one of `committed`, `added`, or `all`",
  ),
  FigSuggestion(
    name: "core.fsyncMethod",
    description:
        "A value indicating the strategy Git will use to harden repository data using fsync and related primitives",
  ),
  FigSuggestion(
    name: "core.fsyncObjectFiles",
    description:
        "This boolean will enable 'fsync()' when writing object files. This setting is deprecated. Use core.fsync instead",
  ),
  FigSuggestion(
    name: "core.gitProxy",
  ),
  FigSuggestion(
    name: "core.hideDotFiles",
    description:
        "(Windows-only) If true, mark newly-created directories and files whose name starts with a dot as hidden. If 'dotGitOnly', only the `.git/` directory is hidden, but no other files starting with a dot. The default mode is 'dotGitOnly'",
  ),
  FigSuggestion(
    name: "core.hooksPath",
    description:
        "By default Git will look for your hooks in the `\$GIT_DIR/hooks` directory. Set this to different path, e.g. `/etc/git/hooks`, and Git will try to find your hooks in that directory, e.g. `/etc/git/hooks/pre-receive` instead of in `\$GIT_DIR/hooks/pre-receive`",
  ),
  FigSuggestion(
    name: "core.ignoreCase",
  ),
  FigSuggestion(
    name: "core.ignoreStat",
  ),
  FigSuggestion(
    name: "core.logAllRefUpdates",
  ),
  FigSuggestion(
    name: "core.looseCompression",
    description:
        "An integer -1..9, indicating the compression level for objects that are not in a pack file. -1 is the zlib default. 0 means no compression, and 1..9 are various speed/size tradeoffs, 9 being slowest. If not set, defaults to core.compression. If that is not set, defaults to 1 (best speed)",
  ),
  FigSuggestion(
    name: "core.multiPackIndex",
    description:
        "Use the multi-pack-index file to track multiple packfiles using a single index. See git-multi-pack-index[1] for more information. Defaults to true",
  ),
  FigSuggestion(
    name: "core.notesRef",
    description:
        "When showing commit messages, also show notes which are stored in the given ref. The ref must be fully qualified. If the given ref does not exist, it is not an error but means that no notes should be printed",
  ),
  FigSuggestion(
    name: "core.packedGitLimit",
    description:
        "Maximum number of bytes to map simultaneously into memory from pack files. If Git needs to access more than this many bytes at once to complete an operation it will unmap existing regions to reclaim virtual address space within the process",
  ),
  FigSuggestion(
    name: "core.packedGitWindowSize",
    description:
        "Number of bytes of a pack file to map into memory in a single mapping operation. Larger window sizes may allow your system to process a smaller number of large pack files more quickly. Smaller window sizes will negatively affect performance due to increased calls to the operating system's memory manager, but may improve performance when accessing a large number of large pack files",
  ),
  FigSuggestion(
    name: "core.packedRefsTimeout",
    description:
        "The length of time, in milliseconds, to retry when trying to lock the `packed-refs` file. Value 0 means not to retry at all; -1 means to try indefinitely. Default is 1000 (i.e., retry for 1 second)",
  ),
  FigSuggestion(
    name: "core.pager",
    description:
        "Text viewer for use by Git commands (e.g., 'less'). The value is meant to be interpreted by the shell. The order of preference is the `\$GIT_PAGER` environment variable, then `core.pager` configuration, then `\$PAGER`, and then the default chosen at compile time (usually 'less')",
  ),
  FigSuggestion(
    name: "core.precomposeUnicode",
    description:
        "This option is only used by Mac OS implementation of Git. When core.precomposeUnicode=true, Git reverts the unicode decomposition of filenames done by Mac OS. This is useful when sharing a repository between Mac OS and Linux or Windows. (Git for Windows 1.7.10 or higher is needed, or Git under cygwin 1.7). When false, file names are handled fully transparent by Git, which is backward compatible with older versions of Git",
  ),
  FigSuggestion(
    name: "core.preferSymlinkRefs",
  ),
  FigSuggestion(
    name: "core.preloadIndex",
    description: "Enable parallel index preload for operations like 'git diff'",
  ),
  FigSuggestion(
    name: "core.protectHFS",
    description:
        "If set to true, do not allow checkout of paths that would be considered equivalent to `.git` on an HFS+ filesystem. Defaults to `true` on Mac OS, and `false` elsewhere",
  ),
  FigSuggestion(
    name: "core.protectNTFS",
  ),
  FigSuggestion(
    name: "core.quotePath",
  ),
  FigSuggestion(
    name: "core.repositoryFormatVersion",
    description:
        "Internal variable identifying the repository format and layout version",
  ),
  FigSuggestion(
    name: "core.restrictinheritedhandles",
    description:
        "Windows-only: override whether spawned processes inherit only standard file handles (`stdin`, `stdout` and `stderr`) or all handles. Can be `auto`, `true` or `false`. Defaults to `auto`, which means `true` on Windows 7 and later, and `false` on older Windows versions",
  ),
  FigSuggestion(
    name: "core.safecrlf",
  ),
  FigSuggestion(
    name: "core.sharedRepository",
    description:
        "When 'group' (or 'true'), the repository is made shareable between several users in a group (making sure all the files and objects are group-writable). When 'all' (or 'world' or 'everybody'), the repository will be readable by all users, additionally to being group-shareable. When 'umask' (or 'false'), Git will use permissions reported by umask(2). When '0xxx', where '0xxx' is an octal number, files in the repository will have this mode value. '0xxx' will override user's umask value (whereas the other options will only override requested parts of the user's umask value). Examples: '0660' will make the repo read/write-able for the owner and group, but inaccessible to others (equivalent to 'group' unless umask is e.g. '0022'). '0640' is a repository that is group-readable but not group-writable. See git-init[1]. False by default",
  ),
  FigSuggestion(
    name: "core.sparseCheckout",
  ),
  FigSuggestion(
    name: "core.sparseCheckoutCone",
  ),
  FigSuggestion(
    name: "core.splitIndex",
    description:
        "If true, the split-index feature of the index will be used. See git-update-index[1]. False by default",
  ),
  FigSuggestion(
    name: "core.sshCommand",
    description:
        "If this variable is set, `git fetch` and `git push` will use the specified command instead of `ssh` when they need to connect to a remote system. The command is in the same form as the `GIT_SSH_COMMAND` environment variable and is overridden when the environment variable is set",
  ),
  FigSuggestion(
    name: "core.symlinks",
    description:
        "If false, symbolic links are checked out as small plain files that contain the link text. git-update-index[1] and git-add[1] will not change the recorded type to regular file. Useful on filesystems like FAT that do not support symbolic links",
  ),
  FigSuggestion(
    name: "core.trustctime",
    description:
        "If false, the ctime differences between the index and the working tree are ignored; useful when the inode change time is regularly modified by something outside Git (file system crawlers and some backup systems). See git-update-index[1]. True by default",
  ),
  FigSuggestion(
    name: "core.unsetenvvars",
    description:
        "Windows-only: comma-separated list of environment variables' names that need to be unset before spawning any other process. Defaults to `PERL5LIB` to account for the fact that Git for Windows insists on using its own Perl interpreter",
  ),
  FigSuggestion(
    name: "core.untrackedCache",
    description:
        "Determines what to do about the untracked cache feature of the index. It will be kept, if this variable is unset or set to `keep`. It will automatically be added if set to `true`. And it will automatically be removed, if set to `false`. Before setting it to `true`, you should check that mtime is working properly on your system. See git-update-index[1]. `keep` by default, unless `feature.manyFiles` is enabled which sets this setting to `true` by default",
  ),
  FigSuggestion(
    name: "core.useReplaceRefs",
    description:
        "If set to `false`, behave as if the `--no-replace-objects` option was given on the command line. See git[1] and git-replace[1] for more information",
  ),
  FigSuggestion(
    name: "core.warnAmbiguousRefs",
    description:
        "If true, Git will warn you if the ref name you passed it is ambiguous and might match multiple refs in the repository. True by default",
  ),
  FigSuggestion(
    name: "core.whitespace",
    description:
        "A comma separated list of common whitespace problems to notice. 'git diff' will use `color.diff.whitespace` to highlight them, and 'git apply --whitespace=error' will consider them as errors. You can prefix `-` to disable any of them (e.g. `-trailing-space`):",
  ),
  FigSuggestion(
    name: "core.worktree",
    description:
        "Set the path to the root of the working tree. If `GIT_COMMON_DIR` environment variable is set, core.worktree is ignored and not used for determining the root of working tree. This can be overridden by the `GIT_WORK_TREE` environment variable and the `--work-tree` command-line option. The value can be an absolute path or relative to the path to the .git directory, which is either specified by --git-dir or GIT_DIR, or automatically discovered. If --git-dir or GIT_DIR is specified but none of --work-tree, GIT_WORK_TREE and core.worktree is specified, the current working directory is regarded as the top level of your working tree",
  ),
  FigSuggestion(
    name: "credential.helper",
    description:
        "Specify an external helper to be called when a username or password credential is needed; the helper may consult external storage to avoid prompting the user for the credentials. This is normally the name of a credential helper with possible arguments, but may also be an absolute path with arguments or, if preceded by `!`, shell commands",
  ),
  FigSuggestion(
    name: "credential.useHttpPath",
  ),
  FigSuggestion(
    name: "credential.username",
    description:
        "If no username is set for a network authentication, use this username by default. See credential.<context>.* below, and gitcredentials[7]",
  ),
  FigSuggestion(
    name: "credentialCache.ignoreSIGHUP",
    description:
        "Tell git-credential-cache--daemon to ignore SIGHUP, instead of quitting",
  ),
  FigSuggestion(
    name: "credentialStore.lockTimeoutMS",
    description:
        "The length of time, in milliseconds, for git-credential-store to retry when trying to lock the credentials file. Value 0 means not to retry at all; -1 means to try indefinitely. Default is 1000 (i.e., retry for 1s)",
  ),
  FigSuggestion(
    name: "credential.<url>.helper",
    description:
        "Specify an external helper to be called when a username or password credential is needed; the helper may consult external storage to avoid prompting the user for the credentials. This is normally the name of a credential helper with possible arguments, but may also be an absolute path with arguments or, if preceded by `!`, shell commands",
    insertValue: "credential.{cursor}.helper",
  ),
  FigSuggestion(
    name: "credential.<url>.useHttpPath",
    insertValue: "credential.{cursor}.useHttpPath",
  ),
  FigSuggestion(
    name: "credential.<url>.username",
    description:
        "If no username is set for a network authentication, use this username by default. See credential.<context>.* below, and gitcredentials[7]",
    insertValue: "credential.{cursor}.username",
  ),
  FigSuggestion(
    name: "credentialCache.<url>.ignoreSIGHUP",
    description:
        "Tell git-credential-cache--daemon to ignore SIGHUP, instead of quitting",
    insertValue: "credentialCache.{cursor}.ignoreSIGHUP",
  ),
  FigSuggestion(
    name: "credentialStore.<url>.lockTimeoutMS",
    description:
        "The length of time, in milliseconds, for git-credential-store to retry when trying to lock the credentials file. Value 0 means not to retry at all; -1 means to try indefinitely. Default is 1000 (i.e., retry for 1s)",
    insertValue: "credentialStore.{cursor}.lockTimeoutMS",
  ),
  FigSuggestion(
    name: "diff.<driver>.binary",
    description:
        "Set this option to true to make the diff driver treat files as binary. See gitattributes[5] for details",
    insertValue: "diff.{cursor}.binary",
  ),
  FigSuggestion(
    name: "diff.<driver>.cachetextconv",
    description:
        "Set this option to true to make the diff driver cache the text conversion outputs. See gitattributes[5] for details",
    insertValue: "diff.{cursor}.cachetextconv",
  ),
  FigSuggestion(
    name: "diff.<driver>.command",
    description:
        "The custom diff driver command. See gitattributes[5] for details",
    insertValue: "diff.{cursor}.command",
  ),
  FigSuggestion(
    name: "diff.<driver>.textconv",
    description:
        "The command that the diff driver should call to generate the text-converted version of a file. The result of the conversion is used to generate a human-readable diff. See gitattributes[5] for details",
    insertValue: "diff.{cursor}.textconv",
  ),
  FigSuggestion(
    name: "diff.<driver>.wordRegex",
    description:
        "The regular expression that the diff driver should use to split words in a line. See gitattributes[5] for details",
    insertValue: "diff.{cursor}.wordRegex",
  ),
  FigSuggestion(
    name: "diff.<driver>.xfuncname",
    description:
        "The regular expression that the diff driver should use to recognize the hunk header. A built-in pattern may also be used. See gitattributes[5] for details",
    insertValue: "diff.{cursor}.xfuncname",
  ),
  FigSuggestion(
    name: "diff.algorithm",
    description: "Choose a diff algorithm",
  ),
  FigSuggestion(
    name: "diff.autoRefreshIndex",
    description:
        "When using 'git diff' to compare with work tree files, do not consider stat-only change as changed. Instead, silently run `git update-index --refresh` to update the cached stat information for paths whose contents in the work tree match the contents in the index. This option defaults to true. Note that this affects only 'git diff' Porcelain, and not lower level 'diff' commands such as 'git diff-files'",
  ),
  FigSuggestion(
    name: "diff.colorMoved",
    description:
        "If set to either a valid `<mode>` or a true value, moved lines in a diff are colored differently, for details of valid modes see '--color-moved' in git-diff[1]. If simply set to true the default color mode will be used. When set to false, moved lines are not colored",
  ),
  FigSuggestion(
    name: "diff.colorMovedWS",
    description:
        "When moved lines are colored using e.g. the `diff.colorMoved` setting, this option controls the `<mode>` how spaces are treated for details of valid modes see '--color-moved-ws' in git-diff[1]",
  ),
  FigSuggestion(
    name: "diff.context",
    description:
        "Generate diffs with <n> lines of context instead of the default of 3. This value is overridden by the -U option",
  ),
  FigSuggestion(
    name: "diff.dirstat",
    description:
        "A comma separated list of `--dirstat` parameters specifying the default behavior of the `--dirstat` option to git-diff[1] and friends. The defaults can be overridden on the command line (using `--dirstat=<param1,param2,...>`). The fallback defaults (when not changed by `diff.dirstat`) are `changes,noncumulative,3`. The following parameters are available:",
  ),
  FigSuggestion(
    name: "diff.external",
  ),
  FigSuggestion(
    name: "diff.guitool",
    description:
        "Controls which diff tool is used by git-difftool[1] when the -g/--gui flag is specified. This variable overrides the value configured in `merge.guitool`. The list below shows the valid built-in values. Any other value is treated as a custom diff tool and requires that a corresponding difftool.<guitool>.cmd variable is defined",
  ),
  FigSuggestion(
    name: "diff.ignoreSubmodules",
    description:
        "Sets the default value of --ignore-submodules. Note that this affects only 'git diff' Porcelain, and not lower level 'diff' commands such as 'git diff-files'. 'git checkout' and 'git switch' also honor this setting when reporting uncommitted changes. Setting it to 'all' disables the submodule summary normally shown by 'git commit' and 'git status' when `status.submoduleSummary` is set unless it is overridden by using the --ignore-submodules command-line option. The 'git submodule' commands are not affected by this setting. By default this is set to untracked so that any untracked submodules are ignored",
  ),
  FigSuggestion(
    name: "diff.indentHeuristic",
    description:
        "Set this option to `false` to disable the default heuristics that shift diff hunk boundaries to make patches easier to read",
  ),
  FigSuggestion(
    name: "diff.interHunkContext",
    description:
        "Show the context between diff hunks, up to the specified number of lines, thereby fusing the hunks that are close to each other. This value serves as the default for the `--inter-hunk-context` command line option",
  ),
  FigSuggestion(
    name: "diff.mnemonicPrefix",
  ),
  FigSuggestion(
    name: "diff.noprefix",
    description:
        "If set, 'git diff' does not show any source or destination prefix",
  ),
  FigSuggestion(
    name: "diff.orderFile",
    description:
        "File indicating how to order files within a diff. See the '-O' option to git-diff[1] for details. If `diff.orderFile` is a relative pathname, it is treated as relative to the top of the working tree",
  ),
  FigSuggestion(
    name: "diff.relative",
    description:
        "If set to 'true', 'git diff' does not show changes outside of the directory and show pathnames relative to the current directory",
  ),
  FigSuggestion(
    name: "diff.renameLimit",
    description:
        "The number of files to consider in the exhaustive portion of copy/rename detection; equivalent to the 'git diff' option `-l`. If not set, the default value is currently 1000. This setting has no effect if rename detection is turned off",
  ),
  FigSuggestion(
    name: "diff.renames",
  ),
  FigSuggestion(
    name: "diff.statGraphWidth",
    description:
        "Limit the width of the graph part in --stat output. If set, applies to all commands generating --stat output except format-patch",
  ),
  FigSuggestion(
    name: "diff.submodule",
  ),
  FigSuggestion(
    name: "diff.suppressBlankEmpty",
    description:
        "A boolean to inhibit the standard behavior of printing a space before each empty output line. Defaults to false",
  ),
  FigSuggestion(
    name: "diff.tool",
    description:
        "Controls which diff tool is used by git-difftool[1]. This variable overrides the value configured in `merge.tool`. The list below shows the valid built-in values. Any other value is treated as a custom diff tool and requires that a corresponding difftool.<tool>.cmd variable is defined",
  ),
  FigSuggestion(
    name: "diff.wordRegex",
  ),
  FigSuggestion(
    name: "diff.wsErrorHighlight",
    description:
        "Highlight whitespace errors in the `context`, `old` or `new` lines of the diff. Multiple values are separated by comma, `none` resets previous values, `default` reset the list to `new` and `all` is a shorthand for `old,new,context`. The whitespace errors are colored with `color.diff.whitespace`. The command line option `--ws-error-highlight=<kind>` overrides this setting",
  ),
  FigSuggestion(
    name: "difftool.<tool>.cmd",
    description:
        "Specify the command to invoke the specified diff tool. The specified command is evaluated in shell with the following variables available: 'LOCAL' is set to the name of the temporary file containing the contents of the diff pre-image and 'REMOTE' is set to the name of the temporary file containing the contents of the diff post-image",
    insertValue: "difftool.{cursor}.cmd",
  ),
  FigSuggestion(
    name: "difftool.<tool>.path",
    description:
        "Override the path for the given tool. This is useful in case your tool is not in the PATH",
    insertValue: "difftool.{cursor}.path",
  ),
  FigSuggestion(
    name: "difftool.prompt",
    description: "Prompt before each invocation of the diff tool",
  ),
  FigSuggestion(
    name: "extensions.objectFormat",
    description:
        "Specify the hash algorithm to use. The acceptable values are `sha1` and `sha256`. If not specified, `sha1` is assumed. It is an error to specify this key unless `core.repositoryFormatVersion` is 1",
  ),
  FigSuggestion(
    name: "extensions.worktreeConfig",
    description:
        "If enabled, then worktrees will load config settings from the `\$GIT_DIR/config.worktree` file in addition to the `\$GIT_COMMON_DIR/config` file. Note that `\$GIT_COMMON_DIR` and `\$GIT_DIR` are the same for the main working tree, while other working trees have `\$GIT_DIR` equal to `\$GIT_COMMON_DIR/worktrees/<id>/`. The settings in the `config.worktree` file will override settings from any other config files",
  ),
  FigSuggestion(
    name: "fastimport.unpackLimit",
    description:
        "If the number of objects imported by git-fast-import[1] is below this limit, then the objects will be unpacked into loose object files. However if the number of imported objects equals or exceeds this limit then the pack will be stored as a pack. Storing the pack from a fast-import can make the import operation complete faster, especially on slow filesystems. If not set, the value of `transfer.unpackLimit` is used instead",
  ),
  FigSuggestion(
    name: "feature.*",
    description:
        "The config settings that start with `feature.` modify the defaults of a group of other config settings. These groups are created by the Git developer community as recommended defaults and are subject to change. In particular, new config options may be added with different defaults",
    insertValue: "feature.{cursor}",
  ),
  FigSuggestion(
    name: "feature.experimental",
    description:
        "Enable config options that are new to Git, and are being considered for future defaults. Config settings included here may be added or removed with each release, including minor version updates. These settings may have unintended interactions since they are so new. Please enable this setting if you are interested in providing feedback on experimental features. The new default values are:",
  ),
  FigSuggestion(
    name: "feature.manyFiles",
    description:
        "Enable config options that optimize for repos with many files in the working directory. With many files, commands such as `git status` and `git checkout` may be slow and these new defaults improve performance:",
  ),
  FigSuggestion(
    name: "fetch.fsck.<msg-id>",
    description:
        "Acts like `fsck.<msg-id>`, but is used by git-fetch-pack[1] instead of git-fsck[1]. See the `fsck.<msg-id>` documentation for details",
    insertValue: "fetch.fsck.{cursor}",
  ),
  FigSuggestion(
    name: "fetch.fsck.skipList",
    description:
        "Acts like `fsck.skipList`, but is used by git-fetch-pack[1] instead of git-fsck[1]. See the `fsck.skipList` documentation for details",
  ),
  FigSuggestion(
    name: "fetch.fsckObjects",
    description:
        "If it is set to true, git-fetch-pack will check all fetched objects. See `transfer.fsckObjects` for what's checked. Defaults to false. If not set, the value of `transfer.fsckObjects` is used instead",
  ),
  FigSuggestion(
    name: "fetch.negotiationAlgorithm",
  ),
  FigSuggestion(
    name: "fetch.output",
    description:
        "Control how ref update status is printed. Valid values are `full` and `compact`. Default value is `full`. See section OUTPUT in git-fetch[1] for detail",
  ),
  FigSuggestion(
    name: "fetch.parallel",
    description:
        "Specifies the maximal number of fetch operations to be run in parallel at a time (submodules, or remotes when the `--multiple` option of git-fetch[1] is in effect)",
  ),
  FigSuggestion(
    name: "fetch.prune",
    description:
        "If true, fetch will automatically behave as if the `--prune` option was given on the command line. See also `remote.<name>.prune` and the PRUNING section of git-fetch[1]",
  ),
  FigSuggestion(
    name: "fetch.pruneTags",
    description:
        "If true, fetch will automatically behave as if the `refs/tags/*:refs/tags/*` refspec was provided when pruning, if not set already. This allows for setting both this option and `fetch.prune` to maintain a 1=1 mapping to upstream refs. See also `remote.<name>.pruneTags` and the PRUNING section of git-fetch[1]",
  ),
  FigSuggestion(
    name: "fetch.recurseSubmodules",
    description:
        "This option controls whether `git fetch` (and the underlying fetch in `git pull`) will recursively fetch into populated submodules. This option can be set either to a boolean value or to 'on-demand'. Setting it to a boolean changes the behavior of fetch and pull to recurse unconditionally into submodules when set to true or to not recurse at all when set to false. When set to 'on-demand', fetch and pull will only recurse into a populated submodule when its superproject retrieves a commit that updates the submodule's reference. Defaults to 'on-demand', or to the value of 'submodule.recurse' if set",
  ),
  FigSuggestion(
    name: "fetch.showForcedUpdates",
    description:
        "Set to false to enable `--no-show-forced-updates` in git-fetch[1] and git-pull[1] commands. Defaults to true",
  ),
  FigSuggestion(
    name: "fetch.unpackLimit",
    description:
        "If the number of objects fetched over the Git native transfer is below this limit, then the objects will be unpacked into loose object files. However if the number of received objects equals or exceeds this limit then the received pack will be stored as a pack, after adding any missing delta bases. Storing the pack from a push can make the push operation complete faster, especially on slow filesystems. If not set, the value of `transfer.unpackLimit` is used instead",
  ),
  FigSuggestion(
    name: "fetch.writeCommitGraph",
    description:
        "Set to true to write a commit-graph after every `git fetch` command that downloads a pack-file from a remote. Using the `--split` option, most executions will create a very small commit-graph file on top of the existing commit-graph file(s). Occasionally, these files will merge and the write may take longer. Having an updated commit-graph file helps performance of many Git commands, including `git merge-base`, `git push -f`, and `git log --graph`. Defaults to false",
  ),
  FigSuggestion(
    name: "filter.<driver>.clean",
    description:
        "The command which is used to convert the content of a worktree file to a blob upon checkin. See gitattributes[5] for details",
    insertValue: "filter.{cursor}.clean",
  ),
  FigSuggestion(
    name: "filter.<driver>.smudge",
    description:
        "The command which is used to convert the content of a blob object to a worktree file upon checkout. See gitattributes[5] for details",
    insertValue: "filter.{cursor}.smudge",
  ),
  FigSuggestion(
    name: "format.attach",
    description:
        "Enable multipart/mixed attachments as the default for 'format-patch'. The value can also be a double quoted string which will enable attachments as the default and set the value as the boundary. See the --attach option in git-format-patch[1]",
  ),
  FigSuggestion(
    name: "format.cc",
    description:
        "Additional recipients to include in a patch to be submitted by mail. See the --to and --cc options in git-format-patch[1]",
  ),
  FigSuggestion(
    name: "format.coverFromDescription",
    description:
        "The default mode for format-patch to determine which parts of the cover letter will be populated using the branch's description. See the `--cover-from-description` option in git-format-patch[1]",
  ),
  FigSuggestion(
    name: "format.coverLetter",
  ),
  FigSuggestion(
    name: "format.encodeEmailHeaders",
  ),
  FigSuggestion(
    name: "format.filenameMaxLength",
    description:
        "The maximum length of the output filenames generated by the `format-patch` command; defaults to 64. Can be overridden by the `--filename-max-length=<n>` command line option",
  ),
  FigSuggestion(
    name: "format.from",
  ),
  FigSuggestion(
    name: "format.headers",
    description:
        "Additional email headers to include in a patch to be submitted by mail. See git-format-patch[1]",
  ),
  FigSuggestion(
    name: "format.notes",
    description:
        "Provides the default value for the `--notes` option to format-patch. Accepts a boolean value, or a ref which specifies where to get notes. If false, format-patch defaults to `--no-notes`. If true, format-patch defaults to `--notes`. If set to a non-boolean value, format-patch defaults to `--notes=<ref>`, where `ref` is the non-boolean value. Defaults to false",
  ),
  FigSuggestion(
    name: "format.numbered",
  ),
  FigSuggestion(
    name: "format.outputDirectory",
    description:
        "Set a custom directory to store the resulting files instead of the current working directory. All directory components will be created",
  ),
  FigSuggestion(
    name: "format.pretty",
    description:
        "The default pretty format for log/show/whatchanged command, See git-log[1], git-show[1], git-whatchanged[1]",
  ),
  FigSuggestion(
    name: "format.signature",
  ),
  FigSuggestion(
    name: "format.signatureFile",
    description:
        "Works just like format.signature except the contents of the file specified by this variable will be used as the signature",
  ),
  FigSuggestion(
    name: "format.signOff",
    description:
        "A boolean value which lets you enable the `-s/--signoff` option of format-patch by default. *Note:* Adding the `Signed-off-by` trailer to a patch should be a conscious act and means that you certify you have the rights to submit this work under the same open source license. Please see the 'SubmittingPatches' document for further discussion",
  ),
  FigSuggestion(
    name: "format.subjectPrefix",
    description:
        "The default for format-patch is to output files with the '[PATCH]' subject prefix. Use this variable to change that prefix",
  ),
  FigSuggestion(
    name: "format.suffix",
    description:
        "The default for format-patch is to output files with the suffix `.patch`. Use this variable to change that suffix (make sure to include the dot if you want it)",
  ),
  FigSuggestion(
    name: "format.thread",
    description:
        "The default threading style for 'git format-patch'. Can be a boolean value, or `shallow` or `deep`. `shallow` threading makes every mail a reply to the head of the series, where the head is chosen from the cover letter, the `--in-reply-to`, and the first patch mail, in this order. `deep` threading makes every mail a reply to the previous one. A true boolean value is the same as `shallow`, and a false value disables threading",
  ),
  FigSuggestion(
    name: "format.useAutoBase",
  ),
  FigSuggestion(
    name: "fsck.<msg-id>",
    description:
        "During fsck git may find issues with legacy data which wouldn't be generated by current versions of git, and which wouldn't be sent over the wire if `transfer.fsckObjects` was set. This feature is intended to support working with legacy repositories containing such data",
    insertValue: "fsck.{cursor}",
  ),
  FigSuggestion(
    name: "fsck.skipList",
    description:
        "The path to a list of object names (i.e. one unabbreviated SHA-1 per line) that are known to be broken in a non-fatal way and should be ignored. On versions of Git 2.20 and later comments ('#'), empty lines, and any leading and trailing whitespace is ignored. Everything but a SHA-1 per line will error out on older versions",
  ),
  FigSuggestion(
    name: "gc.<pattern>.reflogExpire",
    insertValue: "gc.{cursor}.reflogExpire",
  ),
  FigSuggestion(
    name: "gc.<pattern>.reflogExpireUnreachable",
    insertValue: "gc.{cursor}.reflogExpireUnreachable",
  ),
  FigSuggestion(
    name: "gc.aggressiveDepth",
    description:
        "The depth parameter used in the delta compression algorithm used by 'git gc --aggressive'. This defaults to 50, which is the default for the `--depth` option when `--aggressive` isn't in use",
  ),
  FigSuggestion(
    name: "gc.aggressiveWindow",
    description:
        "The window size parameter used in the delta compression algorithm used by 'git gc --aggressive'. This defaults to 250, which is a much more aggressive window size than the default `--window` of 10",
  ),
  FigSuggestion(
    name: "gc.auto",
    description:
        "When there are approximately more than this many loose objects in the repository, `git gc --auto` will pack them. Some Porcelain commands use this command to perform a light-weight garbage collection from time to time. The default value is 6700",
  ),
  FigSuggestion(
    name: "gc.autoDetach",
    description:
        "Make `git gc --auto` return immediately and run in background if the system supports it. Default is true",
  ),
  FigSuggestion(
    name: "gc.autoPackLimit",
    description:
        "When there are more than this many packs that are not marked with `*.keep` file in the repository, `git gc --auto` consolidates them into one larger pack. The default value is 50. Setting this to 0 disables it. Setting `gc.auto` to 0 will also disable this",
  ),
  FigSuggestion(
    name: "gc.bigPackThreshold",
    description:
        "If non-zero, all packs larger than this limit are kept when `git gc` is run. This is very similar to `--keep-largest-pack` except that all packs that meet the threshold are kept, not just the largest pack. Defaults to zero. Common unit suffixes of 'k', 'm', or 'g' are supported",
  ),
  FigSuggestion(
    name: "gc.cruftPacks",
    description:
        "Store unreachable objects in a cruft pack (see git-repack[1]) instead of as loose objects. The default is `false`",
  ),
  FigSuggestion(
    name: "gc.logExpiry",
    description:
        "If the file gc.log exists, then `git gc --auto` will print its content and exit with status zero instead of running unless that file is more than 'gc.logExpiry' old. Default is \\",
  ),
  FigSuggestion(
    name: "gc.packRefs",
    description:
        "Running `git pack-refs` in a repository renders it unclonable by Git versions prior to 1.5.1.2 over dumb transports such as HTTP. This variable determines whether 'git gc' runs `git pack-refs`. This can be set to `notbare` to enable it within all non-bare repos or it can be set to a boolean value. The default is `true`",
  ),
  FigSuggestion(
    name: "gc.pruneExpire",
    description:
        "When 'git gc' is run, it will call 'prune --expire 2.weeks.ago' (and 'repack --cruft --cruft-expiration 2.weeks.ago' if using cruft packs via `gc.cruftPacks` or `--cruft`). Override the grace period with this config variable. The value \\",
  ),
  FigSuggestion(
    name: "gc.rerereResolved",
    description:
        "Records of conflicted merge you resolved earlier are kept for this many days when 'git rerere gc' is run. You can also use more human-readable \\",
  ),
  FigSuggestion(
    name: "gc.rerereUnresolved",
    description:
        "Records of conflicted merge you have not resolved are kept for this many days when 'git rerere gc' is run. You can also use more human-readable \\",
  ),
  FigSuggestion(
    name: "gc.worktreePruneExpire",
    description:
        "When 'git gc' is run, it calls 'git worktree prune --expire 3.months.ago'. This config variable can be used to set a different grace period. The value \\",
  ),
  FigSuggestion(
    name: "gc.writeCommitGraph",
    description:
        "If true, then gc will rewrite the commit-graph file when git-gc[1] is run. When using `git gc --auto` the commit-graph will be updated if housekeeping is required. Default is true. See git-commit-graph[1] for details",
  ),
  FigSuggestion(
    name: "gitcvs.allBinary",
    description:
        "This is used if `gitcvs.usecrlfattr` does not resolve the correct '-kb' mode to use. If true, all unresolved files are sent to the client in mode '-kb'. This causes the client to treat them as binary files, which suppresses any newline munging it otherwise might do. Alternatively, if it is set to \\",
  ),
  FigSuggestion(
    name: "gitcvs.commitMsgAnnotation",
  ),
  FigSuggestion(
    name: "gitcvs.dbDriver",
    description:
        "Used Perl DBI driver. You can specify any available driver for this here, but it might not work. git-cvsserver is tested with 'DBD::SQLite', reported to work with 'DBD::Pg', and reported *not* to work with 'DBD::mysql'. Experimental feature. May not contain double colons (`:`). Default: 'SQLite'. See git-cvsserver[1]",
  ),
  FigSuggestion(
    name: "gitcvs.dbName",
    description:
        "Database used by git-cvsserver to cache revision information derived from the Git repository. The exact meaning depends on the used database driver, for SQLite (which is the default driver) this is a filename. Supports variable substitution (see git-cvsserver[1] for details). May not contain semicolons (`;`). Default: '%Ggitcvs.%m.sqlite'",
  ),
  FigSuggestion(
    name: "gitcvs.dbTableNamePrefix",
    description:
        "Database table name prefix. Prepended to the names of any database tables used, allowing a single database to be used for several repositories. Supports variable substitution (see git-cvsserver[1] for details). Any non-alphabetic characters will be replaced with underscores",
  ),
  FigSuggestion(
    name: "gitcvs.dbUser",
    description:
        "Database user and password. Only useful if setting `gitcvs.dbDriver`, since SQLite has no concept of database users and/or passwords. 'gitcvs.dbUser' supports variable substitution (see git-cvsserver[1] for details)",
  ),
  FigSuggestion(
    name: "gitcvs.enabled",
    description:
        "Whether the CVS server interface is enabled for this repository. See git-cvsserver[1]",
  ),
  FigSuggestion(
    name: "gitcvs.logFile",
    description:
        "Path to a log file where the CVS server interface well... logs various stuff. See git-cvsserver[1]",
  ),
  FigSuggestion(
    name: "gitcvs.usecrlfattr",
    description:
        "If true, the server will look up the end-of-line conversion attributes for files to determine the `-k` modes to use. If the attributes force Git to treat a file as text, the `-k` mode will be left blank so CVS clients will treat it as text. If they suppress text conversion, the file will be set with '-kb' mode, which suppresses any newline munging the client might otherwise do. If the attributes do not allow the file type to be determined, then `gitcvs.allBinary` is used. See gitattributes[5]",
  ),
  FigSuggestion(
    name: "gitweb.snapshot",
    description: "See gitweb.conf[5] for description",
  ),
  FigSuggestion(
    name: "gitweb.url",
    description: "See gitweb[1] for description",
  ),
  FigSuggestion(
    name: "gpg.<format>.program",
    insertValue: "gpg.{cursor}.program",
  ),
  FigSuggestion(
    name: "gpg.format",
  ),
  FigSuggestion(
    name: "gpg.minTrustLevel",
    description:
        "Specifies a minimum trust level for signature verification. If this option is unset, then signature verification for merge operations require a key with at least `marginal` trust. Other operations that perform signature verification require a key with at least `undefined` trust. Setting this option overrides the required trust-level for all operations. Supported values, in increasing order of significance:",
  ),
  FigSuggestion(
    name: "gpg.program",
  ),
  FigSuggestion(
    name: "gpg.ssh.allowedSignersFile",
  ),
  FigSuggestion(
    name: "gpg.ssh.defaultKeyCommand",
    description:
        "This command that will be run when user.signingkey is not set and a ssh signature is requested. On successful exit a valid ssh public key prefixed with `key::` is expected in the first line of its output. This allows for a script doing a dynamic lookup of the correct public key when it is impractical to statically configure `user.signingKey`. For example when keys or SSH Certificates are rotated frequently or selection of the right key depends on external factors unknown to git",
  ),
  FigSuggestion(
    name: "gpg.ssh.revocationFile",
  ),
  FigSuggestion(
    name: "grep.column",
    description: "If set to true, enable the `--column` option by default",
  ),
  FigSuggestion(
    name: "grep.extendedRegexp",
    description:
        "If set to true, enable `--extended-regexp` option by default. This option is ignored when the `grep.patternType` option is set to a value other than 'default'",
  ),
  FigSuggestion(
    name: "grep.fallbackToNoIndex",
    description:
        "If set to true, fall back to git grep --no-index if git grep is executed outside of a git repository. Defaults to false",
  ),
  FigSuggestion(
    name: "grep.lineNumber",
    description: "If set to true, enable `-n` option by default",
  ),
  FigSuggestion(
    name: "grep.patternType",
    description:
        "Set the default matching behavior. Using a value of 'basic', 'extended', 'fixed', or 'perl' will enable the `--basic-regexp`, `--extended-regexp`, `--fixed-strings`, or `--perl-regexp` option accordingly, while the value 'default' will use the `grep.extendedRegexp` option to choose between 'basic' and 'extended'",
  ),
  FigSuggestion(
    name: "grep.threads",
    description:
        "Number of grep worker threads to use. See `grep.threads` in git-grep[1] for more information",
  ),
  FigSuggestion(
    name: "gui.blamehistoryctx",
    description:
        "Specifies the radius of history context in days to show in gitk[1] for the selected commit, when the `Show History Context` menu item is invoked from 'git gui blame'. If this variable is set to zero, the whole history is shown",
  ),
  FigSuggestion(
    name: "gui.commitMsgWidth",
  ),
  FigSuggestion(
    name: "gui.copyBlameThreshold",
    description:
        "Specifies the threshold to use in 'git gui blame' original location detection, measured in alphanumeric characters. See the git-blame[1] manual for more information on copy detection",
  ),
  FigSuggestion(
    name: "gui.diffContext",
  ),
  FigSuggestion(
    name: "gui.displayUntracked",
  ),
  FigSuggestion(
    name: "gui.encoding",
    description:
        "Specifies the default character encoding to use for displaying of file contents in git-gui[1] and gitk[1]. It can be overridden by setting the 'encoding' attribute for relevant files (see gitattributes[5]). If this option is not set, the tools default to the locale encoding",
  ),
  FigSuggestion(
    name: "gui.fastCopyBlame",
    description:
        "If true, 'git gui blame' uses `-C` instead of `-C -C` for original location detection. It makes blame significantly faster on huge repositories at the expense of less thorough copy detection",
  ),
  FigSuggestion(
    name: "gui.matchTrackingBranch",
  ),
  FigSuggestion(
    name: "gui.newBranchTemplate",
    description:
        "Is used as suggested name when creating new branches using the git-gui[1]",
  ),
  FigSuggestion(
    name: "gui.pruneDuringFetch",
  ),
  FigSuggestion(
    name: "gui.spellingDictionary",
  ),
  FigSuggestion(
    name: "gui.trustmtime",
    description:
        "Determines if git-gui[1] should trust the file modification timestamp or not. By default the timestamps are not trusted",
  ),
  FigSuggestion(
    name: "guitool.<name>.argPrompt",
    description:
        "Request a string argument from the user, and pass it to the tool through the `ARGS` environment variable. Since requesting an argument implies confirmation, the 'confirm' option has no effect if this is enabled. If the option is set to 'true', 'yes', or '1', the dialog uses a built-in generic prompt; otherwise the exact value of the variable is used",
    insertValue: "guitool.{cursor}.argPrompt",
  ),
  FigSuggestion(
    name: "guitool.<name>.cmd",
    description:
        "Specifies the shell command line to execute when the corresponding item of the git-gui[1] `Tools` menu is invoked. This option is mandatory for every tool. The command is executed from the root of the working directory, and in the environment it receives the name of the tool as `GIT_GUITOOL`, the name of the currently selected file as 'FILENAME', and the name of the current branch as 'CUR_BRANCH' (if the head is detached, 'CUR_BRANCH' is empty)",
    insertValue: "guitool.{cursor}.cmd",
  ),
  FigSuggestion(
    name: "guitool.<name>.confirm",
    description: "Show a confirmation dialog before actually running the tool",
    insertValue: "guitool.{cursor}.confirm",
  ),
  FigSuggestion(
    name: "guitool.<name>.needsFile",
    description:
        "Run the tool only if a diff is selected in the GUI. It guarantees that 'FILENAME' is not empty",
    insertValue: "guitool.{cursor}.needsFile",
  ),
  FigSuggestion(
    name: "guitool.<name>.noConsole",
    description:
        "Run the command silently, without creating a window to display its output",
    insertValue: "guitool.{cursor}.noConsole",
  ),
  FigSuggestion(
    name: "guitool.<name>.noRescan",
    description:
        "Don't rescan the working directory for changes after the tool finishes execution",
    insertValue: "guitool.{cursor}.noRescan",
  ),
  FigSuggestion(
    name: "guitool.<name>.prompt",
    description:
        "Specifies the general prompt string to display at the top of the dialog, before subsections for 'argPrompt' and 'revPrompt'. The default value includes the actual command",
    insertValue: "guitool.{cursor}.prompt",
  ),
  FigSuggestion(
    name: "guitool.<name>.revPrompt",
    description:
        "Request a single valid revision from the user, and set the `REVISION` environment variable. In other aspects this option is similar to 'argPrompt', and can be used together with it",
    insertValue: "guitool.{cursor}.revPrompt",
  ),
  FigSuggestion(
    name: "guitool.<name>.revUnmerged",
    description:
        "Show only unmerged branches in the 'revPrompt' subdialog. This is useful for tools similar to merge or rebase, but not for things like checkout or reset",
    insertValue: "guitool.{cursor}.revUnmerged",
  ),
  FigSuggestion(
    name: "guitool.<name>.title",
    description:
        "Specifies the title to use for the prompt dialog. The default is the tool name",
    insertValue: "guitool.{cursor}.title",
  ),
  FigSuggestion(
    name: "help.autoCorrect",
    description:
        "If git detects typos and can identify exactly one valid command similar to the error, git will try to suggest the correct command or even run the suggestion automatically. Possible config values are: - 0 (default): show the suggested command. - positive number: run the suggested command after specified",
  ),
  FigSuggestion(
    name: "help.browser",
    description:
        "Specify the browser that will be used to display help in the 'web' format. See git-help[1]",
  ),
  FigSuggestion(
    name: "help.format",
    description:
        "Override the default help format used by git-help[1]. Values 'man', 'info', 'web' and 'html' are supported. 'man' is the default. 'web' and 'html' are the same",
  ),
  FigSuggestion(
    name: "help.htmlPath",
    description:
        "Specify the path where the HTML documentation resides. File system paths and URLs are supported. HTML pages will be prefixed with this path when help is displayed in the 'web' format. This defaults to the documentation path of your Git installation",
  ),
  FigSuggestion(
    name: "http.cookieFile",
    description:
        "The pathname of a file containing previously stored cookie lines, which should be used in the Git http session, if they match the server. The file format of the file to read cookies from should be plain HTTP headers or the Netscape/Mozilla cookie file format (see `curl(1)`). NOTE that the file specified with http.cookieFile is used only as input unless http.saveCookies is set",
  ),
  FigSuggestion(
    name: "http.curloptResolve",
    description:
        "Hostname resolution information that will be used first by libcurl when sending HTTP requests. This information should be in one of the following formats:",
  ),
  FigSuggestion(
    name: "http.delegation",
    description:
        "Control GSSAPI credential delegation. The delegation is disabled by default in libcurl since version 7.21.7. Set parameter to tell the server what it is allowed to delegate when it comes to user credentials. Used with GSS/kerberos. Possible values are:",
  ),
  FigSuggestion(
    name: "http.emptyAuth",
    description:
        "Attempt authentication without seeking a username or password. This can be used to attempt GSS-Negotiate authentication without specifying a username in the URL, as libcurl normally requires a username for authentication",
  ),
  FigSuggestion(
    name: "http.extraHeader",
    description:
        "Pass an additional HTTP header when communicating with a server. If more than one such entry exists, all of them are added as extra headers. To allow overriding the settings inherited from the system config, an empty value will reset the extra headers to the empty list",
  ),
  FigSuggestion(
    name: "http.followRedirects",
    description:
        "Whether git should follow HTTP redirects. If set to `true`, git will transparently follow any redirect issued by a server it encounters. If set to `false`, git will treat all redirects as errors. If set to `initial`, git will follow redirects only for the initial request to a remote, but not for subsequent follow-up HTTP requests. Since git uses the redirected URL as the base for the follow-up requests, this is generally sufficient. The default is `initial`",
  ),
  FigSuggestion(
    name: "http.lowSpeedLimit",
    description:
        "If the HTTP transfer speed is less than 'http.lowSpeedLimit' for longer than 'http.lowSpeedTime' seconds, the transfer is aborted. Can be overridden by the `GIT_HTTP_LOW_SPEED_LIMIT` and `GIT_HTTP_LOW_SPEED_TIME` environment variables",
  ),
  FigSuggestion(
    name: "http.maxRequests",
    description:
        "How many HTTP requests to launch in parallel. Can be overridden by the `GIT_HTTP_MAX_REQUESTS` environment variable. Default is 5",
  ),
  FigSuggestion(
    name: "http.minSessions",
    description:
        "The number of curl sessions (counted across slots) to be kept across requests. They will not be ended with curl_easy_cleanup() until http_cleanup() is invoked. If USE_CURL_MULTI is not defined, this value will be capped at 1. Defaults to 1",
  ),
  FigSuggestion(
    name: "http.noEPSV",
  ),
  FigSuggestion(
    name: "http.pinnedPubkey",
    description:
        "Public key of the https service. It may either be the filename of a PEM or DER encoded public key file or a string starting with 'sha256//' followed by the base64 encoded sha256 hash of the public key. See also libcurl 'CURLOPT_PINNEDPUBLICKEY'. git will exit with an error if this option is set but not supported by cURL",
  ),
  FigSuggestion(
    name: "http.postBuffer",
    description:
        "Maximum size in bytes of the buffer used by smart HTTP transports when POSTing data to the remote system. For requests larger than this buffer size, HTTP/1.1 and Transfer-Encoding: chunked is used to avoid creating a massive pack file locally. Default is 1 MiB, which is sufficient for most requests",
  ),
  FigSuggestion(
    name: "http.proxy",
    description:
        "Override the HTTP proxy, normally configured using the 'http_proxy', 'https_proxy', and 'all_proxy' environment variables (see `curl(1)`). In addition to the syntax understood by curl, it is possible to specify a proxy string with a user name but no password, in which case git will attempt to acquire one in the same way it does for other credentials. See gitcredentials[7] for more information. The syntax thus is '[protocol://][user[:password]@]proxyhost[:port]'. This can be overridden on a per-remote basis; see remote.<name>.proxy",
  ),
  FigSuggestion(
    name: "http.proxyAuthMethod",
    description:
        "Set the method with which to authenticate against the HTTP proxy. This only takes effect if the configured proxy string contains a user name part (i.e. is of the form 'user@host' or 'user@host:port'). This can be overridden on a per-remote basis; see `remote.<name>.proxyAuthMethod`. Both can be overridden by the `GIT_HTTP_PROXY_AUTHMETHOD` environment variable. Possible values are:",
  ),
  FigSuggestion(
    name: "http.proxySSLCAInfo",
    description:
        "Pathname to the file containing the certificate bundle that should be used to verify the proxy with when using an HTTPS proxy. Can be overridden by the `GIT_PROXY_SSL_CAINFO` environment variable",
  ),
  FigSuggestion(
    name: "http.proxySSLCert",
    description:
        "The pathname of a file that stores a client certificate to use to authenticate with an HTTPS proxy. Can be overridden by the `GIT_PROXY_SSL_CERT` environment variable",
  ),
  FigSuggestion(
    name: "http.proxySSLCertPasswordProtected",
    description:
        "Enable Git's password prompt for the proxy SSL certificate. Otherwise OpenSSL will prompt the user, possibly many times, if the certificate or private key is encrypted. Can be overridden by the `GIT_PROXY_SSL_CERT_PASSWORD_PROTECTED` environment variable",
  ),
  FigSuggestion(
    name: "http.proxySSLKey",
    description:
        "The pathname of a file that stores a private key to use to authenticate with an HTTPS proxy. Can be overridden by the `GIT_PROXY_SSL_KEY` environment variable",
  ),
  FigSuggestion(
    name: "http.saveCookies",
    description:
        "If set, store cookies received during requests to the file specified by http.cookieFile. Has no effect if http.cookieFile is unset",
  ),
  FigSuggestion(
    name: "http.schannelCheckRevoke",
  ),
  FigSuggestion(
    name: "http.schannelUseSSLCAInfo",
    description:
        "As of cURL v7.60.0, the Secure Channel backend can use the certificate bundle provided via `http.sslCAInfo`, but that would override the Windows Certificate Store. Since this is not desirable by default, Git will tell cURL not to use that bundle by default when the `schannel` backend was configured via `http.sslBackend`, unless `http.schannelUseSSLCAInfo` overrides this behavior",
  ),
  FigSuggestion(
    name: "http.sslBackend",
  ),
  FigSuggestion(
    name: "http.sslCAInfo",
    description:
        "File containing the certificates to verify the peer with when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_CAINFO` environment variable",
  ),
  FigSuggestion(
    name: "http.sslCAPath",
    description:
        "Path containing files with the CA certificates to verify the peer with when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_CAPATH` environment variable",
  ),
  FigSuggestion(
    name: "http.sslCert",
    description:
        "File containing the SSL certificate when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_CERT` environment variable",
  ),
  FigSuggestion(
    name: "http.sslCertPasswordProtected",
    description:
        "Enable Git's password prompt for the SSL certificate. Otherwise OpenSSL will prompt the user, possibly many times, if the certificate or private key is encrypted. Can be overridden by the `GIT_SSL_CERT_PASSWORD_PROTECTED` environment variable",
  ),
  FigSuggestion(
    name: "http.sslKey",
    description:
        "File containing the SSL private key when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_KEY` environment variable",
  ),
  FigSuggestion(
    name: "http.sslTry",
    description:
        "Attempt to use AUTH SSL/TLS and encrypted data transfers when connecting via regular FTP protocol. This might be needed if the FTP server requires it for security reasons or you wish to connect securely whenever remote FTP server supports it. Default is false since it might trigger certificate verification errors on misconfigured servers",
  ),
  FigSuggestion(
    name: "http.sslVerify",
    description:
        "Whether to verify the SSL certificate when fetching or pushing over HTTPS. Defaults to true. Can be overridden by the `GIT_SSL_NO_VERIFY` environment variable",
  ),
  FigSuggestion(
    name: "http.sslVersion",
    description:
        "The SSL version to use when negotiating an SSL connection, if you want to force the default. The available and default version depend on whether libcurl was built against NSS or OpenSSL and the particular configuration of the crypto library in use. Internally this sets the 'CURLOPT_SSL_VERSION' option; see the libcurl documentation for more details on the format of this option and for the ssl version supported. Currently the possible values of this option are:",
  ),
  FigSuggestion(
    name: "http.userAgent",
    description:
        "The HTTP USER_AGENT string presented to an HTTP server. The default value represents the version of the client Git such as git/1.7.1. This option allows you to override this value to a more common value such as Mozilla/4.0. This may be necessary, for instance, if connecting through a firewall that restricts HTTP connections to a set of common USER_AGENT strings (but not including those like git/1.7.1). Can be overridden by the `GIT_HTTP_USER_AGENT` environment variable",
  ),
  FigSuggestion(
    name: "http.version",
    description:
        "Use the specified HTTP protocol version when communicating with a server. If you want to force the default. The available and default version depend on libcurl. Currently the possible values of this option are:",
  ),
  FigSuggestion(
    name: "http.<url>.cookieFile",
    description:
        "The pathname of a file containing previously stored cookie lines, which should be used in the Git http session, if they match the server. The file format of the file to read cookies from should be plain HTTP headers or the Netscape/Mozilla cookie file format (see `curl(1)`). NOTE that the file specified with http.cookieFile is used only as input unless http.saveCookies is set",
    insertValue: "http.{cursor}.cookieFile",
  ),
  FigSuggestion(
    name: "http.<url>.curloptResolve",
    description:
        "Hostname resolution information that will be used first by libcurl when sending HTTP requests. This information should be in one of the following formats:",
    insertValue: "http.{cursor}.curloptResolve",
  ),
  FigSuggestion(
    name: "http.<url>.delegation",
    description:
        "Control GSSAPI credential delegation. The delegation is disabled by default in libcurl since version 7.21.7. Set parameter to tell the server what it is allowed to delegate when it comes to user credentials. Used with GSS/kerberos. Possible values are:",
    insertValue: "http.{cursor}.delegation",
  ),
  FigSuggestion(
    name: "http.<url>.emptyAuth",
    description:
        "Attempt authentication without seeking a username or password. This can be used to attempt GSS-Negotiate authentication without specifying a username in the URL, as libcurl normally requires a username for authentication",
    insertValue: "http.{cursor}.emptyAuth",
  ),
  FigSuggestion(
    name: "http.<url>.extraHeader",
    description:
        "Pass an additional HTTP header when communicating with a server. If more than one such entry exists, all of them are added as extra headers. To allow overriding the settings inherited from the system config, an empty value will reset the extra headers to the empty list",
    insertValue: "http.{cursor}.extraHeader",
  ),
  FigSuggestion(
    name: "http.<url>.followRedirects",
    description:
        "Whether git should follow HTTP redirects. If set to `true`, git will transparently follow any redirect issued by a server it encounters. If set to `false`, git will treat all redirects as errors. If set to `initial`, git will follow redirects only for the initial request to a remote, but not for subsequent follow-up HTTP requests. Since git uses the redirected URL as the base for the follow-up requests, this is generally sufficient. The default is `initial`",
    insertValue: "http.{cursor}.followRedirects",
  ),
  FigSuggestion(
    name: "http.<url>.lowSpeedLimit",
    description:
        "If the HTTP transfer speed is less than 'http.lowSpeedLimit' for longer than 'http.lowSpeedTime' seconds, the transfer is aborted. Can be overridden by the `GIT_HTTP_LOW_SPEED_LIMIT` and `GIT_HTTP_LOW_SPEED_TIME` environment variables",
    insertValue: "http.{cursor}.lowSpeedLimit",
  ),
  FigSuggestion(
    name: "http.<url>.maxRequests",
    description:
        "How many HTTP requests to launch in parallel. Can be overridden by the `GIT_HTTP_MAX_REQUESTS` environment variable. Default is 5",
    insertValue: "http.{cursor}.maxRequests",
  ),
  FigSuggestion(
    name: "http.<url>.minSessions",
    description:
        "The number of curl sessions (counted across slots) to be kept across requests. They will not be ended with curl_easy_cleanup() until http_cleanup() is invoked. If USE_CURL_MULTI is not defined, this value will be capped at 1. Defaults to 1",
    insertValue: "http.{cursor}.minSessions",
  ),
  FigSuggestion(
    name: "http.<url>.noEPSV",
    insertValue: "http.{cursor}.noEPSV",
  ),
  FigSuggestion(
    name: "http.<url>.pinnedPubkey",
    description:
        "Public key of the https service. It may either be the filename of a PEM or DER encoded public key file or a string starting with 'sha256//' followed by the base64 encoded sha256 hash of the public key. See also libcurl 'CURLOPT_PINNEDPUBLICKEY'. git will exit with an error if this option is set but not supported by cURL",
    insertValue: "http.{cursor}.pinnedPubkey",
  ),
  FigSuggestion(
    name: "http.<url>.postBuffer",
    description:
        "Maximum size in bytes of the buffer used by smart HTTP transports when POSTing data to the remote system. For requests larger than this buffer size, HTTP/1.1 and Transfer-Encoding: chunked is used to avoid creating a massive pack file locally. Default is 1 MiB, which is sufficient for most requests",
    insertValue: "http.{cursor}.postBuffer",
  ),
  FigSuggestion(
    name: "http.<url>.proxy",
    description:
        "Override the HTTP proxy, normally configured using the 'http_proxy', 'https_proxy', and 'all_proxy' environment variables (see `curl(1)`). In addition to the syntax understood by curl, it is possible to specify a proxy string with a user name but no password, in which case git will attempt to acquire one in the same way it does for other credentials. See gitcredentials[7] for more information. The syntax thus is '[protocol://][user[:password]@]proxyhost[:port]'. This can be overridden on a per-remote basis; see remote.<name>.proxy",
    insertValue: "http.{cursor}.proxy",
  ),
  FigSuggestion(
    name: "http.<url>.proxyAuthMethod",
    description:
        "Set the method with which to authenticate against the HTTP proxy. This only takes effect if the configured proxy string contains a user name part (i.e. is of the form 'user@host' or 'user@host:port'). This can be overridden on a per-remote basis; see `remote.<name>.proxyAuthMethod`. Both can be overridden by the `GIT_HTTP_PROXY_AUTHMETHOD` environment variable. Possible values are:",
    insertValue: "http.{cursor}.proxyAuthMethod",
  ),
  FigSuggestion(
    name: "http.<url>.proxySSLCAInfo",
    description:
        "Pathname to the file containing the certificate bundle that should be used to verify the proxy with when using an HTTPS proxy. Can be overridden by the `GIT_PROXY_SSL_CAINFO` environment variable",
    insertValue: "http.{cursor}.proxySSLCAInfo",
  ),
  FigSuggestion(
    name: "http.<url>.proxySSLCert",
    description:
        "The pathname of a file that stores a client certificate to use to authenticate with an HTTPS proxy. Can be overridden by the `GIT_PROXY_SSL_CERT` environment variable",
    insertValue: "http.{cursor}.proxySSLCert",
  ),
  FigSuggestion(
    name: "http.<url>.proxySSLCertPasswordProtected",
    description:
        "Enable Git's password prompt for the proxy SSL certificate. Otherwise OpenSSL will prompt the user, possibly many times, if the certificate or private key is encrypted. Can be overridden by the `GIT_PROXY_SSL_CERT_PASSWORD_PROTECTED` environment variable",
    insertValue: "http.{cursor}.proxySSLCertPasswordProtected",
  ),
  FigSuggestion(
    name: "http.<url>.proxySSLKey",
    description:
        "The pathname of a file that stores a private key to use to authenticate with an HTTPS proxy. Can be overridden by the `GIT_PROXY_SSL_KEY` environment variable",
    insertValue: "http.{cursor}.proxySSLKey",
  ),
  FigSuggestion(
    name: "http.<url>.saveCookies",
    description:
        "If set, store cookies received during requests to the file specified by http.cookieFile. Has no effect if http.cookieFile is unset",
    insertValue: "http.{cursor}.saveCookies",
  ),
  FigSuggestion(
    name: "http.<url>.schannelCheckRevoke",
    insertValue: "http.{cursor}.schannelCheckRevoke",
  ),
  FigSuggestion(
    name: "http.<url>.schannelUseSSLCAInfo",
    description:
        "As of cURL v7.60.0, the Secure Channel backend can use the certificate bundle provided via `http.sslCAInfo`, but that would override the Windows Certificate Store. Since this is not desirable by default, Git will tell cURL not to use that bundle by default when the `schannel` backend was configured via `http.sslBackend`, unless `http.schannelUseSSLCAInfo` overrides this behavior",
    insertValue: "http.{cursor}.schannelUseSSLCAInfo",
  ),
  FigSuggestion(
    name: "http.<url>.sslBackend",
    insertValue: "http.{cursor}.sslBackend",
  ),
  FigSuggestion(
    name: "http.<url>.sslCAInfo",
    description:
        "File containing the certificates to verify the peer with when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_CAINFO` environment variable",
    insertValue: "http.{cursor}.sslCAInfo",
  ),
  FigSuggestion(
    name: "http.<url>.sslCAPath",
    description:
        "Path containing files with the CA certificates to verify the peer with when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_CAPATH` environment variable",
    insertValue: "http.{cursor}.sslCAPath",
  ),
  FigSuggestion(
    name: "http.<url>.sslCert",
    description:
        "File containing the SSL certificate when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_CERT` environment variable",
    insertValue: "http.{cursor}.sslCert",
  ),
  FigSuggestion(
    name: "http.<url>.sslCertPasswordProtected",
    description:
        "Enable Git's password prompt for the SSL certificate. Otherwise OpenSSL will prompt the user, possibly many times, if the certificate or private key is encrypted. Can be overridden by the `GIT_SSL_CERT_PASSWORD_PROTECTED` environment variable",
    insertValue: "http.{cursor}.sslCertPasswordProtected",
  ),
  FigSuggestion(
    name: "http.<url>.sslKey",
    description:
        "File containing the SSL private key when fetching or pushing over HTTPS. Can be overridden by the `GIT_SSL_KEY` environment variable",
    insertValue: "http.{cursor}.sslKey",
  ),
  FigSuggestion(
    name: "http.<url>.sslTry",
    description:
        "Attempt to use AUTH SSL/TLS and encrypted data transfers when connecting via regular FTP protocol. This might be needed if the FTP server requires it for security reasons or you wish to connect securely whenever remote FTP server supports it. Default is false since it might trigger certificate verification errors on misconfigured servers",
    insertValue: "http.{cursor}.sslTry",
  ),
  FigSuggestion(
    name: "http.<url>.sslVerify",
    description:
        "Whether to verify the SSL certificate when fetching or pushing over HTTPS. Defaults to true. Can be overridden by the `GIT_SSL_NO_VERIFY` environment variable",
    insertValue: "http.{cursor}.sslVerify",
  ),
  FigSuggestion(
    name: "http.<url>.sslVersion",
    description:
        "The SSL version to use when negotiating an SSL connection, if you want to force the default. The available and default version depend on whether libcurl was built against NSS or OpenSSL and the particular configuration of the crypto library in use. Internally this sets the 'CURLOPT_SSL_VERSION' option; see the libcurl documentation for more details on the format of this option and for the ssl version supported. Currently the possible values of this option are:",
    insertValue: "http.{cursor}.sslVersion",
  ),
  FigSuggestion(
    name: "http.<url>.userAgent",
    description:
        "The HTTP USER_AGENT string presented to an HTTP server. The default value represents the version of the client Git such as git/1.7.1. This option allows you to override this value to a more common value such as Mozilla/4.0. This may be necessary, for instance, if connecting through a firewall that restricts HTTP connections to a set of common USER_AGENT strings (but not including those like git/1.7.1). Can be overridden by the `GIT_HTTP_USER_AGENT` environment variable",
    insertValue: "http.{cursor}.userAgent",
  ),
  FigSuggestion(
    name: "http.<url>.version",
    description:
        "Use the specified HTTP protocol version when communicating with a server. If you want to force the default. The available and default version depend on libcurl. Currently the possible values of this option are:",
    insertValue: "http.{cursor}.version",
  ),
  FigSuggestion(
    name: "i18n.commitEncoding",
    description:
        "Character encoding the commit messages are stored in; Git itself does not care per se, but this information is necessary e.g. when importing commits from emails or in the gitk graphical history browser (and possibly at other places in the future or in other porcelains). See e.g. git-mailinfo[1]. Defaults to 'utf-8'",
  ),
  FigSuggestion(
    name: "i18n.logOutputEncoding",
    description:
        "Character encoding the commit messages are converted to when running 'git log' and friends",
  ),
  FigSuggestion(
    name: "imap.authMethod",
    description:
        "Specify authenticate method for authentication with IMAP server. If Git was built with the NO_CURL option, or if your curl version is older than 7.34.0, or if you're running git-imap-send with the `--no-curl` option, the only supported method is 'CRAM-MD5'. If this is not set then 'git imap-send' uses the basic IMAP plaintext LOGIN command",
  ),
  FigSuggestion(
    name: "imap.folder",
  ),
  FigSuggestion(
    name: "imap.host",
    description:
        "A URL identifying the server. Use an `imap://` prefix for non-secure connections and an `imaps://` prefix for secure connections. Ignored when imap.tunnel is set, but required otherwise",
  ),
  FigSuggestion(
    name: "imap.pass",
    description: "The password to use when logging in to the server",
  ),
  FigSuggestion(
    name: "imap.port",
    description:
        "An integer port number to connect to on the server. Defaults to 143 for imap:// hosts and 993 for imaps:// hosts. Ignored when imap.tunnel is set",
  ),
  FigSuggestion(
    name: "imap.preformattedHTML",
    description:
        "A boolean to enable/disable the use of html encoding when sending a patch. An html encoded patch will be bracketed with <pre> and have a content type of text/html. Ironically, enabling this option causes Thunderbird to send the patch as a plain/text, format=fixed email. Default is `false`",
  ),
  FigSuggestion(
    name: "imap.sslverify",
    description:
        "A boolean to enable/disable verification of the server certificate used by the SSL/TLS connection. Default is `true`. Ignored when imap.tunnel is set",
  ),
  FigSuggestion(
    name: "imap.tunnel",
    description:
        "Command used to setup a tunnel to the IMAP server through which commands will be piped instead of using a direct network connection to the server. Required when imap.host is not set",
  ),
  FigSuggestion(
    name: "imap.user",
    description: "The username to use when logging in to the server",
  ),
  FigSuggestion(
    name: "includeIf.<condition>.path",
    insertValue: "includeIf.{cursor}.path",
  ),
  FigSuggestion(
    name: "index.recordEndOfIndexEntries",
    description: "Specifies whether the index file should include an \\",
  ),
  FigSuggestion(
    name: "index.recordOffsetTable",
    description: "Specifies whether the index file should include an \\",
  ),
  FigSuggestion(
    name: "index.sparse",
    description:
        "When enabled, write the index using sparse-directory entries. This has no effect unless `core.sparseCheckout` and `core.sparseCheckoutCone` are both enabled. Defaults to 'false'",
  ),
  FigSuggestion(
    name: "index.threads",
    description:
        "Specifies the number of threads to spawn when loading the index. This is meant to reduce index load time on multiprocessor machines. Specifying 0 or 'true' will cause Git to auto-detect the number of CPU's and set the number of threads accordingly. Specifying 1 or 'false' will disable multithreading. Defaults to 'true'",
  ),
  FigSuggestion(
    name: "index.version",
    description:
        "Specify the version with which new index files should be initialized. This does not affect existing repositories. If `feature.manyFiles` is enabled, then the default is 4",
  ),
  FigSuggestion(
    name: "init.defaultBranch",
    description:
        "Allows overriding the default branch name e.g. when initializing a new repository",
  ),
  FigSuggestion(
    name: "init.templateDir",
  ),
  FigSuggestion(
    name: "instaweb.browser",
    description:
        "Specify the program that will be used to browse your working repository in gitweb. See git-instaweb[1]",
  ),
  FigSuggestion(
    name: "instaweb.httpd",
    description:
        "The HTTP daemon command-line to start gitweb on your working repository. See git-instaweb[1]",
  ),
  FigSuggestion(
    name: "instaweb.local",
    description:
        "If true the web server started by git-instaweb[1] will be bound to the local IP (127.0.0.1)",
  ),
  FigSuggestion(
    name: "instaweb.modulePath",
    description:
        "The default module path for git-instaweb[1] to use instead of /usr/lib/apache2/modules. Only used if httpd is Apache",
  ),
  FigSuggestion(
    name: "instaweb.port",
    description:
        "The port number to bind the gitweb httpd to. See git-instaweb[1]",
  ),
  FigSuggestion(
    name: "interactive.diffFilter",
    description:
        "When an interactive command (such as `git add --patch`) shows a colorized diff, git will pipe the diff through the shell command defined by this configuration variable. The command may mark up the diff further for human consumption, provided that it retains a one-to-one correspondence with the lines in the original diff. Defaults to disabled (no filtering)",
  ),
  FigSuggestion(
    name: "interactive.singleKey",
    description:
        "In interactive commands, allow the user to provide one-letter input with a single key (i.e., without hitting enter). Currently this is used by the `--patch` mode of git-add[1], git-checkout[1], git-restore[1], git-commit[1], git-reset[1], and git-stash[1]. Note that this setting is silently ignored if portable keystroke input is not available; requires the Perl module Term::ReadKey",
  ),
  FigSuggestion(
    name: "log.abbrevCommit",
    description:
        "If true, makes git-log[1], git-show[1], and git-whatchanged[1] assume `--abbrev-commit`. You may override this option with `--no-abbrev-commit`",
  ),
  FigSuggestion(
    name: "log.date",
    description:
        "Set the default date-time mode for the 'log' command. Setting a value for log.date is similar to using 'git log''s `--date` option. See git-log[1] for details",
  ),
  FigSuggestion(
    name: "log.decorate",
    description:
        "Print out the ref names of any commits that are shown by the log command. If 'short' is specified, the ref name prefixes 'refs/heads/', 'refs/tags/' and 'refs/remotes/' will not be printed. If 'full' is specified, the full ref name (including prefix) will be printed. If 'auto' is specified, then if the output is going to a terminal, the ref names are shown as if 'short' were given, otherwise no ref names are shown. This is the same as the `--decorate` option of the `git log`",
  ),
  FigSuggestion(
    name: "log.diffMerges",
    description:
        "Set default diff format to be used for merge commits. See `--diff-merges` in git-log[1] for details. Defaults to `separate`",
  ),
  FigSuggestion(
    name: "log.excludeDecoration",
    description:
        "Exclude the specified patterns from the log decorations. This is similar to the `--decorate-refs-exclude` command-line option, but the config option can be overridden by the `--decorate-refs` option",
  ),
  FigSuggestion(
    name: "log.follow",
    description:
        "If `true`, `git log` will act as if the `--follow` option was used when a single <path> is given. This has the same limitations as `--follow`, i.e. it cannot be used to follow multiple files and does not work well on non-linear history",
  ),
  FigSuggestion(
    name: "log.graphColors",
    description:
        "A list of colors, separated by commas, that can be used to draw history lines in `git log --graph`",
  ),
  FigSuggestion(
    name: "log.initialDecorationSet",
    description:
        "By default, `git log` only shows decorations for certain known ref namespaces. If 'all' is specified, then show all refs as decorations",
  ),
  FigSuggestion(
    name: "log.mailmap",
    description:
        "If true, makes git-log[1], git-show[1], and git-whatchanged[1] assume `--use-mailmap`, otherwise assume `--no-use-mailmap`. True by default",
  ),
  FigSuggestion(
    name: "log.showRoot",
    description:
        "If true, the initial commit will be shown as a big creation event. This is equivalent to a diff against an empty tree. Tools like git-log[1] or git-whatchanged[1], which normally hide the root commit will now show it. True by default",
  ),
  FigSuggestion(
    name: "log.showSignature",
    description:
        "If true, makes git-log[1], git-show[1], and git-whatchanged[1] assume `--show-signature`",
  ),
  FigSuggestion(
    name: "lsrefs.unborn",
  ),
  FigSuggestion(
    name: "mailinfo.scissors",
  ),
  FigSuggestion(
    name: "mailmap.blob",
    description:
        "Like `mailmap.file`, but consider the value as a reference to a blob in the repository. If both `mailmap.file` and `mailmap.blob` are given, both are parsed, with entries from `mailmap.file` taking precedence. In a bare repository, this defaults to `HEAD:.mailmap`. In a non-bare repository, it defaults to empty",
  ),
  FigSuggestion(
    name: "mailmap.file",
    description:
        "The location of an augmenting mailmap file. The default mailmap, located in the root of the repository, is loaded first, then the mailmap file pointed to by this variable. The location of the mailmap file may be in a repository subdirectory, or somewhere outside of the repository itself. See git-shortlog[1] and git-blame[1]",
  ),
  FigSuggestion(
    name: "maintenance.<task>.enabled",
    description:
        "This boolean config option controls whether the maintenance task with name `<task>` is run when no `--task` option is specified to `git maintenance run`. These config values are ignored if a `--task` option exists. By default, only `maintenance.gc.enabled` is true",
    insertValue: "maintenance.{cursor}.enabled",
  ),
  FigSuggestion(
    name: "maintenance.<task>.schedule",
    insertValue: "maintenance.{cursor}.schedule",
  ),
  FigSuggestion(
    name: "maintenance.auto",
    description:
        "This boolean config option controls whether some commands run `git maintenance run --auto` after doing their normal work. Defaults to true",
  ),
  FigSuggestion(
    name: "maintenance.commit-graph.auto",
    description:
        "This integer config option controls how often the `commit-graph` task should be run as part of `git maintenance run --auto`. If zero, then the `commit-graph` task will not run with the `--auto` option. A negative value will force the task to run every time. Otherwise, a positive value implies the command should run when the number of reachable commits that are not in the commit-graph file is at least the value of `maintenance.commit-graph.auto`. The default value is 100",
  ),
  FigSuggestion(
    name: "maintenance.incremental-repack.auto",
    description:
        "This integer config option controls how often the `incremental-repack` task should be run as part of `git maintenance run --auto`. If zero, then the `incremental-repack` task will not run with the `--auto` option. A negative value will force the task to run every time. Otherwise, a positive value implies the command should run when the number of pack-files not in the multi-pack-index is at least the value of `maintenance.incremental-repack.auto`. The default value is 10",
  ),
  FigSuggestion(
    name: "maintenance.loose-objects.auto",
    description:
        "This integer config option controls how often the `loose-objects` task should be run as part of `git maintenance run --auto`. If zero, then the `loose-objects` task will not run with the `--auto` option. A negative value will force the task to run every time. Otherwise, a positive value implies the command should run when the number of loose objects is at least the value of `maintenance.loose-objects.auto`. The default value is 100",
  ),
  FigSuggestion(
    name: "maintenance.strategy",
    description:
        "This string config option provides a way to specify one of a few recommended schedules for background maintenance. This only affects which tasks are run during `git maintenance run --schedule=X` commands, provided no `--task=<task>` arguments are provided. Further, if a `maintenance.<task>.schedule` config value is set, then that value is used instead of the one provided by `maintenance.strategy`. The possible strategy strings are:",
  ),
  FigSuggestion(
    name: "man.<tool>.cmd",
    description:
        "Specify the command to invoke the specified man viewer. The specified command is evaluated in shell with the man page passed as argument. (See git-help[1].)",
    insertValue: "man.{cursor}.cmd",
  ),
  FigSuggestion(
    name: "man.<tool>.path",
    description:
        "Override the path for the given tool that may be used to display help in the 'man' format. See git-help[1]",
    insertValue: "man.{cursor}.path",
  ),
  FigSuggestion(
    name: "man.viewer",
    description:
        "Specify the programs that may be used to display help in the 'man' format. See git-help[1]",
  ),
  FigSuggestion(
    name: "merge.<driver>.driver",
    description:
        "Defines the command that implements a custom low-level merge driver. See gitattributes[5] for details",
    insertValue: "merge.{cursor}.driver",
  ),
  FigSuggestion(
    name: "merge.<driver>.name",
    description:
        "Defines a human-readable name for a custom low-level merge driver. See gitattributes[5] for details",
    insertValue: "merge.{cursor}.name",
  ),
  FigSuggestion(
    name: "merge.<driver>.recursive",
    description:
        "Names a low-level merge driver to be used when performing an internal merge between common ancestors. See gitattributes[5] for details",
    insertValue: "merge.{cursor}.recursive",
  ),
  FigSuggestion(
    name: "merge.autoStash",
    description:
        "When set to true, automatically create a temporary stash entry before the operation begins, and apply it after the operation ends. This means that you can run merge on a dirty worktree. However, use with care: the final stash application after a successful merge might result in non-trivial conflicts. This option can be overridden by the `--no-autostash` and `--autostash` options of git-merge[1]. Defaults to false",
  ),
  FigSuggestion(
    name: "merge.branchdesc",
    description:
        "In addition to branch names, populate the log message with the branch description text associated with them. Defaults to false",
  ),
  FigSuggestion(
    name: "merge.conflictStyle",
  ),
  FigSuggestion(
    name: "merge.defaultToUpstream",
    description:
        "If merge is called without any commit argument, merge the upstream branches configured for the current branch by using their last observed values stored in their remote-tracking branches. The values of the `branch.<current branch>.merge` that name the branches at the remote named by `branch.<current branch>.remote` are consulted, and then they are mapped via `remote.<remote>.fetch` to their corresponding remote-tracking branches, and the tips of these tracking branches are merged. Defaults to true",
  ),
  FigSuggestion(
    name: "merge.directoryRenames",
  ),
  FigSuggestion(
    name: "merge.ff",
    description:
        "By default, Git does not create an extra merge commit when merging a commit that is a descendant of the current commit. Instead, the tip of the current branch is fast-forwarded. When set to `false`, this variable tells Git to create an extra merge commit in such a case (equivalent to giving the `--no-ff` option from the command line). When set to `only`, only such fast-forward merges are allowed (equivalent to giving the `--ff-only` option from the command line)",
  ),
  FigSuggestion(
    name: "merge.guitool",
    description:
        "Controls which merge tool is used by git-mergetool[1] when the -g/--gui flag is specified. The list below shows the valid built-in values. Any other value is treated as a custom merge tool and requires that a corresponding mergetool.<guitool>.cmd variable is defined",
  ),
  FigSuggestion(
    name: "merge.log",
    description:
        "In addition to branch names, populate the log message with at most the specified number of one-line descriptions from the actual commits that are being merged. Defaults to false, and true is a synonym for 20",
  ),
  FigSuggestion(
    name: "merge.renameLimit",
    description:
        "The number of files to consider in the exhaustive portion of rename detection during a merge. If not specified, defaults to the value of diff.renameLimit. If neither merge.renameLimit nor diff.renameLimit are specified, currently defaults to 7000. This setting has no effect if rename detection is turned off",
  ),
  FigSuggestion(
    name: "merge.renames",
  ),
  FigSuggestion(
    name: "merge.renormalize",
  ),
  FigSuggestion(
    name: "merge.stat",
    description:
        "Whether to print the diffstat between ORIG_HEAD and the merge result at the end of the merge. True by default",
  ),
  FigSuggestion(
    name: "merge.suppressDest",
  ),
  FigSuggestion(
    name: "merge.tool",
    description:
        "Controls which merge tool is used by git-mergetool[1]. The list below shows the valid built-in values. Any other value is treated as a custom merge tool and requires that a corresponding mergetool.<tool>.cmd variable is defined",
  ),
  FigSuggestion(
    name: "merge.verbosity",
    description:
        "Controls the amount of output shown by the recursive merge strategy. Level 0 outputs nothing except a final error message if conflicts were detected. Level 1 outputs only conflicts, 2 outputs conflicts and file changes. Level 5 and above outputs debugging information. The default is level 2. Can be overridden by the `GIT_MERGE_VERBOSITY` environment variable",
  ),
  FigSuggestion(
    name: "merge.verifySignatures",
    description:
        "If true, this is equivalent to the --verify-signatures command line option. See git-merge[1] for details",
  ),
  FigSuggestion(
    name: "mergetool.<tool>.cmd",
    description:
        "Specify the command to invoke the specified merge tool. The specified command is evaluated in shell with the following variables available: 'BASE' is the name of a temporary file containing the common base of the files to be merged, if available; 'LOCAL' is the name of a temporary file containing the contents of the file on the current branch; 'REMOTE' is the name of a temporary file containing the contents of the file from the branch being merged; 'MERGED' contains the name of the file to which the merge tool should write the results of a successful merge",
    insertValue: "mergetool.{cursor}.cmd",
  ),
  FigSuggestion(
    name: "mergetool.<tool>.hideResolved",
    description:
        "Allows the user to override the global `mergetool.hideResolved` value for a specific tool. See `mergetool.hideResolved` for the full description",
    insertValue: "mergetool.{cursor}.hideResolved",
  ),
  FigSuggestion(
    name: "mergetool.<tool>.path",
    description:
        "Override the path for the given tool. This is useful in case your tool is not in the PATH",
    insertValue: "mergetool.{cursor}.path",
  ),
  FigSuggestion(
    name: "mergetool.<tool>.trustExitCode",
    description:
        "For a custom merge command, specify whether the exit code of the merge command can be used to determine whether the merge was successful. If this is not set to true then the merge target file timestamp is checked and the merge assumed to have been successful if the file has been updated, otherwise the user is prompted to indicate the success of the merge",
    insertValue: "mergetool.{cursor}.trustExitCode",
  ),
  FigSuggestion(
    name: "mergetool.hideResolved",
    description:
        "During a merge Git will automatically resolve as many conflicts as possible and write the 'MERGED' file containing conflict markers around any conflicts that it cannot resolve; 'LOCAL' and 'REMOTE' normally represent the versions of the file from before Git's conflict resolution. This flag causes 'LOCAL' and 'REMOTE' to be overwriten so that only the unresolved conflicts are presented to the merge tool. Can be configured per-tool via the `mergetool.<tool>.hideResolved` configuration variable. Defaults to `false`",
  ),
  FigSuggestion(
    name: "mergetool.keepBackup",
    description:
        "After performing a merge, the original file with conflict markers can be saved as a file with a `.orig` extension. If this variable is set to `false` then this file is not preserved. Defaults to `true` (i.e. keep the backup files)",
  ),
  FigSuggestion(
    name: "mergetool.keepTemporaries",
    description:
        "When invoking a custom merge tool, Git uses a set of temporary files to pass to the tool. If the tool returns an error and this variable is set to `true`, then these temporary files will be preserved, otherwise they will be removed after the tool has exited. Defaults to `false`",
  ),
  FigSuggestion(
    name: "mergetool.meld.hasOutput",
    description:
        "Older versions of `meld` do not support the `--output` option. Git will attempt to detect whether `meld` supports `--output` by inspecting the output of `meld --help`. Configuring `mergetool.meld.hasOutput` will make Git skip these checks and use the configured value instead. Setting `mergetool.meld.hasOutput` to `true` tells Git to unconditionally use the `--output` option, and `false` avoids using `--output`",
  ),
  FigSuggestion(
    name: "mergetool.meld.useAutoMerge",
    description:
        "When the `--auto-merge` is given, meld will merge all non-conflicting parts automatically, highlight the conflicting parts and wait for user decision. Setting `mergetool.meld.useAutoMerge` to `true` tells Git to unconditionally use the `--auto-merge` option with `meld`. Setting this value to `auto` makes git detect whether `--auto-merge` is supported and will only use `--auto-merge` when available. A value of `false` avoids using `--auto-merge` altogether, and is the default value",
  ),
  FigSuggestion(
    name: "mergetool.prompt",
    description:
        "Prompt before each invocation of the merge resolution program",
  ),
  FigSuggestion(
    name: "mergetool.vimdiff.layout",
    description:
        "The vimdiff backend uses this variable to control how its split windows look like. Applies even if you are using Neovim (`nvim`) or gVim (`gvim`) as the merge tool. See BACKEND SPECIFIC HINTS section",
  ),
  FigSuggestion(
    name: "mergetool.writeToTemp",
    description:
        "Git writes temporary 'BASE', 'LOCAL', and 'REMOTE' versions of conflicting files in the worktree by default. Git will attempt to use a temporary directory for these files when set `true`. Defaults to `false`",
  ),
  FigSuggestion(
    name: "notes.<name>.mergeStrategy",
    insertValue: "notes.{cursor}.mergeStrategy",
  ),
  FigSuggestion(
    name: "notes.displayRef",
    description:
        "The (fully qualified) refname from which to show notes when showing commit messages. The value of this variable can be set to a glob, in which case notes from all matching refs will be shown. You may also specify this configuration variable several times. A warning will be issued for refs that do not exist, but a glob that does not match any refs is silently ignored",
  ),
  FigSuggestion(
    name: "notes.mergeStrategy",
  ),
  FigSuggestion(
    name: "notes.rewrite.<command>",
    insertValue: "notes.rewrite.{cursor}",
  ),
  FigSuggestion(
    name: "notes.rewriteMode",
  ),
  FigSuggestion(
    name: "notes.rewriteRef",
    description:
        "When copying notes during a rewrite, specifies the (fully qualified) ref whose notes should be copied. The ref may be a glob, in which case notes in all matching refs will be copied. You may also specify this configuration several times",
  ),
  FigSuggestion(
    name: "pack.allowPackReuse",
    description:
        "When true, and when reachability bitmaps are enabled, pack-objects will try to send parts of the bitmapped packfile verbatim. This can reduce memory and CPU usage to serve fetches, but might result in sending a slightly larger pack. Defaults to true",
  ),
  FigSuggestion(
    name: "pack.compression",
  ),
  FigSuggestion(
    name: "pack.deltaCacheLimit",
    description:
        "The maximum size of a delta, that is cached in git-pack-objects[1]. This cache is used to speed up the writing object phase by not having to recompute the final delta result once the best match for all objects is found. Defaults to 1000. Maximum value is 65535",
  ),
  FigSuggestion(
    name: "pack.deltaCacheSize",
    description:
        "The maximum memory in bytes used for caching deltas in git-pack-objects[1] before writing them out to a pack. This cache is used to speed up the writing object phase by not having to recompute the final delta result once the best match for all objects is found. Repacking large repositories on machines which are tight with memory might be badly impacted by this though, especially if this cache pushes the system into swapping. A value of 0 means no limit. The smallest size of 1 byte may be used to virtually disable this cache. Defaults to 256 MiB",
  ),
  FigSuggestion(
    name: "pack.depth",
    description:
        "The maximum delta depth used by git-pack-objects[1] when no maximum depth is given on the command line. Defaults to 50. Maximum value is 4095",
  ),
  FigSuggestion(
    name: "pack.indexVersion",
    description:
        "Specify the default pack index version. Valid values are 1 for legacy pack index used by Git versions prior to 1.5.2, and 2 for the new pack index with capabilities for packs larger than 4 GB as well as proper protection against the repacking of corrupted packs. Version 2 is the default. Note that version 2 is enforced and this config option ignored whenever the corresponding pack is larger than 2 GB",
  ),
  FigSuggestion(
    name: "pack.island",
  ),
  FigSuggestion(
    name: "pack.islandCore",
  ),
  FigSuggestion(
    name: "pack.packSizeLimit",
    description:
        "The maximum size of a pack. This setting only affects packing to a file when repacking, i.e. the git:// protocol is unaffected. It can be overridden by the `--max-pack-size` option of git-repack[1]. Reaching this limit results in the creation of multiple packfiles",
  ),
  FigSuggestion(
    name: "pack.preferBitmapTips",
  ),
  FigSuggestion(
    name: "pack.threads",
    description:
        "Specifies the number of threads to spawn when searching for best delta matches. This requires that git-pack-objects[1] be compiled with pthreads otherwise this option is ignored with a warning. This is meant to reduce packing time on multiprocessor machines. The required amount of memory for the delta search window is however multiplied by the number of threads. Specifying 0 will cause Git to auto-detect the number of CPU's and set the number of threads accordingly",
  ),
  FigSuggestion(
    name: "pack.useBitmaps",
    description:
        "When true, git will use pack bitmaps (if available) when packing to stdout (e.g., during the server side of a fetch). Defaults to true. You should not generally need to turn this off unless you are debugging pack bitmaps",
  ),
  FigSuggestion(
    name: "pack.useSparse",
    description:
        "When true, git will default to using the '--sparse' option in 'git pack-objects' when the '--revs' option is present. This algorithm only walks trees that appear in paths that introduce new objects. This can have significant performance benefits when computing a pack to send a small change. However, it is possible that extra objects are added to the pack-file if the included commits contain certain types of direct renames. Default is `true`",
  ),
  FigSuggestion(
    name: "pack.window",
    description:
        "The size of the window used by git-pack-objects[1] when no window size is given on the command line. Defaults to 10",
  ),
  FigSuggestion(
    name: "pack.windowMemory",
  ),
  FigSuggestion(
    name: "pack.writeBitmapHashCache",
  ),
  FigSuggestion(
    name: "pack.writeBitmapLookupTable",
  ),
  FigSuggestion(
    name: "pack.writeBitmaps",
    description: "This is a deprecated synonym for `repack.writeBitmaps`",
    deprecated: true,
    hidden: true,
  ),
  FigSuggestion(
    name: "pack.writeReverseIndex",
    description:
        "When true, git will write a corresponding .rev file (see: gitformat-pack[5]) for each new packfile that it writes in all places except for git-fast-import[1] and in the bulk checkin mechanism. Defaults to false",
  ),
  FigSuggestion(
    name: "pager.<cmd>",
    description:
        "If the value is boolean, turns on or off pagination of the output of a particular Git subcommand when writing to a tty. Otherwise, turns on pagination for the subcommand using the pager specified by the value of `pager.<cmd>`. If `--paginate` or `--no-pager` is specified on the command line, it takes precedence over this option. To disable pagination for all commands, set `core.pager` or `GIT_PAGER` to `cat`",
    insertValue: "pager.{cursor}",
  ),
  FigSuggestion(
    name: "pretty.<name>",
    insertValue: "pretty.{cursor}",
  ),
  FigSuggestion(
    name: "protocol.<name>.allow",
    description:
        "Set a policy to be used by protocol `<name>` with clone/fetch/push commands. See `protocol.allow` above for the available policies",
    insertValue: "protocol.{cursor}.allow",
  ),
  FigSuggestion(
    name: "protocol.allow",
    description:
        "If set, provide a user defined default policy for all protocols which don't explicitly have a policy (`protocol.<name>.allow`). By default, if unset, known-safe protocols (http, https, git, ssh, file) have a default policy of `always`, known-dangerous protocols (ext) have a default policy of `never`, and all other protocols have a default policy of `user`. Supported policies:",
  ),
  FigSuggestion(
    name: "protocol.version",
    description:
        "If set, clients will attempt to communicate with a server using the specified protocol version. If the server does not support it, communication falls back to version 0. If unset, the default is `2`. Supported versions:",
  ),
  FigSuggestion(
    name: "pull.ff",
    description:
        "By default, Git does not create an extra merge commit when merging a commit that is a descendant of the current commit. Instead, the tip of the current branch is fast-forwarded. When set to `false`, this variable tells Git to create an extra merge commit in such a case (equivalent to giving the `--no-ff` option from the command line). When set to `only`, only such fast-forward merges are allowed (equivalent to giving the `--ff-only` option from the command line). This setting overrides `merge.ff` when pulling",
  ),
  FigSuggestion(
    name: "pull.octopus",
    description:
        "The default merge strategy to use when pulling multiple branches at once",
  ),
  FigSuggestion(
    name: "pull.rebase",
  ),
  FigSuggestion(
    name: "pull.twohead",
    description:
        "The default merge strategy to use when pulling a single branch",
  ),
  FigSuggestion(
    name: "push.autoSetupRemote",
    description: "If set to \\",
  ),
  FigSuggestion(
    name: "push.default",
    description:
        "Defines the action `git push` should take if no refspec is given (whether from the command-line, config, or elsewhere). Different values are well-suited for specific workflows; for instance, in a purely central workflow (i.e. the fetch source is equal to the push destination), `upstream` is probably what you want. Possible values are:",
  ),
  FigSuggestion(
    name: "push.followTags",
    description:
        "If set to true enable `--follow-tags` option by default. You may override this configuration at time of push by specifying `--no-follow-tags`",
  ),
  FigSuggestion(
    name: "push.gpgSign",
    description:
        "May be set to a boolean value, or the string 'if-asked'. A true value causes all pushes to be GPG signed, as if `--signed` is passed to git-push[1]. The string 'if-asked' causes pushes to be signed if the server supports it, as if `--signed=if-asked` is passed to 'git push'. A false value may override a value from a lower-priority config file. An explicit command-line flag always overrides this config option",
  ),
  FigSuggestion(
    name: "push.negotiate",
  ),
  FigSuggestion(
    name: "push.pushOption",
    description:
        "When no `--push-option=<option>` argument is given from the command line, `git push` behaves as if each <value> of this variable is given as `--push-option=<value>`",
  ),
  FigSuggestion(
    name: "push.recurseSubmodules",
    description:
        "Make sure all submodule commits used by the revisions to be pushed are available on a remote-tracking branch. If the value is 'check' then Git will verify that all submodule commits that changed in the revisions to be pushed are available on at least one remote of the submodule. If any commits are missing, the push will be aborted and exit with non-zero status. If the value is 'on-demand' then all submodules that changed in the revisions to be pushed will be pushed. If on-demand was not able to push all necessary revisions it will also be aborted and exit with non-zero status. If the value is 'no' then default behavior of ignoring submodules when pushing is retained. You may override this configuration at time of push by specifying '--recurse-submodules=check|on-demand|no'. If not set, 'no' is used by default, unless 'submodule.recurse' is set (in which case a 'true' value means 'on-demand')",
  ),
  FigSuggestion(
    name: "push.useBitmaps",
  ),
  FigSuggestion(
    name: "push.useForceIfIncludes",
  ),
  FigSuggestion(
    name: "rebase.abbreviateCommands",
    description:
        "If set to true, `git rebase` will use abbreviated command names in the todo list resulting in something like this:",
  ),
  FigSuggestion(
    name: "rebase.autoSquash",
    description: "If set to true enable `--autosquash` option by default",
  ),
  FigSuggestion(
    name: "rebase.autoStash",
    description:
        "When set to true, automatically create a temporary stash entry before the operation begins, and apply it after the operation ends. This means that you can run rebase on a dirty worktree. However, use with care: the final stash application after a successful rebase might result in non-trivial conflicts. This option can be overridden by the `--no-autostash` and `--autostash` options of git-rebase[1]. Defaults to false",
  ),
  FigSuggestion(
    name: "rebase.backend",
    description:
        "Default backend to use for rebasing. Possible choices are 'apply' or 'merge'. In the future, if the merge backend gains all remaining capabilities of the apply backend, this setting may become unused",
  ),
  FigSuggestion(
    name: "rebase.forkPoint",
    description: "If set to false set `--no-fork-point` option by default",
  ),
  FigSuggestion(
    name: "rebase.instructionFormat",
    description:
        "A format string, as specified in git-log[1], to be used for the todo list during an interactive rebase. The format will automatically have the long commit hash prepended to the format",
  ),
  FigSuggestion(
    name: "rebase.missingCommitsCheck",
  ),
  FigSuggestion(
    name: "rebase.rescheduleFailedExec",
    description:
        "Automatically reschedule `exec` commands that failed. This only makes sense in interactive mode (or when an `--exec` option was provided). This is the same as specifying the `--reschedule-failed-exec` option",
  ),
  FigSuggestion(
    name: "rebase.stat",
    description:
        "Whether to show a diffstat of what changed upstream since the last rebase. False by default",
  ),
  FigSuggestion(
    name: "rebase.updateRefs",
    description: "If set to true enable `--update-refs` option by default",
  ),
  FigSuggestion(
    name: "receive.advertiseAtomic",
    description:
        "By default, git-receive-pack will advertise the atomic push capability to its clients. If you don't want to advertise this capability, set this variable to false",
  ),
  FigSuggestion(
    name: "receive.advertisePushOptions",
    description:
        "When set to true, git-receive-pack will advertise the push options capability to its clients. False by default",
  ),
  FigSuggestion(
    name: "receive.autogc",
  ),
  FigSuggestion(
    name: "receive.certNonceSeed",
  ),
  FigSuggestion(
    name: "receive.certNonceSlop",
  ),
  FigSuggestion(
    name: "receive.denyCurrentBranch",
  ),
  FigSuggestion(
    name: "receive.denyDeleteCurrent",
    description:
        "If set to true, git-receive-pack will deny a ref update that deletes the currently checked out branch of a non-bare repository",
  ),
  FigSuggestion(
    name: "receive.denyDeletes",
    description:
        "If set to true, git-receive-pack will deny a ref update that deletes the ref. Use this to prevent such a ref deletion via a push",
  ),
  FigSuggestion(
    name: "receive.denyNonFastForwards",
    description:
        "If set to true, git-receive-pack will deny a ref update which is not a fast-forward. Use this to prevent such an update via a push, even if that push is forced. This configuration variable is set when initializing a shared repository",
  ),
  FigSuggestion(
    name: "receive.fsck.<msg-id>",
    description:
        "Acts like `fsck.<msg-id>`, but is used by git-receive-pack[1] instead of git-fsck[1]. See the `fsck.<msg-id>` documentation for details",
    insertValue: "receive.fsck.{cursor}",
  ),
  FigSuggestion(
    name: "receive.fsck.skipList",
    description:
        "Acts like `fsck.skipList`, but is used by git-receive-pack[1] instead of git-fsck[1]. See the `fsck.skipList` documentation for details",
  ),
  FigSuggestion(
    name: "receive.fsckObjects",
    description:
        "If it is set to true, git-receive-pack will check all received objects. See `transfer.fsckObjects` for what's checked. Defaults to false. If not set, the value of `transfer.fsckObjects` is used instead",
  ),
  FigSuggestion(
    name: "receive.hideRefs",
    description:
        "This variable is the same as `transfer.hideRefs`, but applies only to `receive-pack` (and so affects pushes, but not fetches). An attempt to update or delete a hidden ref by `git push` is rejected",
  ),
  FigSuggestion(
    name: "receive.keepAlive",
    description:
        "After receiving the pack from the client, `receive-pack` may produce no output (if `--quiet` was specified) while processing the pack, causing some networks to drop the TCP connection. With this option set, if `receive-pack` does not transmit any data in this phase for `receive.keepAlive` seconds, it will send a short keepalive packet. The default is 5 seconds; set to 0 to disable keepalives entirely",
  ),
  FigSuggestion(
    name: "receive.maxInputSize",
    description:
        "If the size of the incoming pack stream is larger than this limit, then git-receive-pack will error out, instead of accepting the pack file. If not set or set to 0, then the size is unlimited",
  ),
  FigSuggestion(
    name: "receive.procReceiveRefs",
  ),
  FigSuggestion(
    name: "receive.shallowUpdate",
    description:
        "If set to true, .git/shallow can be updated when new refs require new shallow roots. Otherwise those refs are rejected",
  ),
  FigSuggestion(
    name: "receive.unpackLimit",
    description:
        "If the number of objects received in a push is below this limit then the objects will be unpacked into loose object files. However if the number of received objects equals or exceeds this limit then the received pack will be stored as a pack, after adding any missing delta bases. Storing the pack from a push can make the push operation complete faster, especially on slow filesystems. If not set, the value of `transfer.unpackLimit` is used instead",
  ),
  FigSuggestion(
    name: "receive.updateServerInfo",
    description:
        "If set to true, git-receive-pack will run git-update-server-info after receiving data from git-push and updating refs",
  ),
  FigSuggestion(
    name: "remote.<name>.fetch",
    insertValue: "remote.{cursor}.fetch",
  ),
  FigSuggestion(
    name: "remote.<name>.mirror",
    description:
        "If true, pushing to this remote will automatically behave as if the `--mirror` option was given on the command line",
    insertValue: "remote.{cursor}.mirror",
  ),
  FigSuggestion(
    name: "remote.<name>.partialclonefilter",
    description:
        "The filter that will be applied when fetching from this promisor remote. Changing or clearing this value will only affect fetches for new commits. To fetch associated objects for commits already present in the local object database, use the `--refetch` option of git-fetch[1]",
    insertValue: "remote.{cursor}.partialclonefilter",
  ),
  FigSuggestion(
    name: "remote.<name>.promisor",
    description:
        "When set to true, this remote will be used to fetch promisor objects",
    insertValue: "remote.{cursor}.promisor",
  ),
  FigSuggestion(
    name: "remote.<name>.proxy",
    description:
        "For remotes that require curl (http, https and ftp), the URL to the proxy to use for that remote. Set to the empty string to disable proxying for that remote",
    insertValue: "remote.{cursor}.proxy",
  ),
  FigSuggestion(
    name: "remote.<name>.proxyAuthMethod",
    description:
        "For remotes that require curl (http, https and ftp), the method to use for authenticating against the proxy in use (probably set in `remote.<name>.proxy`). See `http.proxyAuthMethod`",
    insertValue: "remote.{cursor}.proxyAuthMethod",
  ),
  FigSuggestion(
    name: "remote.<name>.prune",
    description:
        "When set to true, fetching from this remote by default will also remove any remote-tracking references that no longer exist on the remote (as if the `--prune` option was given on the command line). Overrides `fetch.prune` settings, if any",
    insertValue: "remote.{cursor}.prune",
  ),
  FigSuggestion(
    name: "remote.<name>.pruneTags",
    description:
        "When set to true, fetching from this remote by default will also remove any local tags that no longer exist on the remote if pruning is activated in general via `remote.<name>.prune`, `fetch.prune` or `--prune`. Overrides `fetch.pruneTags` settings, if any",
    insertValue: "remote.{cursor}.pruneTags",
  ),
  FigSuggestion(
    name: "remote.<name>.push",
    insertValue: "remote.{cursor}.push",
  ),
  FigSuggestion(
    name: "remote.<name>.pushurl",
    description: "The push URL of a remote repository. See git-push[1]",
    insertValue: "remote.{cursor}.pushurl",
  ),
  FigSuggestion(
    name: "remote.<name>.receivepack",
    description:
        "The default program to execute on the remote side when pushing. See option --receive-pack of git-push[1]",
    insertValue: "remote.{cursor}.receivepack",
  ),
  FigSuggestion(
    name: "remote.<name>.skipDefaultUpdate",
    description:
        "If true, this remote will be skipped by default when updating using git-fetch[1] or the `update` subcommand of git-remote[1]",
    insertValue: "remote.{cursor}.skipDefaultUpdate",
  ),
  FigSuggestion(
    name: "remote.<name>.skipFetchAll",
    description:
        "If true, this remote will be skipped by default when updating using git-fetch[1] or the `update` subcommand of git-remote[1]",
    insertValue: "remote.{cursor}.skipFetchAll",
  ),
  FigSuggestion(
    name: "remote.<name>.tagOpt",
    description:
        "Setting this value to --no-tags disables automatic tag following when fetching from remote <name>. Setting it to --tags will fetch every tag from remote <name>, even if they are not reachable from remote branch heads. Passing these flags directly to git-fetch[1] can override this setting. See options --tags and --no-tags of git-fetch[1]",
    insertValue: "remote.{cursor}.tagOpt",
  ),
  FigSuggestion(
    name: "remote.<name>.uploadpack",
    description:
        "The default program to execute on the remote side when fetching. See option --upload-pack of git-fetch-pack[1]",
    insertValue: "remote.{cursor}.uploadpack",
  ),
  FigSuggestion(
    name: "remote.<name>.url",
    description:
        "The URL of a remote repository. See git-fetch[1] or git-push[1]",
    insertValue: "remote.{cursor}.url",
  ),
  FigSuggestion(
    name: "remote.<name>.vcs",
    description:
        "Setting this to a value <vcs> will cause Git to interact with the remote with the git-remote-<vcs> helper",
    insertValue: "remote.{cursor}.vcs",
  ),
  FigSuggestion(
    name: "remote.pushDefault",
    description:
        "The remote to push to by default. Overrides `branch.<name>.remote` for all branches, and is overridden by `branch.<name>.pushRemote` for specific branches",
  ),
  FigSuggestion(
    name: "remotes.<group>",
    insertValue: "remotes.{cursor}",
  ),
  FigSuggestion(
    name: "repack.cruftThreads",
    description:
        "Parameters used by git-pack-objects[1] when generating a cruft pack and the respective parameters are not given over the command line. See similarly named `pack.*` configuration variables for defaults and meaning",
  ),
  FigSuggestion(
    name: "repack.packKeptObjects",
    description:
        "If set to true, makes `git repack` act as if `--pack-kept-objects` was passed. See git-repack[1] for details. Defaults to `false` normally, but `true` if a bitmap index is being written (either via `--write-bitmap-index` or `repack.writeBitmaps`)",
  ),
  FigSuggestion(
    name: "repack.updateServerInfo",
    description:
        "If set to false, git-repack[1] will not run git-update-server-info[1]. Defaults to true. Can be overridden when true by the `-n` option of git-repack[1]",
  ),
  FigSuggestion(
    name: "repack.useDeltaBaseOffset",
  ),
  FigSuggestion(
    name: "repack.useDeltaIslands",
    description:
        "If set to true, makes `git repack` act as if `--delta-islands` was passed. Defaults to `false`",
  ),
  FigSuggestion(
    name: "repack.writeBitmaps",
  ),
  FigSuggestion(
    name: "rerere.autoUpdate",
    description:
        "When set to true, `git-rerere` updates the index with the resulting contents after it cleanly resolves conflicts using previously recorded resolution. Defaults to false",
  ),
  FigSuggestion(
    name: "rerere.enabled",
  ),
  FigSuggestion(
    name: "revert.reference",
    description:
        "Setting this variable to true makes `git revert` behave as if the `--reference` option is given",
  ),
  FigSuggestion(
    name: "safe.bareRepository",
    description:
        "Specifies which bare repositories Git will work with. The currently supported values are:",
  ),
  FigSuggestion(
    name: "safe.directory",
    description:
        "These config entries specify Git-tracked directories that are considered safe even if they are owned by someone other than the current user. By default, Git will refuse to even parse a Git config of a repository owned by someone else, let alone run its hooks, and this config setting allows users to specify exceptions, e.g. for intentionally shared repositories (see the `--shared` option in git-init[1])",
  ),
  FigSuggestion(
    name: "sendemail.forbidSendmailVariables",
  ),
  FigSuggestion(
    name: "sendemail.identity",
    description:
        "A configuration identity. When given, causes values in the 'sendemail.<identity>' subsection to take precedence over values in the 'sendemail' section. The default identity is the value of `sendemail.identity`",
  ),
  FigSuggestion(
    name: "sendemail.signedoffcc",
    description: "Deprecated alias for `sendemail.signedoffbycc`",
    deprecated: true,
    hidden: true,
  ),
  FigSuggestion(
    name: "sendemail.smtpBatchSize",
    description:
        "Number of messages to be sent per connection, after that a relogin will happen. If the value is 0 or undefined, send all messages in one connection. See also the `--batch-size` option of git-send-email[1]",
  ),
  FigSuggestion(
    name: "sendemail.smtpEncryption",
    description:
        "See git-send-email[1] for description. Note that this setting is not subject to the 'identity' mechanism",
  ),
  FigSuggestion(
    name: "sendemail.smtpReloginDelay",
    description:
        "Seconds wait before reconnecting to smtp server. See also the `--relogin-delay` option of git-send-email[1]",
  ),
  FigSuggestion(
    name: "sendemail.smtpsslcertpath",
    description:
        "Path to ca-certificates (either a directory or a single file). Set it to an empty string to disable certificate verification",
  ),
  FigSuggestion(
    name: "sendemail.xmailer",
    description: "See git-send-email[1] for description",
  ),
  FigSuggestion(
    name: "sequence.editor",
    description:
        "Text editor used by `git rebase -i` for editing the rebase instruction file. The value is meant to be interpreted by the shell when it is used. It can be overridden by the `GIT_SEQUENCE_EDITOR` environment variable. When not configured the default commit message editor is used instead",
  ),
  FigSuggestion(
    name: "sendemail.<identity>.forbidSendmailVariables",
    insertValue: "sendemail.{cursor}.forbidSendmailVariables",
  ),
  FigSuggestion(
    name: "sendemail.<identity>.signedoffcc",
    description: "Deprecated alias for `sendemail.signedoffbycc`",
    insertValue: "sendemail.{cursor}.signedoffcc",
    deprecated: true,
    hidden: true,
  ),
  FigSuggestion(
    name: "sendemail.<identity>.smtpBatchSize",
    description:
        "Number of messages to be sent per connection, after that a relogin will happen. If the value is 0 or undefined, send all messages in one connection. See also the `--batch-size` option of git-send-email[1]",
    insertValue: "sendemail.{cursor}.smtpBatchSize",
  ),
  FigSuggestion(
    name: "sendemail.<identity>.smtpEncryption",
    description:
        "See git-send-email[1] for description. Note that this setting is not subject to the 'identity' mechanism",
    insertValue: "sendemail.{cursor}.smtpEncryption",
  ),
  FigSuggestion(
    name: "sendemail.<identity>.smtpReloginDelay",
    description:
        "Seconds wait before reconnecting to smtp server. See also the `--relogin-delay` option of git-send-email[1]",
    insertValue: "sendemail.{cursor}.smtpReloginDelay",
  ),
  FigSuggestion(
    name: "sendemail.<identity>.smtpsslcertpath",
    description:
        "Path to ca-certificates (either a directory or a single file). Set it to an empty string to disable certificate verification",
    insertValue: "sendemail.{cursor}.smtpsslcertpath",
  ),
  FigSuggestion(
    name: "sendemail.<identity>.xmailer",
    description: "See git-send-email[1] for description",
    insertValue: "sendemail.{cursor}.xmailer",
  ),
  FigSuggestion(
    name: "sequence.<identity>.editor",
    description:
        "Text editor used by `git rebase -i` for editing the rebase instruction file. The value is meant to be interpreted by the shell when it is used. It can be overridden by the `GIT_SEQUENCE_EDITOR` environment variable. When not configured the default commit message editor is used instead",
    insertValue: "sequence.{cursor}.editor",
  ),
  FigSuggestion(
    name: "showBranch.default",
    description:
        "The default set of branches for git-show-branch[1]. See git-show-branch[1]",
  ),
  FigSuggestion(
    name: "sparse.expectFilesOutsideOfPatterns",
    description:
        "Typically with sparse checkouts, files not matching any sparsity patterns are marked with a SKIP_WORKTREE bit in the index and are missing from the working tree. Accordingly, Git will ordinarily check whether files with the SKIP_WORKTREE bit are in fact present in the working tree contrary to expectations. If Git finds any, it marks those paths as present by clearing the relevant SKIP_WORKTREE bits. This option can be used to tell Git that such present-despite-skipped files are expected and to stop checking for them",
  ),
  FigSuggestion(
    name: "splitIndex.maxPercentChange",
    description:
        "When the split index feature is used, this specifies the percent of entries the split index can contain compared to the total number of entries in both the split index and the shared index before a new shared index is written. The value should be between 0 and 100. If the value is 0 then a new shared index is always written, if it is 100 a new shared index is never written. By default the value is 20, so a new shared index is written if the number of entries in the split index would be greater than 20 percent of the total number of entries. See git-update-index[1]",
  ),
  FigSuggestion(
    name: "splitIndex.sharedIndexExpire",
  ),
  FigSuggestion(
    name: "ssh.variant",
    description:
        "By default, Git determines the command line arguments to use based on the basename of the configured SSH command (configured using the environment variable `GIT_SSH` or `GIT_SSH_COMMAND` or the config setting `core.sshCommand`). If the basename is unrecognized, Git will attempt to detect support of OpenSSH options by first invoking the configured SSH command with the `-G` (print configuration) option and will subsequently use OpenSSH options (if that is successful) or no options besides the host and remote command (if it fails)",
  ),
  FigSuggestion(
    name: "stash.showIncludeUntracked",
    description:
        "If this is set to true, the `git stash show` command will show the untracked files of a stash entry. Defaults to false. See description of 'show' command in git-stash[1]",
  ),
  FigSuggestion(
    name: "stash.showPatch",
    description:
        "If this is set to true, the `git stash show` command without an option will show the stash entry in patch form. Defaults to false. See description of 'show' command in git-stash[1]",
  ),
  FigSuggestion(
    name: "stash.showStat",
    description:
        "If this is set to true, the `git stash show` command without an option will show diffstat of the stash entry. Defaults to true. See description of 'show' command in git-stash[1]",
  ),
  FigSuggestion(
    name: "status.aheadBehind",
    description:
        "Set to true to enable `--ahead-behind` and false to enable `--no-ahead-behind` by default in git-status[1] for non-porcelain status formats. Defaults to true",
  ),
  FigSuggestion(
    name: "status.branch",
    description:
        "Set to true to enable --branch by default in git-status[1]. The option --no-branch takes precedence over this variable",
  ),
  FigSuggestion(
    name: "status.displayCommentPrefix",
    description:
        "If set to true, git-status[1] will insert a comment prefix before each output line (starting with `core.commentChar`, i.e. `#` by default). This was the behavior of git-status[1] in Git 1.8.4 and previous. Defaults to false",
  ),
  FigSuggestion(
    name: "status.relativePaths",
    description:
        "By default, git-status[1] shows paths relative to the current directory. Setting this variable to `false` shows paths relative to the repository root (this was the default for Git prior to v1.5.4)",
  ),
  FigSuggestion(
    name: "status.renameLimit",
    description:
        "The number of files to consider when performing rename detection in git-status[1] and git-commit[1]. Defaults to the value of diff.renameLimit",
  ),
  FigSuggestion(
    name: "status.renames",
  ),
  FigSuggestion(
    name: "status.short",
    description:
        "Set to true to enable --short by default in git-status[1]. The option --no-short takes precedence over this variable",
  ),
  FigSuggestion(
    name: "status.showStash",
    description:
        "If set to true, git-status[1] will display the number of entries currently stashed away. Defaults to false",
  ),
  FigSuggestion(
    name: "status.showUntrackedFiles",
    description:
        "By default, git-status[1] and git-commit[1] show files which are not currently tracked by Git. Directories which contain only untracked files, are shown with the directory name only. Showing untracked files means that Git needs to lstat() all the files in the whole repository, which might be slow on some systems. So, this variable controls how the commands displays the untracked files. Possible values are:",
  ),
  FigSuggestion(
    name: "status.submoduleSummary",
    description:
        "Defaults to false. If this is set to a non zero number or true (identical to -1 or an unlimited number), the submodule summary will be enabled and a summary of commits for modified submodules will be shown (see --summary-limit option of git-submodule[1]). Please note that the summary output command will be suppressed for all submodules when `diff.ignoreSubmodules` is set to 'all' or only for those submodules where `submodule.<name>.ignore=all`. The only exception to that rule is that status and commit will show staged submodule changes. To also view the summary for ignored submodules you can either use the --ignore-submodules=dirty command-line option or the 'git submodule summary' command, which shows a similar output but does not honor these settings",
  ),
  FigSuggestion(
    name: "submodule.<name>.active",
    description:
        "Boolean value indicating if the submodule is of interest to git commands. This config option takes precedence over the submodule.active config option. See gitsubmodules[7] for details",
    insertValue: "submodule.{cursor}.active",
  ),
  FigSuggestion(
    name: "submodule.<name>.branch",
    description:
        "The remote branch name for a submodule, used by `git submodule update --remote`. Set this option to override the value found in the `.gitmodules` file. See git-submodule[1] and gitmodules[5] for details",
    insertValue: "submodule.{cursor}.branch",
  ),
  FigSuggestion(
    name: "submodule.<name>.fetchRecurseSubmodules",
    insertValue: "submodule.{cursor}.fetchRecurseSubmodules",
  ),
  FigSuggestion(
    name: "submodule.<name>.ignore",
    insertValue: "submodule.{cursor}.ignore",
  ),
  FigSuggestion(
    name: "submodule.<name>.update",
    description:
        "The method by which a submodule is updated by 'git submodule update', which is the only affected command, others such as 'git checkout --recurse-submodules' are unaffected. It exists for historical reasons, when 'git submodule' was the only command to interact with submodules; settings like `submodule.active` and `pull.rebase` are more specific. It is populated by `git submodule init` from the gitmodules[5] file. See description of 'update' command in git-submodule[1]",
    insertValue: "submodule.{cursor}.update",
  ),
  FigSuggestion(
    name: "submodule.<name>.url",
    description:
        "The URL for a submodule. This variable is copied from the .gitmodules file to the git config via 'git submodule init'. The user can change the configured URL before obtaining the submodule via 'git submodule update'. If neither submodule.<name>.active or submodule.active are set, the presence of this variable is used as a fallback to indicate whether the submodule is of interest to git commands. See git-submodule[1] and gitmodules[5] for details",
    insertValue: "submodule.{cursor}.url",
  ),
  FigSuggestion(
    name: "submodule.active",
    description:
        "A repeated field which contains a pathspec used to match against a submodule's path to determine if the submodule is of interest to git commands. See gitsubmodules[7] for details",
  ),
  FigSuggestion(
    name: "submodule.alternateErrorStrategy",
    description:
        "Specifies how to treat errors with the alternates for a submodule as computed via `submodule.alternateLocation`. Possible values are `ignore`, `info`, `die`. Default is `die`. Note that if set to `ignore` or `info`, and if there is an error with the computed alternate, the clone proceeds as if no alternate was specified",
  ),
  FigSuggestion(
    name: "submodule.alternateLocation",
    description:
        "Specifies how the submodules obtain alternates when submodules are cloned. Possible values are `no`, `superproject`. By default `no` is assumed, which doesn't add references. When the value is set to `superproject` the submodule to be cloned computes its alternates location relative to the superprojects alternate",
  ),
  FigSuggestion(
    name: "submodule.fetchJobs",
    description:
        "Specifies how many submodules are fetched/cloned at the same time. A positive integer allows up to that number of submodules fetched in parallel. A value of 0 will give some reasonable default. If unset, it defaults to 1",
  ),
  FigSuggestion(
    name: "submodule.propagateBranches",
    description:
        "[EXPERIMENTAL] A boolean that enables branching support when using `--recurse-submodules` or `submodule.recurse=true`. Enabling this will allow certain commands to accept `--recurse-submodules` and certain commands that already accept `--recurse-submodules` will now consider branches. Defaults to false",
  ),
  FigSuggestion(
    name: "submodule.recurse",
    description:
        "A boolean indicating if commands should enable the `--recurse-submodules` option by default. Defaults to false",
  ),
  FigSuggestion(
    name: "tag.forceSignAnnotated",
    description:
        "A boolean to specify whether annotated tags created should be GPG signed. If `--annotate` is specified on the command line, it takes precedence over this option",
  ),
  FigSuggestion(
    name: "tag.gpgSign",
  ),
  FigSuggestion(
    name: "tag.sort",
  ),
  FigSuggestion(
    name: "tar.umask",
  ),
  FigSuggestion(
    name: "trace2.configParams",
  ),
  FigSuggestion(
    name: "trace2.destinationDebug",
    description:
        "Boolean. When true Git will print error messages when a trace target destination cannot be opened for writing. By default, these errors are suppressed and tracing is silently disabled. May be overridden by the `GIT_TRACE2_DST_DEBUG` environment variable",
  ),
  FigSuggestion(
    name: "trace2.envVars",
  ),
  FigSuggestion(
    name: "trace2.eventBrief",
    description:
        "Boolean. When true `time`, `filename`, and `line` fields are omitted from event output. May be overridden by the `GIT_TRACE2_EVENT_BRIEF` environment variable. Defaults to false",
  ),
  FigSuggestion(
    name: "trace2.eventNesting",
    description:
        "Integer. Specifies desired depth of nested regions in the event output. Regions deeper than this value will be omitted. May be overridden by the `GIT_TRACE2_EVENT_NESTING` environment variable. Defaults to 2",
  ),
  FigSuggestion(
    name: "trace2.eventTarget",
    description:
        "This variable controls the event target destination. It may be overridden by the `GIT_TRACE2_EVENT` environment variable. The following table shows possible values",
  ),
  FigSuggestion(
    name: "trace2.maxFiles",
    description:
        "Integer. When writing trace files to a target directory, do not write additional traces if we would exceed this many files. Instead, write a sentinel file that will block further tracing to this directory. Defaults to 0, which disables this check",
  ),
  FigSuggestion(
    name: "trace2.normalBrief",
    description:
        "Boolean. When true `time`, `filename`, and `line` fields are omitted from normal output. May be overridden by the `GIT_TRACE2_BRIEF` environment variable. Defaults to false",
  ),
  FigSuggestion(
    name: "trace2.normalTarget",
    description:
        "This variable controls the normal target destination. It may be overridden by the `GIT_TRACE2` environment variable. The following table shows possible values",
  ),
  FigSuggestion(
    name: "trace2.perfBrief",
    description:
        "Boolean. When true `time`, `filename`, and `line` fields are omitted from PERF output. May be overridden by the `GIT_TRACE2_PERF_BRIEF` environment variable. Defaults to false",
  ),
  FigSuggestion(
    name: "trace2.perfTarget",
    description:
        "This variable controls the performance target destination. It may be overridden by the `GIT_TRACE2_PERF` environment variable. The following table shows possible values",
  ),
  FigSuggestion(
    name: "transfer.advertiseSID",
    description:
        "Boolean. When true, client and server processes will advertise their unique session IDs to their remote counterpart. Defaults to false",
  ),
  FigSuggestion(
    name: "transfer.credentialsInUrl",
    description:
        "A configured URL can contain plaintext credentials in the form `<protocol>://<user>:<password>@<domain>/<path>`. You may want to warn or forbid the use of such configuration (in favor of using git-credential[1]). This will be used on git-clone[1], git-fetch[1], git-push[1], and any other direct use of the configured URL",
  ),
  FigSuggestion(
    name: "transfer.fsckObjects",
    description:
        "When `fetch.fsckObjects` or `receive.fsckObjects` are not set, the value of this variable is used instead. Defaults to false",
  ),
  FigSuggestion(
    name: "transfer.hideRefs",
    description:
        "String(s) `receive-pack` and `upload-pack` use to decide which refs to omit from their initial advertisements. Use more than one definition to specify multiple prefix strings. A ref that is under the hierarchies listed in the value of this variable is excluded, and is hidden when responding to `git push` or `git fetch`. See `receive.hideRefs` and `uploadpack.hideRefs` for program-specific versions of this config",
  ),
  FigSuggestion(
    name: "transfer.unpackLimit",
    description:
        "When `fetch.unpackLimit` or `receive.unpackLimit` are not set, the value of this variable is used instead. The default value is 100",
  ),
  FigSuggestion(
    name: "uploadarchive.allowUnreachable",
  ),
  FigSuggestion(
    name: "uploadpack.allowAnySHA1InWant",
    description:
        "Allow `upload-pack` to accept a fetch request that asks for any object at all. Defaults to `false`",
  ),
  FigSuggestion(
    name: "uploadpack.allowFilter",
    description:
        "If this option is set, `upload-pack` will support partial clone and partial fetch object filtering",
  ),
  FigSuggestion(
    name: "uploadpack.allowReachableSHA1InWant",
  ),
  FigSuggestion(
    name: "uploadpack.allowRefInWant",
    description:
        "If this option is set, `upload-pack` will support the `ref-in-want` feature of the protocol version 2 `fetch` command. This feature is intended for the benefit of load-balanced servers which may not have the same view of what OIDs their refs point to due to replication delay",
  ),
  FigSuggestion(
    name: "uploadpack.allowTipSHA1InWant",
  ),
  FigSuggestion(
    name: "uploadpack.hideRefs",
    description:
        "This variable is the same as `transfer.hideRefs`, but applies only to `upload-pack` (and so affects only fetches, not pushes). An attempt to fetch a hidden ref by `git fetch` will fail. See also `uploadpack.allowTipSHA1InWant`",
  ),
  FigSuggestion(
    name: "uploadpack.keepAlive",
    description:
        "When `upload-pack` has started `pack-objects`, there may be a quiet period while `pack-objects` prepares the pack. Normally it would output progress information, but if `--quiet` was used for the fetch, `pack-objects` will output nothing at all until the pack data begins. Some clients and networks may consider the server to be hung and give up. Setting this option instructs `upload-pack` to send an empty keepalive packet every `uploadpack.keepAlive` seconds. Setting this option to 0 disables keepalive packets entirely. The default is 5 seconds",
  ),
  FigSuggestion(
    name: "uploadpack.packObjectsHook",
    description:
        "If this option is set, when `upload-pack` would run `git pack-objects` to create a packfile for a client, it will run this shell command instead. The `pack-objects` command and arguments it _would_ have run (including the `git pack-objects` at the beginning) are appended to the shell command. The stdin and stdout of the hook are treated as if `pack-objects` itself was run. I.e., `upload-pack` will feed input intended for `pack-objects` to the hook, and expects a completed packfile on stdout",
  ),
  FigSuggestion(
    name: "uploadpackfilter.<filter>.allow",
    description:
        "Explicitly allow or ban the object filter corresponding to `<filter>`, where `<filter>` may be one of: `blob:none`, `blob:limit`, `object:type`, `tree`, `sparse:oid`, or `combine`. If using combined filters, both `combine` and all of the nested filter kinds must be allowed. Defaults to `uploadpackfilter.allow`",
    insertValue: "uploadpackfilter.{cursor}.allow",
  ),
  FigSuggestion(
    name: "uploadpackfilter.allow",
    description:
        "Provides a default value for unspecified object filters (see: the below configuration variable). If set to `true`, this will also enable all filters which get added in the future. Defaults to `true`",
  ),
  FigSuggestion(
    name: "uploadpackfilter.tree.maxDepth",
    description:
        "Only allow `--filter=tree:<n>` when `<n>` is no more than the value of `uploadpackfilter.tree.maxDepth`. If set, this also implies `uploadpackfilter.tree.allow=true`, unless this configuration variable had already been set. Has no effect if unset",
  ),
  FigSuggestion(
    name: "url.<base>.insteadOf",
    description:
        "Any URL that starts with this value will be rewritten to start, instead, with <base>. In cases where some site serves a large number of repositories, and serves them with multiple access methods, and some users need to use different access methods, this feature allows people to specify any of the equivalent URLs and have Git automatically rewrite the URL to the best alternative for the particular user, even for a never-before-seen repository on the site. When more than one insteadOf strings match a given URL, the longest match is used",
    insertValue: "url.{cursor}.insteadOf",
  ),
  FigSuggestion(
    name: "url.<base>.pushInsteadOf",
    description:
        "Any URL that starts with this value will not be pushed to; instead, it will be rewritten to start with <base>, and the resulting URL will be pushed to. In cases where some site serves a large number of repositories, and serves them with multiple access methods, some of which do not allow push, this feature allows people to specify a pull-only URL and have Git automatically use an appropriate URL to push, even for a never-before-seen repository on the site. When more than one pushInsteadOf strings match a given URL, the longest match is used. If a remote has an explicit pushurl, Git will ignore this setting for that remote",
    insertValue: "url.{cursor}.pushInsteadOf",
  ),
  FigSuggestion(
    name: "user.signingKey",
  ),
  FigSuggestion(
    name: "user.useConfigOnly",
    description:
        "Instruct Git to avoid trying to guess defaults for `user.email` and `user.name`, and instead retrieve the values only from the configuration. For example, if you have multiple email addresses and would like to use a different one for each repository, then with this configuration option set to `true` in the global config along with a name, Git will prompt you to set up an email before making new commits in a newly cloned repository. Defaults to `false`",
  ),
  FigSuggestion(
    name: "versionsort.prereleaseSuffix",
    description:
        "Deprecated alias for `versionsort.suffix`. Ignored if `versionsort.suffix` is set",
    deprecated: true,
    hidden: true,
  ),
  FigSuggestion(
    name: "versionsort.suffix",
  ),
  FigSuggestion(
    name: "web.browser",
    description:
        "Specify a web browser that may be used by some commands. Currently only git-instaweb[1] and git-help[1] may use it",
  ),
  FigSuggestion(
    name: "worktree.guessRemote",
  ),
];

/// Names present in [_configSuggestions], used to filter `git config` output
/// exactly like the source's `configSuggestions.find(({ name }) => ...)`.
final Set<String> _configNames =
    _configSuggestions.map((suggestion) => suggestion.nameSingle ?? '').toSet();

/// Mirrors the `ai()` generator on `git commit -m` (src/git.ts): checks the
/// `fig` AI setting, builds the prompt from `git log` and the message from
/// `git diff --staged`, then requests `/ai/chat` and renders each returned
/// line as a suggestion.
Future<List<FigSuggestion>> _gitCommitMessage(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final settingResult = await executeCommand(const ExecuteCommandInput(
    command: 'fig',
    args: ['settings', '--format', 'json', 'autocomplete.ai.enabled'],
  ));
  if (!_jsonTruthy(settingResult.stdout)) return const [];

  final promptResult = await executeCommand(const ExecuteCommandInput(
    command: 'git',
    args: ['log', '--pretty=format:%s', '--abbrev-commit', '--max-count=20'],
  ));
  final prompt =
      'Generate a git commit message summary based on this git diff, the "summary" must be no more '
      'than 70-75 characters, and it must describe both what the patch changes, as well as why the '
      'patch might be necessary.\n\nHere are some examples from the repo:\n${promptResult.stdout}';

  final messageResult = await executeCommand(const ExecuteCommandInput(
    command: 'git',
    args: ['diff', '--staged'],
  ));
  final message = messageResult.stdout;
  if (message.trim().isEmpty) return const [];

  final body = jsonEncode({
    'model': 'gpt-3.5-turbo',
    'source': 'autocomplete',
    'name': 'git commit -m',
    'messages': [
      {'role': 'system', 'content': prompt},
      {'role': 'user', 'content': message},
    ],
  });
  final requestResult = await executeCommand(ExecuteCommandInput(
    command: 'fig',
    args: [
      '_',
      'request',
      '--route',
      '/ai/chat',
      '--method',
      'POST',
      '--body',
      body,
    ],
  ));
  return _aiResponseSuggestions(requestResult.stdout, '\n');
}

/// The `git config` args[0] `suggestions` field: [_configSuggestions] with a
/// gear icon, mirroring `configSuggestions.map((suggestion) => ({...suggestion,
/// icon: "⚙️"}))`.
Future<List<FigSuggestion>> _gitConfigSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _configSuggestions.map((suggestion) {
    return FigSuggestion(
      name: suggestion.name,
      description: suggestion.description,
      insertValue: suggestion.insertValue,
      hidden: suggestion.hidden,
      deprecated: suggestion.deprecated,
      icon: '⚙️',
    );
  }).toList();
}

/// Parses the `/ai/chat` response and renders each returned message content
/// line as a suggestion, mirroring the tail of the source `ai()` generator.
List<FigSuggestion> _aiResponseSuggestions(String output, String splitOn) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! Map) return const [];
    final choices = decoded['choices'];
    if (choices is! List) return const [];
    final suggestions = <FigSuggestion>[];
    for (final choice in choices) {
      if (choice is! Map) continue;
      final message = choice['message'];
      final content = message is Map ? message['content'] : null;
      if (content is! String) continue;
      for (final part in content.split(splitOn)) {
        if (part.trim().isEmpty) continue;
        final text = part.trim().replaceAll('\n', ' ');
        suggestions.add(FigSuggestion(
          icon: '🪄',
          name: text,
          insertValue: "'$text'",
          description: 'Generated by Fig AI',
        ));
      }
    }
    return suggestions;
  } on FormatException {
    return const [];
  }
}

/// `fig settings --format json autocomplete.ai.enabled` prints a JSON boolean.
/// Any parse failure or `false` disables the AI generator (mirroring
/// `JSON.parse(settingOutput.stdout)` truthiness in the source).
bool _jsonTruthy(String output) {
  final trimmed = output.trim();
  if (trimmed.isEmpty) return false;
  try {
    return jsonDecode(trimmed) as bool;
  } on FormatException {
    return false;
  } catch (_) {
    return false;
  }
}

// ---- Shared `gitGenerators.*` handlers (resolved by the exporter from
// member access such as `gitGenerators.commits`). One handler per generator
// definition; each may be referenced at many JSON call sites. ----

const gitAliasesPostProcessHandler =
    'manual.src_git.definition.gitgenerators.aliases.postprocess';
const gitTreeishPostProcessHandler =
    'manual.src_git.definition.gitgenerators.treeish.postprocess';
const gitRevsPostProcessHandler =
    'manual.src_git.definition.gitgenerators.revs.postprocess';
const gitCommitsPostProcessHandler =
    'manual.src_git.definition.gitgenerators.commits.postprocess';
const gitLocalBranchesPostProcessHandler =
    'manual.src_git.definition.gitgenerators.localbranches.postprocess';
const gitFilesForStagingPostProcessHandler =
    'manual.src_git.definition.gitgenerators.files_for_staging.postprocess';
const gitRemotesPostProcessHandler =
    'manual.src_git.definition.gitgenerators.remotes.postprocess';
const gitRemoteLocalBranchesPostProcessHandler =
    'manual.src_git.definition.gitgenerators.remotelocalbranches.postprocess';
const gitGetChangedTrackedFilesPostProcessHandler =
    'manual.src_git.definition.gitgenerators.getchangedtrackedfiles.postprocess';
const gitGetChangedTrackedFilesScriptHandler =
    'manual.src_git.definition.gitgenerators.getchangedtrackedfiles.script';
const gitStashesPostProcessHandler =
    'manual.src_git.definition.gitgenerators.stashes.postprocess';
const gitTagsPostProcessHandler =
    'manual.src_git.definition.gitgenerators.tags.postprocess';
const gitLocalOrRemoteBranchesCustomHandler =
    'manual.src_git.definition.gitgenerators.localorremotebranches.custom';

/// Strips a leading `warning:`/`error:` line the way `filterMessages` does.
String _gitFilterMessages(String out) {
  if (out.startsWith('warning:') || out.startsWith('error:')) {
    return out.split('\n').skip(1).join('\n');
  }
  return out;
}

String _gitSafeSubstring(String s, int start, [int? end]) {
  if (start >= s.length) return '';
  final stop = end == null ? s.length : (end > s.length ? s.length : end);
  return s.substring(start, stop);
}

/// `postProcessBranches({ insertWithoutRemotes: true })` from src/git.ts.
/// Parses `git branch` output into branch suggestions (current, local, remote).
List<FigSuggestion> _gitPostProcessBranches(String out,
    [List<String>? tokens]) {
  final output = _gitFilterMessages(out);
  if (output.startsWith('fatal:')) return const [];
  final seen = <String>{};
  final result = <FigSuggestion>[];
  for (final rawLine in output.split('\n')) {
    if (rawLine.trim().startsWith('HEAD')) continue;
    var name = rawLine.trim();
    final parts = name.split(RegExp(r'\s+'));
    if (parts.length > 1) {
      if (parts[0] == '*') {
        if (name.contains('HEAD detached')) continue;
        final currentName = name.replaceFirst('*', '').trim();
        if (!seen.add(currentName)) continue;
        result.add(FigSuggestion(
          name: currentName,
          description: 'Current branch',
          priority: 100,
          icon: '⭐️',
        ));
        continue;
      } else if (parts[0] == '+') {
        name = name.replaceFirst('+', '').trim();
      }
    }
    var description = 'Branch';
    if (name.startsWith('remotes/')) {
      final slash = name.indexOf('/', 8);
      if (slash != -1) name = name.substring(slash + 1);
      description = 'Remote branch';
    }
    final space = name.indexOf(' ');
    if (space != -1) name = name.substring(0, space);
    if (seen.add(name)) {
      result.add(FigSuggestion(
        name: name,
        description: description,
        icon: 'fig://icon?type=git',
        priority: 75,
      ));
    }
  }
  return result;
}

/// `postProcessTrackedFiles` from src/git.ts — parses `git status --short`.
List<FigSuggestion> _gitPostProcessTrackedFiles(String out,
    [List<String>? tokens]) {
  final output = _gitFilterMessages(out);
  if (output.startsWith('fatal:')) return const [];
  return output.split('\n').where((l) => l.isNotEmpty).map((file) {
    final arr = file.trim().split(' ');
    final working = arr.isNotEmpty ? arr[0] : '';
    final name = arr.length > 1 ? arr.sublist(1).join(' ').trim() : '';
    var ext = '';
    final dot = name.lastIndexOf('.');
    if (dot != -1) ext = name.substring(dot + 1);
    if (name.endsWith('/')) ext = 'folder';
    return FigSuggestion(
      name: name,
      icon: 'fig://icon?type=$ext&color=ff0000&badge=$working',
      description: 'Changed tracked files',
      priority: (tokens ?? const []).any((t) => t.contains(name)) ? 50 : 100,
    );
  }).toList();
}

/// `commits` / `revs` postProcess — `hash message` lines.
List<FigSuggestion> _gitPostProcessCommits(String out, [List<String>? tokens]) {
  final output = _gitFilterMessages(out);
  if (output.startsWith('fatal:')) return const [];
  return output.split('\n').where((l) => l.isNotEmpty).map((line) {
    final cut = line.length < 7 ? line.length : 7;
    return FigSuggestion(
      name: line.substring(0, cut),
      icon: 'fig://icon?type=node',
      description: _gitSafeSubstring(line, cut),
    );
  }).toList();
}

/// `stashes` postProcess — `stash@{n}: ...` lines.
List<FigSuggestion> _gitPostProcessStashes(String out, [List<String>? tokens]) {
  final output = _gitFilterMessages(out);
  if (output.startsWith('fatal:')) return const [];
  return output.split('\n').where((l) => l.isNotEmpty).map((line) {
    return FigSuggestion(
      name: line.split(':').skip(2).join(':'),
      insertValue: line.split(':').first,
      icon: 'fig://icon?type=node',
    );
  }).toList();
}

/// `tags` postProcess.
List<FigSuggestion> _gitPostProcessTags(String out, [List<String>? tokens]) {
  return out.split('\n').where((l) => l.isNotEmpty).map((tag) {
    return FigSuggestion(name: tag, icon: '🏷️');
  }).toList();
}

/// `remotes` postProcess — parses `git remote -v` into unique remotes.
List<FigSuggestion> _gitPostProcessRemotes(String out, [List<String>? tokens]) {
  final urls = <String, String>{};
  for (final line in out.split('\n')) {
    if (line.isEmpty) continue;
    final pair = line.split('\t');
    if (pair.length < 2) continue;
    final remote = pair[0];
    final url = pair[1].split(' ').first;
    urls[remote] = url;
  }
  return urls.keys.map((remote) {
    final url = urls[remote] ?? '';
    var icon = 'box';
    if (url.contains('github.com')) icon = 'github';
    if (url.contains('gitlab.com')) icon = 'gitlab';
    if (url.contains('heroku.com')) icon = 'heroku';
    return FigSuggestion(
      name: remote,
      icon: 'fig://icon?type=$icon',
      description: 'Remote',
    );
  }).toList();
}

/// `treeish` postProcess — staged files.
List<FigSuggestion> _gitPostProcessTreeish(String out, [List<String>? tokens]) {
  final output = _gitFilterMessages(out);
  if (output.startsWith('fatal:')) return const [];
  final insertSeparator = (tokens ?? const []).contains('--') ? '' : '-- ';
  return output.split('\n').where((l) => l.isNotEmpty).map((file) {
    return FigSuggestion(
      name: file,
      insertValue: '$insertSeparator$file',
      icon: 'fig://icon?type=file',
      description: 'Staged file',
    );
  }).toList();
}

/// `aliases` postProcess — parses `git config --get-regexp ^alias.`.
List<FigSuggestion> _gitPostProcessAliases(String out, [List<String>? tokens]) {
  final seen = <String>{};
  final result = <FigSuggestion>[];
  for (final rawLine in out.split('\n')) {
    if (rawLine.isEmpty) continue;
    final line = rawLine.startsWith('alias.')
        ? rawLine.substring('alias.'.length)
        : rawLine;
    final parts = line.split(' ');
    final name = parts.isNotEmpty ? parts[0] : '';
    final value = parts.length > 1 ? parts.sublist(1).join(' ') : '';
    if (seen.add(name)) {
      result.add(FigSuggestion(
        name: name,
        description: "Alias for '$value'",
        icon: 'fig://icon?type=commandkey',
      ));
    }
  }
  return result;
}

/// `files_for_staging` postProcess — parses `git status --short` into files.
List<FigSuggestion> _gitPostProcessFilesForStaging(String out,
    [List<String>? tokens]) {
  final output = _gitFilterMessages(out);
  if (output.startsWith('fatal:')) return const [];
  final ctx = tokens ?? const <String>[];
  final result = <FigSuggestion>[];
  for (final rawFile in output.split('\n')) {
    if (rawFile.isEmpty) continue;
    final alreadyAdded = ['M', 'A'].contains(rawFile.isEmpty ? '' : rawFile[0]);
    final arr = rawFile.trim().split(' ');
    final working = arr.isNotEmpty ? arr[0] : '';
    var file = arr.length > 1 ? arr.sublist(1).join(' ').trim() : '';
    file = file.replaceAll(RegExp(r'^"|"$'), '');
    final alreadyTyped = ctx.any((c) =>
        c == file ||
        (c.endsWith('*') && file.startsWith(c.substring(0, c.length - 1))) ||
        (c.startsWith('*') && file.endsWith(c.substring(1))));
    if (alreadyTyped) continue;
    var ext = '';
    final dot = file.lastIndexOf('.');
    if (dot != -1) ext = file.substring(dot + 1);
    if (file.endsWith('/')) ext = 'folder';
    result.add(FigSuggestion(
      name: file,
      icon: 'fig://icon?type=$ext&color=ff0000&badge=$working',
      description: 'Changed file',
      priority: alreadyAdded ? 50 : 100,
    ));
  }
  return result;
}

/// `localOrRemoteBranches` custom generator — lists local branches by default,
/// remote branches when `-r` is present.
Future<List<FigSuggestion>> _gitLocalOrRemoteBranches(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final remote = tokens.contains('-r');
  final result = await executeCommand(ExecuteCommandInput(
    command: 'git',
    args: remote
        ? ['--no-optional-locks', '-r', '--no-color', '--sort=-committerdate']
        : [
            '--no-optional-locks',
            'branch',
            '--no-color',
            '--sort=-committerdate'
          ],
  ));
  if (result.status != 0) return const [];
  return _gitPostProcessBranches(result.stdout, tokens);
}

/// `getChangedTrackedFiles.script` — picks the sed pattern based on whether the
/// user asked for staged (`--staged`/`--cached`) or unstaged changes.
List<String> _gitGetChangedTrackedFilesScript(List<String> tokens) {
  final staged = tokens.contains('--staged') || tokens.contains('--cached');
  final sed = staged
      ? r"git --no-optional-locks status --short | sed -ne '/^M /p' -e '/A /p'"
      : r"git --no-optional-locks status --short | sed -ne '/M /p' -e '/A /p'";
  return ['bash', '-c', sed];
}

void registerGitHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(gitGenerateSpecHandler,
      (tokens, executeCommand) async {
    final result = await executeCommand(const ExecuteCommandInput(
      command: 'git',
      args: ['help', '-a'],
    ));
    if (result.status != 0) return null;

    final lines = result.stdout.trim().split('\n');
    final start = lines
        .indexWhere((line) => line.toLowerCase().contains('external commands'));
    if (start < 0) return null;
    final commands = <FigSubcommand>[];
    for (var i = start + 1; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) break;
      final name = line.split(RegExp(r'\s+')).first;
      if (name.isNotEmpty) commands.add(FigSubcommand(name: name));
    }
    return FigSpec(name: 'git', subcommands: commands);
  });

  registry.registerPostProcess(gitConfigPostProcessHandler, (output, [tokens]) {
    return output
        .trim()
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) {
          final separator = line.indexOf(' ');
          final name =
              (separator < 0 ? line : line.substring(0, separator)).trim();
          return FigSuggestion(name: name, icon: '⚙️');
        })
        .where((suggestion) => suggestion.name.isNotEmpty)
        .where((suggestion) {
          final name = suggestion.nameSingle ?? '';
          return name.startsWith('alias.') ||
              name.startsWith('branch.') ||
              name.startsWith('remote.') ||
              !_configNames.contains(name);
        })
        .toList();
  });

  registry.registerAlias(gitAliasHandler, (token, executeCommand) async {
    final result = await executeCommand(ExecuteCommandInput(
      command: 'git',
      args: ['config', '--get', 'alias.$token'],
    ));
    if (result.status != 0) {
      throw StateError('Failed parsing git alias: $token');
    }
    return result.stdout;
  });

  registry.registerCustom(gitCommitMessageHandler, _gitCommitMessage);
  registry.registerCustom(gitConfigSuggestionsHandler, _gitConfigSuggestions);

  // Shared `gitGenerators.*` generators resolved by the exporter.
  registry.registerPostProcess(
      gitAliasesPostProcessHandler, _gitPostProcessAliases);
  registry.registerPostProcess(
      gitTreeishPostProcessHandler, _gitPostProcessTreeish);
  registry.registerPostProcess(
      gitRevsPostProcessHandler, _gitPostProcessCommits);
  registry.registerPostProcess(
      gitCommitsPostProcessHandler, _gitPostProcessCommits);
  registry.registerPostProcess(
      gitLocalBranchesPostProcessHandler, _gitPostProcessBranches);
  registry.registerPostProcess(
      gitRemoteLocalBranchesPostProcessHandler, _gitPostProcessBranches);
  registry.registerPostProcess(
      gitFilesForStagingPostProcessHandler, _gitPostProcessFilesForStaging);
  registry.registerPostProcess(
      gitRemotesPostProcessHandler, _gitPostProcessRemotes);
  registry.registerPostProcess(
      gitGetChangedTrackedFilesPostProcessHandler, _gitPostProcessTrackedFiles);
  registry.registerPostProcess(
      gitStashesPostProcessHandler, _gitPostProcessStashes);
  registry.registerPostProcess(gitTagsPostProcessHandler, _gitPostProcessTags);
  registry.registerScript(
      gitGetChangedTrackedFilesScriptHandler, _gitGetChangedTrackedFilesScript);
  registry.registerCustom(
      gitLocalOrRemoteBranchesCustomHandler, _gitLocalOrRemoteBranches);
}
