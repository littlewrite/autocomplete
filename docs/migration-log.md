# JSON Migration Work Log

## 2026-08-30

### Targeted Homebrew migration

- Added `tools/accept-json-command-candidate.cjs` and a focused regression
  test. It accepts one reviewed focused export without overwriting the full
  catalog: the target command document and only its source-owned
  `manual-handlers.json` entries are atomically replaced. It rejects an index
  path change, so aliases, versions, collisions, and multi-source changes
  remain full-candidate work.
- Re-exported and accepted `src/brew.ts`. The command JSON now retains the
  previously omitted `servicesGenerator(...)` and `repositoriesGenerator()`
  calls, and replaces 23 path-expanded handler IDs with 13 source-stable IDs.
- Implemented all 13 reviewed Homebrew handlers in
  `dart/lib/src/spec_handlers/brew.dart`: installed/outdated formulae,
  formulae/casks, cask uninstall, analytics data choices, services, taps, and
  aliases. They are registered through the public JSON handler entry point.
- Added a deterministic handler/package-asset test and verified a real
  `brew list ` query. It returned 141 suggestions while lazily reading only
  `index.json` and `b/brew.json`.
- Current incremental-migration baseline: 1,410 root commands, 1,442 unique
  handler IDs, 55 reviewed Dart implementations, and 1,387 explicitly
  deferred handlers. Cloud-provider dynamic handlers remain deferred by
  policy; their static JSON command trees stay published.
- Assessed `src/docker-compose.ts` as the next framework-level candidate, but
  deliberately did not port it yet. Its 23 old path-based `script` handlers
  reduce to two source behaviors: build `docker compose` or `docker-compose`
  with any `-f` arguments, then run `config --services` or `config --profiles`.
  The runtime currently accepts only static JSON script strings/arrays, so the
  correct next change is a typed dynamic-script handler boundary plus
  declaration-based exporter deduplication, not 23 temporary Dart aliases.

### Candidate-first conversion pipeline

- Added `tools/verify-json-candidate.cjs`. It exports all source specs into a
  disposable temporary directory, validates JSON and handler references,
  checks conversion-manifest integrity, and rejects root-command regressions
  against the checked-in `json/specs/` catalog. It never writes package assets.
- Updated the required workflow: a reviewed candidate must pass before a
  maintainer can rerun the exporter into `json/specs/` and invoke the
  destructive asset materialization step. The workflow then validates package
  assets, refreshes the handler TODO report, and runs Dart tests. A strict
  production release additionally requires `--release`; incremental migration
  is allowed to retain explicit unresolved handlers under `returnEmpty`.
- Added `--catalog <specs-dir>` to the completeness checker so the candidate's
  own manifest is checked rather than only the checked-in catalog.
- Updated tooling and generation rules with the targeted handler locator
  workflow. Ports start from `manual-handlers.json` and use
  `locate-handler.cjs` to read one callback and its minimal dependencies,
  rather than scanning a whole TS/JS source tree.

### Export audit status

- The prior isolated full-export audit retained all 1,452 existing handler
  IDs, including all 42 implemented Dart handlers, and discovered 422 new
  explicit dynamic boundaries. Versioned roots for `az`, `@usermn/sdc`,
  `infracost`, and `shopify` were corrected in that candidate.
- Its 14 reported root-command gaps are not yet a conversion decision: that
  audit used a 30-second per-file worker timeout. Focused exports proved that
  `fastly` and `mongocli` are valid static roots; the same timeout marked
  several AWS, Azure, and GCloud files as missing. The candidate workflow now
  starts with four workers and a 300-second file limit. A local audit with
  that configuration was stopped after roughly nine minutes while four large
  files were still parsing; it made no catalog changes. Measure or optimize
  that full-export path separately. It must complete before any materialization
  can determine the remaining genuine version/alias migrations.
- Current checked-in baseline: 1,488 source records, 1,410 root commands,
  1,452 dynamic handler IDs, 42 implemented handler IDs, and 1,410 remaining
  TODO handler IDs. Normal completeness validation passes; `--release`
  correctly fails until diagnostics and all dynamic handlers are resolved.
- Updated handler identity for locally declared reusable generators. A callback
  is now identified by its source declaration rather than every JSON expansion
  path. Focused export of `src/aws/s3api.ts` reduces its 97 identical
  `bucketGenerator.postProcess` records to one handler ID:
  `manual.src_aws_s3api.definition.bucketgenerator.postprocess`. A dedicated
  fixture prevents this work-item explosion from returning.
- Deferred JSON generator handler binding until the generator is reached at
  suggestion time. A command document can now load static branches without
  resolving unrelated `custom`, `postProcess`, `trigger`, or dynamic
  `suggestions` handlers. `dart run example/example.dart --trace 'git b'`
  reads only `index.json` and `g/git.json`, returns static branch matches, and
  reports no unrelated commit/config handler TODOs. Strict mode still rejects
  an unknown handler when the caller actually invokes it.

### Handler implementation priority

- Cloud provider directories are deliberately deferred for manual handler
  ports: `src/aws/**`, `src/az/**`, and `src/gcloud/**` remain fully converted
  as static JSON command trees with explicit dynamic references, but their
  custom functions are not a near-term migration target. This prevents large,
  less frequently used generated catalogs from consuming the handler budget.
- Future handler work prioritizes common standalone commands and reusable
  local behavior. `docs/dynamic-handler-todo.md` is a count-sorted inventory,
  not a recommended work queue; its AWS/Azure/GCloud entries may remain TODO
  until a concrete product need selects them.

## 2026-08-29

### JSON asset vertical slice

### Full package catalog and v3 entry

- Refreshed the complete export after preserving callback-factory calls such as
  `createNpmSearchHandler()`. The package now has 1,406 indexed commands;
  1,197 documents are fully static and 208 contain explicit dynamic references.
  The manifest records 1,447 references, rather than silently omitting a
  dynamic callback.
- Completed the npm dynamic slice in `lib/src/spec_handlers/npm.dart`: package
  search/version lookup, workspace names, dependency names, `npm run` script
  processing, and the five source `trigger` callbacks are registered under the
  IDs emitted by the JSON exporter. `npm install <query>` and `npm run` now
  activate in strict mode without unresolved npm handler diagnostics.
- Extended the existing Git slice with `parserDirectives.alias`, implemented as
  `git config --get alias.<token>`. Git's remaining two explicit migration
  items are the opt-in commit-message AI generator and a static
  `configSuggestions.map(...)` expression that should be lowered into JSON by
  a later exporter pass rather than reimplemented as a Dart handler.
- Added logical `loadSpec` aliases during asset materialization. Namespaced
  AWS and versioned Azure links now resolve to their flat JSON assets, including
  deterministic collision documents; `aws accessanalyzer` and `az account`
  were verified with lazy-read traces. The package index now contains 1,406
  primary commands plus 716 logical aliases. The package contains 1,452
  command JSON documents, including the required collision documents.
- Ported the AWS profile post-processor from `src/aws.ts` to
  `lib/src/spec_handlers/aws.dart`. It trims blank output lines and preserves
  the source profile suggestion icon under the stable handler ID.
- Added JSON-native versioned root support and migrated `az`. Its root selector
  calls the typed `manual.src_az.index.getversioncommand` handler, then lazy
  loads `az/2.53.0`; both the detected version and version document are cached.
  This mirrors the source `createVersionedSpec` behavior without Dart imports.
- Extended the exporter to recognize literal `createVersionedSpec(...)` roots.
  Migrated `fig` through that path: `fig --version` selects either `1.0.0` or
  `2.0.0`, and version files that export `Fig.Subcommand` are normalized to
  root `fig` JSON documents. The selector is strict-mode ready; three nested
  Fig dynamic generators remain explicitly tracked for a later handler pass.
- Taught the exporter to preserve imported direct generator values as shared
  custom-handler references instead of dropping them. This enabled the
  `heroku` migration: its `8.0.0` and `8.6.0` roots are selected from
  `heroku --version`, while their repeated `getAppGenerator` references share
  one Dart implementation per version document.
- Consolidated the public API to `package:autocomplete/autocomplete.dart`.
  `lib/spec_handlers.dart` was removed; internal implementations remain under
  `lib/src/spec_handlers/`, and `registerMigratedJsonHandlers` is opt-in from
  the sole public entry point.
- Added `tools/report-handler-todo.cjs`, which reads the existing manifest and
  Dart handler sources without rerunning the slow exporter. Its generated
  report is `docs/dynamic-handler-todo.md` and currently identifies 38
  implemented IDs and 1,410 remaining IDs.
- Added a typed `JsonTriggerHandler` registry boundary. A function-valued JSON
  `trigger` now resolves independently of `custom`; this keeps function
  signatures explicit and prevents a trigger from being silently stripped in
  migration mode. Generator-level trigger callbacks are preserved and
  registered, but are not yet an independent runtime execution gate; the
  current query-scope cache handles the npm package/version refresh boundary.

- Materialized all 1,406 indexed command documents into
  `dart/assets/specs/<initial>/...`; the package index contains only package
  asset paths and no `commands/` segment.
- The complete package catalog currently contains 1,197 command documents with
  no handler reference and 208 documents with one or more dynamic references.
  All 1,447 references are recorded in `json/specs/manual-handlers.json`; only
  reviewed implementations are registered from `lib/src/spec_handlers/`.
- Added `tools/materialize-json-assets.cjs` to make this package layout from
  the exporter staging output deterministically. The staging manifest remains
  outside the package and is passed to validation when checking handler IDs.
- Replaced the legacy examples with `dart/example/example.dart`, the v3 CLI
  entry. It loads package assets, supports `--trace`, `--strict`, and
  `--shell`, and reports unresolved handlers in migration mode.
- The TS exporter now lowers `filepaths({ showFolders: "only" })` to a JSON
  folders template. It also preserves static extension/match/equals options in
  the runtime's declarative template descriptor.

- Moved the runnable package slice under `dart/assets/specs/`, which is
  declared in `dart/pubspec.yaml`. It therefore works through filesystem I/O
  on the Dart VM, `rootBundle` in Flutter, and is included by `pub publish`.
- Added real `cut`, `cd`, and `chown` command documents to the package asset
  index. `JsonSpecStore` reads only `index.json` at registration and then the
  command document requested by the user.
- `cd.ts` uses `filepaths({ showFolders: "only" })`. The generic TS exporter
  had omitted this imported generator; it is losslessly represented in JSON as
  `args.template: "folders"`, with the source hidden `-` and `~` suggestions
  preserved.
- `chown.ts` keeps the custom generator as the stable JSON handler ID
  `manual.src_chown.spec.args_0_.generators.custom`. Its Dart implementation
  lives in `dart/lib/src/spec_handlers/chown.dart`; it retains the source's macOS
  `dscl` queries and the `:` / `-n` behavior. On hosts without `dscl`, its
  dynamic suggestions are empty while static completion remains usable.
- Reviewed `inshellcmd`: its `specSet` index plus dynamic `import()` and
  `loadedSpecs` cache maps directly to our JSON `index.json`, on-demand asset
  reader, and loaded-spec cache. JSON replaces module code as the transport;
  only explicit handler IDs execute Dart code.
- Finalized the package asset layout as `assets/specs/<first-character>/<command>.json`;
  the former `commands/` directory is not part of the package contract.
- Removed generated dynamic-handler scaffolds. Completed implementations live
  in `lib/src/spec_handlers/`; the former separate `lib/spec_handlers.dart`
  public entry was later folded into `lib/autocomplete.dart`.
- Removed tests that directly imported the deleted Dart command catalog. JSON
  tests now cover the package asset path and dynamic handler boundary.
- Fixed the JSON reader for arrays of declarative template descriptors. A
  template list may now combine strings and descriptors such as filtered
  `filepaths` entries without losing map fields during parsing; a focused test
  covers extensions, regex matching, and folder equality filters.
- Verified the complete package catalog with the JSON validator, all 118 Dart
  tests, and the v3 CLI for `cut`, `cd`, `chown`, and `git`. Each CLI trace
  read only `index.json` plus the requested command JSON. `dart pub publish
  --dry-run` includes the catalog and produces a 7 MB compressed archive.

## 2026-08-28

### Completed

- Rebuilt `json/specs/` directly from all 1,488 files under `src/`. The new
  JSON-only baseline has 1,404 indexed commands, 1,449 command documents
  (including 45 deterministic collision documents), and 1,372 dynamic handler
  records. `tools/validate-json.cjs` confirms every indexed file and handler
  reference is present.
- Removed the generated Dart command catalog from the public loading path.
  `registerJsonSpecs(...)` is now the JSON-first registration API: it reads the
  small index once, then reads only the requested command's JSON file.
- The JSON exporter now resolves static object spreads before applying local
  overrides. This preserves reusable TS definitions such as `...lts` in the
  JSON output instead of silently dropping their fields.

- Added gradual-migration handling for unported dynamic functions. The
  JSON-first CLI uses `MissingJsonHandlerPolicy.returnEmpty`: a missing handler
  yields no dynamic results while static JSON suggestions remain usable. The
  `--trace` output records every handler ID and exact JSON path that used this
  fallback.
- Added typed JSON handler resolution for `custom`, `postProcess`, root and
  subcommand `generateSpec`, and `parserDirectives.alias`. A direct dynamic
  `suggestions` or `generators` value is adapted to an empty custom generator
  until its Dart implementation is registered under the same stable ID.
- Verified the real `git` JSON document now loads in migration mode: `git b`
  returns its static subcommands while reporting its three remaining dynamic
  handler references. The JSON parser test suite now has 10 passing tests.

- Fixed the balanced-source scanner used by the exporter. Template literals now
  ignore braces in their text and correctly track nested `${...}` expressions;
  comments and nested `()[]{}` are also handled while locating a root object.
- The previous export counts are superseded by the JSON-only baseline above.
- Added `tools/test-json-export.cjs`, a standard-library regression test that
  exports `git`, `bun`, and `echo`, checks that large roots are not truncated,
  and verifies dynamic handler references and source records are present.
- Added the first `git` runtime slice in
  `dart/lib/src/spec_handlers/git.dart`: root `generateSpec` and the
  configuration post-processor are now real Dart handlers and are registered
  alongside `echo`.
- Strengthened `tools/validate-json.cjs` to verify every emitted handler
  reference resolves to a complete source record, then added unit coverage for
  the `git` handlers in `dart/test/json_spec_test.dart`.
- The former JSON migration example was later replaced by the package-backed
  v3 `example/example.dart` entry.
- Fixed JSON root description parsing: string-array descriptions are now
  normalised into the Dart `String` representation using newline joins.
- Restored the local Dart dependency cache with `dart pub get`; the JSON
  parser and handler test file now runs successfully (`7` tests). The focused
  JSON-first CLI checks passed for `astro d` and `echo $HOME`.

- Defined the versioned JSON spec/index schemas and the handler reference
  protocol.
- Added `figSpecFromJson` and `JsonSpecStore` with injected asset I/O, index
  caching, command-level lazy loading, aliases, and registry integration.
- Added `registerJsonSpecs(...)` as an explicit public entry point.
- Added an optional fallback loader to `JsonSpecStore`; callers can register
  legacy Dart specs first and let JSON take precedence only for migrated names.
- Ported the first real dynamic handler (`echo` environment variables) and
  added `registerMigratedJsonHandlers(...)` as the explicit handler boundary.
- Added `dart/example/register_json_specs.dart` showing a VM filesystem reader.
- Added the TS/JS exporter, deterministic command documents, dynamic handler
  manifest, collision handling, and the JSON
  validator.
- The previous export produced 1,436 JSON command documents and 1,178 handler
  records; those counts were based on the truncated scanner and are superseded
  by the corrected export above.
- Verified all generated JSON documents parse and the validator passes.
- Measured JSON parsing at roughly 76 microseconds per spec and cached loading
  at roughly 4.7 microseconds per call in the benchmark fixture.

### Known limits

- 389 source files still require manual work. Their unsupported expressions,
  timeouts, and handler source are recorded in
  `json/specs/conversion-manifest.json` and `json/specs/manual-handlers.json`.
- Five very large files still exceed the current 120-second exporter
  protection threshold. They remain explicitly reported instead of producing
  incomplete JSON.
- Dynamic handler records remain in the manifest until a real implementation
  is ported. The package deliberately contains no generated Dart scaffolds.
- `git` is usable in the JSON-first migration CLI, but two handler IDs still
  return empty results until ported. Strict mode continues to reject those
  missing implementations, so CI can prevent an incomplete cutover.
- The package no longer ships the Dart command catalog. JSON assets are the
  supported command data path.
- The full Dart test suite passes without legacy catalog tests.

### Next checkpoint

1. Port the next high-reuse post-process family from the generated TODO report.
2. Add JSON-vs-source golden suggestion parity tests for each completed family.
3. Define the JSON version-selection field and typed resolver before exporting a
   second `az` version.
4. Measure cold-start, first suggestion latency, and loaded-spec cache size on
   CLI and Flutter asset readers.

### Dynamic script boundary and docker-compose migration

- Added a typed dynamic-script handler boundary. `dart/lib/src/json_spec.dart`
  now defines `JsonScriptHandler`, `registerScript`/`resolveScript`, a deferred
  script handler factory, and accepts a handler reference at `generators.script`
  (static string/array scripts remain valid). `dart/lib/src/runtime.dart`
  resolves the deferred handler lazily, runs the produced command through the
  adapter, and preserves `splitOn`, timeout, cwd, and environment semantics.
- Updated `tools/ts-to-json.cjs`: `script` is a recognized callback kind, and
  function-valued fields now forward the declaration `stablePath` when they
  resolve inside a locally declared generator object. A focused
  `src/docker-compose.ts` export now emits 2 declaration-based IDs
  (`definition.servicesgenerator.script`,
  `definition.profilesgenerator.script`) instead of 23 path-based IDs.
- Accepted the focused docker-compose candidate and materialized the package
  assets. The staging manifest dropped from 1,442 to 1,421 unique handler IDs.
- Implemented `dart/lib/src/spec_handlers/docker_compose.dart` with the two
  script handlers (services + profiles), registered through the public JSON
  handler entry point. Added a deterministic JSON/parser/adapter test suite.
- Verified real CLI paths: `docker-compose up ` suggested the service list and
  `docker-compose --profile ` suggested the enabled profiles, reading only
  `index.json` and `d/docker-compose.json`. Full `dart test` is 129 passing;
  `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 1,421 unique
  handler IDs, 57 reviewed Dart implementations, and 1,364 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.
- Next bounded task: port `src/apt.ts` (7 custom + 7 function TODO records)
  as a common local package manager; see `docs/model-handoff.md`.

### Package-manager slices: apt, gem, conda

- Ported `src/apt.ts`: the shared `packages` generator (custom + trigger) and
  the `installedPackages`/`upgradablePackages` post-processors. A focused
  export collapsed 18 stale path-based records into 4 declaration-based IDs
  (`definition.packages.custom`, `definition.packages.trigger`,
  `definition.installedpackages.postprocess`,
  `definition.upgradablepackages.postprocess`). Implemented
  `dart/lib/src/spec_handlers/apt.dart` with the apt-list package search and
  both post-processors, plus a focused JSON/adapter test suite.
- Ported `src/gem.ts`: the shared `gems` generator (custom + trigger). A
  focused export collapsed 30 path-based records into 2 declaration-based IDs
  (`definition.gems.custom`, `definition.gems.trigger`). Implemented
  `dart/lib/src/spec_handlers/gem.dart`; the real `gem install da ` CLI query
  returned 8,277 suggestions from the live RubyGems registry.
- Ported `src/conda.ts`: three shared post-processors. A focused export
  collapsed 8 path-based records into 3 declaration-based IDs
  (`definition.getinstalledpackages.postprocess`,
  `definition.getcondaenvironments.postprocess`,
  `definition.getcondaconfigs.postprocess`). Implemented
  `dart/lib/src/spec_handlers/conda.dart`; the real `conda remove ` CLI query
  returned 525 installed packages.
- All three used `tools/accept-json-command-candidate.cjs` after a reviewed
  focused export, then materialized package assets. Full `dart test` is 143
  passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 1,374 unique
  handler IDs, 66 reviewed Dart implementations, and 1,308 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.
- Next bounded task: port `src/systemctl.ts` (30 custom TODO records), the
  common Linux service manager; see `docs/model-handoff.md`.

### systemctl slice

- Ported `src/systemctl.ts`: two shared `custom` generators
  (`unitGenerator` for `list-units`, `unitFileGenerator` for
  `list-unit-files`) that query systemd as JSON, map status/state to emoji and
  capitalized descriptions, and sort by name. A focused export collapsed 30
  stale path-based records into 2 declaration-based IDs
  (`definition.unitgenerator.custom`, `definition.unitfilegenerator.custom`).
- Implemented `dart/lib/src/spec_handlers/systemctl.dart` and registered it
  through the public JSON handler entry point. A `--user` flag already on the
  command line is forwarded to the systemctl query.
- Added a deterministic JSON/adapter test suite. On macOS the `systemctl`
  binary is absent, so the real CLI resolves the handlers without error and
  returns no suggestions; handler logic is covered by the deterministic tests.
- Full `dart test` is 148 passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 1,346 unique
  handler IDs, 68 reviewed Dart implementations, and 1,278 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.
- Next bounded task: port `src/mamba.ts` (10 stale records → 3 declaration IDs,
  including one dynamic `script` handler); see `docs/model-handoff.md`.

### Parallel handler-porting batches

- Introduced a parallel workflow: the coordinator (main loop) serializes the
  shared-state steps (focused export -> accept -> materialize) while
  independent agents implement one command's handler + test files in parallel.
  Agents write only their own `dart/lib/src/spec_handlers/<cmd>.dart` and
  `dart/test/<cmd>_json_spec_test.dart`; the coordinator registers each in
  `autocomplete.dart` and runs the tests serially to avoid build-cache races.
- Fixed the exporter to capture method-shorthand callbacks
  (`postProcess(out) {...}`), which `parseProperties` was silently dropping.
  This recovered previously lost behavior, e.g. mamba's `conda search` post
  processor and rush's npm-search custom generator.
- Fixed the Dart 2.17 language-version constraint issues in agent output
  (records syntax in flyctl, unescaped `$1` in ollama test), and added a
  language-version note to agent instructions.
- Ported handler families for: mamba, gpg, jenv, k3d, flyctl, tsh, doppler,
  trivy, cf, copilot, pulumi, arduino-cli, watson, cordova, robot, rush, kind,
  tmuxinator, pass, defaults, fnm, wd, ollama, meteor, launchctl, n, eb,
  snaplet. Every port follows the focused candidate acceptance flow.
- Full `dart test` is 370 passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 809 unique
  handler IDs, 134 reviewed Dart implementations, and 675 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.
- Next candidates continue from the TODO inventory
  (`docs/dynamic-handler-todo.md`), preferring commands whose focused export
  collapses many path-based records into a few declaration-based IDs.

### Continued parallel batches through 213 implemented handlers

- Ported handler families for: amplify, projj, dapr, xcodes, okteto, elm-json,
  goto, assimp, oxlint, kubectx, rich, pnpm, bazel, nextflow, lsof, tldr
  (plus make/pipx/rubocop/yalc from the previous entry). Each follows the same
  workflow: focused export -> review -> accept -> materialize -> agent port ->
  register -> serial test.
- Added the `filterTemplateSuggestions` handler boundary to the JSON parser,
  registry, and runtime (typed filter callbacks on template generators),
  analogous to the earlier dynamic-script boundary. oxlint and xcodeproj use it.
- The exporter's method-shorthand fix recovered previously lost `custom`
  generators in pnpm (npm scripts), react-native, bun, nextflow (projectname),
  and others; each recovery is a real behavior improvement, not an ID rename.
- Full `dart test` is 609 passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 723 unique
  handler IDs, 213 reviewed Dart implementations, and 510 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.

### Continued batches through 278 implemented handlers

- Ported handler families for: terragrunt, bundle, zellij, rclone, trex, vr,
  envchain, dcli, docker, podman, fin, networksetup, yarn, scc (plus the
  trex/vr/envchain/dcli and docker/podman/fin batches). Docker and podman each
  recovered 11 and 5 shared docker-generator custom handlers respectively;
  networksetup collapsed 74 path-based records into 7 declaration-based
  post-processors.
- Fixed a catalog collision: `spring` is primarily the AZ cloud command
  (`src/az/2.53.0/spring.ts`, static); `src/spring.ts` is the collision source
  (`spring--spring.json`). The focused accept tool is not for collisions, so
  spring's files were reconstructed rather than ported. This is documented as
  a caution: check `conversion-manifest.json` collisions before accepting.
- yarn added the broadest handler mix yet: generateSpec, generateSubcommand,
  custom, postProcess, dynamic script, and alias handlers. One `args.loadSpec`
  handler reference has no registry API yet and stays audit-only.
- Full `dart test` is 763 passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 667 unique
  handler IDs, 278 reviewed Dart implementations, and 389 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.

### Continued batches through 367 implemented handlers

- Ported handler families for: scarb, bat, ffmpeg, ssh-keygen, expressots,
  kill, killall, kubectl, fisher, iconv, ignite-cli, ipatool, keytool, kitty,
  kubens, mgnl. The inline commands (scarb/bat/ffmpeg/ssh-keygen) were
  already current in the catalog, so no focused acceptance was needed.
- Noted two framework boundaries with no registry API yet: whole-`option`
  handler references (killall signals, keytool options, ssh-keygen
  `exclusiveOn`, kitty `+kitten` subcommands array) and `args.loadSpec`
  handler references (yarn). These are audit-only: they parse under the
  `returnEmpty` policy, are recorded in `unresolvedHandlers`, and their
  handlers are registered as custom where practical.
- Full `dart test` is 900 passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 680 unique
  handler IDs, 367 reviewed Dart implementations, and 313 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.

### Continued batches through 385 implemented handlers

- Ported handler families for: mount, ng, pyenv, quickmail, mix, pre-commit,
  rancher (plus the earlier fisher/iconv/ignite-cli/ipatool batch). mix and
  pre-commit required focused acceptance; the rest were already current.
- Faithful ports of the source revealed a few quirks preserved deliberately:
  rancher's `serverList` names suggestions by the URL column when the CURRENT
  column is empty (matching the source's `match(/\S+/g)[1]`); git-style `revs`
  post-processing truncates names to 7 characters.
- Full `dart test` is 952 passing; `dart analyze` reports no new diagnostics.
- Incremental-migration baseline is now 1,410 root commands, 680 unique
  handler IDs, 385 reviewed Dart implementations, and 299 deferred handlers.
  Cloud-provider dynamic handlers remain deferred by policy.

### Structural-slot framework support completes the shipped-catalog migration

- Added the last framework gaps to `json_spec.dart`/`runtime.dart`:
  whole-`options`, whole-`subcommands`, and `args.loadSpec` handler refs
  (eager parse-time resolution for the static whole-slot lists, deferred
  function-valued `loadSpec` with an `isCommand` fallback), plus per-item
  handler refs in `options[i]`/`subcommands[i]` lists (spliced via the same
  registry API). Under `returnEmpty`, whole-slot refs are now recognized as
  supported; per-item refs stay stripped unless registered.
- Implemented and registered the final shipped handlers: bun root `options`
  (inspect/hot/watch filter), bun + yarn `create-*` `loadSpec`, bun
  `create-*` template suggestions, ruff root `options` (`isPersistent`),
  sequelize whole `subcommands`, limactl `completion` subcommands,
  shortcuts `help` subcommands, and kitty `+` subcommands (icat + kittens).
- The authoritative diff (handler refs walked from every shipped asset vs.
  `allRegisteredIds()`) is now **0 unregistered refs**.
- `tools/report-handler-todo.cjs` now distinguishes exporter-inlined helpers
  (not referenced by any shipped asset) from genuine gaps: **todo = 0**,
  with 637 implemented + 63 inlined.
- Full `dart test` is 1560 passing; `dart analyze` reports no new diagnostics.

### Deferred-import lazy handler loading

- Added `dart/lib/src/spec_handlers/handler_index.dart` (generated by
  `tools/build-handler-index.cjs`): every migrated handler library is a
  DEFERRED import; a command's handlers are `loadLibrary()`ed and registered
  on demand, right when that command's JSON spec is first loaded.
- `registerJsonSpecs(reader, handlers, lazyHandlers: true)` wires the store to
  register each command's handlers lazily via `registerCommandHandlers`. The
  default stays eager (`lazyHandlers: false`) for backward compatibility.
- `registerMigratedJsonHandlers` is now `Future<void>` (loads + registers every
  shipped-referenced handler library); the 3 test callers and the
  `dump_registered_ids` tool now `await` it.
- Removed the 214 eager `import 'src/spec_handlers/*.dart'` lines from
  `autocomplete.dart`. The authoritative diff is unchanged: 637 registered
  IDs, 0 unregistered shipped refs.
- Also hardened the runtime so a missing-handler parse error degrades to "no
  suggestions" instead of surfacing to the shell user (log only):
  `_doGetSuggestions` returns null on error and `_runSuggestionRequest`
  completes final(null) instead of completeError.
- Full `dart test` is 1562 passing; `dart analyze` clean; `git diff --check` clean.

### Namespaced asset layout (Option B) + collision-resolution fix

- `assets/specs/` now mirrors logical structure: flat commands stay at
  `<first-character>/<command>.json`, namespaced docs move under a matching
  subdirectory (`a/aws/amplify.json`, `a/az/2.53.0/account.json`,
  `g/gcloud/artifacts.json`). The 50 mangled collision filenames
  (`amplify--aws_amplify.json` style) are gone.
- `tools/materialize-json-assets.cjs` decodes the exporter's mangled collision
  names back to namespace paths and relocates them; it also verifies every
  index entry resolves and warns (not fails) on pre-existing loadSpec gaps.
- `tools/ts-to-json.cjs` `collisionOutputPath`/`versionedOutputPath` now emit
  clean namespace paths for future exports.
- **Fixed a latent resolution bug**: `resolveNamespacedAsset` now prefers the
  distinct namespaced doc before falling back to the flat doc. Previously
  `aws/amplify` resolved to the Amplify CLI spec; it now loads the AWS Amplify
  service spec (same for ~20 gcloud collisions). Regression test added.
- The catalog has 24 pre-existing loadSpec gaps (dotnet/dotnet-*, gcloud/alpha,
  gcloud/beta, gcloud/compute, flutter, az/2.53.0/network) whose sub-spec
  sources are absent; these were unresolvable before and are unaffected.
- Authoritative diff unchanged (0 unregistered, 637 registered); `dart test`
  now 1562 passing (3 test files updated to new asset paths, 1 regression test
  added); `dart analyze` clean.
