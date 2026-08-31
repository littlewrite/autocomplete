# Model Handoff

Use this document as the entry point for a new model or contributor. It is a
working contract, not background reading. The project is already JSON-first;
do not restart or redesign the migration unless a requirement below is wrong.

## Goal

Convert the upstream Fig TS/JS command catalog into lazily loaded JSON assets.
Static command data belongs in JSON. Dart exists only for genuinely dynamic
behaviour such as shell queries, token-sensitive command construction, version
detection, and post-processing command output.

The package must work in both environments:

- Dart VM hosts can read package assets from the filesystem.
- Flutter hosts provide an asset-bundle reader.
- The core library must not import `dart:io` or Flutter.

This design removes the old problem where Dart had to compile/import a very
large generated command catalog before it could complete one command.

## Architecture That Must Remain True

```text
typed command input
  -> JsonSpecStore reads assets/specs/index.json once
  -> lazy read of assets/specs/<initial>/<command>.json on first use
  -> declarative static suggestions
  -> typed Dart handler only when the selected JSON field requires code
```

- Public package entry point: `dart/lib/autocomplete.dart`.
- JSON parser/store: `dart/lib/src/json_spec.dart`.
- Runtime completion engine: `dart/lib/src/runtime.dart`.
- Reviewed handler implementations: `dart/lib/src/spec_handlers/<command>.dart`.
- Staging/conversion evidence: `json/specs/`.
- Published Dart/Flutter assets: `dart/assets/specs/`.
- Asset paths are `<initial>/<command>.json`, never `commands/<initial>/...`.
- `dart/pubspec.yaml` declares `assets/specs/`, so pub publishing and Flutter
  package assets include the catalog.

`registerJsonSpecs` receives an injected `JsonAssetReader`. A host that needs
dynamic behaviour creates a `JsonHandlerRegistry`, calls
`registerMigratedJsonHandlers`, then registers JSON specs. Static-only hosts
may omit handlers entirely.

## Non-Negotiable Rules

1. Do not restore `dart/lib/specs/**`, `all_specs.dart`, deferred imports, or
   old v1/v2 examples. Their deletion is intentional.
2. Do not put Dart or JavaScript source inside JSON.
3. Do not create empty handler files, TODO handler registrations, or handler
   aliases merely to silence an unresolved message.
4. Preserve every dynamic boundary as a typed `{ "handler": "...", "version": 1 }`
   reference and manifest record until it has a real Dart port.
5. JSON decoder binding is deliberately lazy. A missing handler must fail only
   when the user invokes that field in strict mode. Migration mode records the
   ID and returns typed empty suggestions.
6. Do not scan full TS files to find callbacks. Start with
   `tools/locate-handler.cjs --id <handler-id> --json`, then read only its
   returned source range and minimal dependencies.
7. Do not overwrite the full JSON catalog during normal handler work. Use a
   focused candidate and the targeted acceptance workflow when one reviewed
   command's generated output changes.
8. The worktree is intentionally very dirty because the legacy generated Dart
   catalog was removed. Preserve unrelated changes and never revert broad
   deletions to make local tests look cleaner.

The complete schema and workflow rules are in
[JSON Spec Generation Rules](json-spec-generation-rules.md).

## Priority Policy

Implement in this order:

1. Common standalone local commands and reusable behaviours: package managers,
   filesystem, shell/system tools, `git`, `npm`, `brew`, Docker tooling.
2. Small, frequently used command families with deterministic tests.
3. `src/aws/**`, `src/az/**`, and `src/gcloud/**` only when a concrete product
   requirement names a dynamic behaviour.

Cloud catalogs are already valuable as static JSON. Preserve their structure,
versions, aliases, `loadSpec`, and handler references, but do not spend the
manual-handler budget on them by default. The generated TODO table is sorted
by count, so it is an inventory rather than a priority queue.

## Current Verified State

As of 2026-08-30:

- 1,488 source records and 1,410 root commands.
- 680 unique dynamic handler IDs.
- 385 reviewed Dart handler implementations and 299 explicit TODO IDs.
- `dart/assets/specs/index.json` contains primary commands plus logical
  `loadSpec` aliases for namespaced AWS and versioned Azure documents.
- Dynamic implementations cover ~94 common local commands including `echo`,
  `chown`, `git`, `npm`, `brew`, `docker`, `docker-compose`, `podman`, `apt`,
  `gem`, `conda`, `yarn`, `rustup`, `cargo`, `pip`, `networksetup`,
  `ssh-keygen`, `kubectl`, `taskwarrior`, `react-native`, `pre-commit`, and
  many more. AWS profile selection, Azure/Fig/Heroku version selection, and
  Heroku app generation are also implemented.
- `docker-compose` introduced the typed dynamic-script handler boundary
  (`generators.script`); `xcodeproj`/`oxlint` added the typed
  `filterTemplateSuggestions` boundary. The exporter now captures
  method-shorthand callbacks (`postProcess(out) {...}`) that were previously
  dropped, recovering real behavior in several commands.
- Known framework gaps (audit-only, no registry API yet): whole-`option`
  handler references, `args.loadSpec` handler references, and a
  `subcommands`-array slot handler reference. They parse under the
  `returnEmpty` policy and are recorded in `unresolvedHandlers`.
- The focused accept tool is for single-source commands only. Check
  `conversion-manifest.json` for collisions before accepting; a collided
  command (`spring`) required full reconstruction instead. See the migration
  log.
- A parallel agent workflow ports one command per agent with serial catalog
  updates; see the migration log for the measured outcome of each batch.

Known intentional limitations:

- The strict release gate fails while conversion diagnostics and unported
  handlers remain. This is expected in incremental migration.
- A full-catalog candidate export can take many minutes for large generated
  source files. It is a release/audit operation, not daily handler work.
- Existing `dart analyze` reports legacy `info` diagnostics in runtime/spec
  files; no new analysis errors are accepted.

For history and measured outcomes, read [Migration Log](migration-log.md).

## Required Work Loop

For a normal handler port:

1. Select a command according to the priority policy.
2. Inspect its exact handler ID with `locate-handler.cjs`; do not read the
   whole source catalog.
3. Determine whether the current JSON represents the source exactly. If a
   focused export changes the document or handler IDs, run the targeted
   candidate acceptance flow below before writing Dart.
4. Implement one complete reviewed handler family under `dart/lib/src/spec_handlers/`.
5. Register it only from `registerMigratedJsonHandlers`.
6. Add deterministic tests with fake `ExecuteCommandOutput` or adapter data.
7. Refresh the TODO report and run validation.
8. State in the work report: what changed, what was verified, and what remains.

### Focused Candidate Acceptance

Use this only when one source file produces one existing root command with an
unchanged primary index path:

```sh
node tools/ts-to-json.cjs --file src/<command>.ts --out /tmp/<command>-specs --clean
node tools/validate-json.cjs /tmp/<command>-specs
# Review the JSON and handler-manifest diff before this step.
node tools/accept-json-command-candidate.cjs \
  --candidate /tmp/<command>-specs --command <command>
node tools/validate-json.cjs json/specs
node tools/materialize-json-assets.cjs json/specs dart/assets/specs
node tools/validate-json.cjs dart/assets/specs json/specs/manual-handlers.json
```

Never use this for index changes, aliases, collisions, version selectors, or
multi-source changes. Those require the full candidate workflow documented in
`tools/README.md`.

### Minimum Verification

Run from the repository root unless shown otherwise:

```sh
node tools/test-json-export.cjs
node tools/test-materialize-json-assets.cjs
node tools/test-accept-json-command-candidate.cjs
node tools/validate-json.cjs json/specs
node tools/validate-json.cjs dart/assets/specs json/specs/manual-handlers.json
node tools/report-handler-todo.cjs

cd dart
dart test
dart analyze
dart run example/example.dart --trace '<affected command> '
```

For an implementation intended to be complete, repeat the final CLI test with
`--strict`. The trace must show `index.json` and only the selected command JSON
unless the selected command legitimately activates a `loadSpec` target.

## Next Bounded Task: continue the handler backlog

`mamba` and the subsequent parallel batches are done. Continue porting the
remaining handler backlog from `docs/dynamic-handler-todo.md`, which is the
inventory, not a priority queue. Prefer commands whose focused export collapses
many stale path-based records into a few declaration-based IDs.

Use the established parallel workflow: the coordinator runs the shared-state
steps (focused export -> `tools/accept-json-command-candidate.cjs` ->
materialize) serially, then dispatches one agent per command to write
`dart/lib/src/spec_handlers/<cmd>.dart` and
`dart/test/<cmd>_json_spec_test.dart` (Dart 2.17-compatible only), then
registers each in `registerMigratedJsonHandlers` and runs the tests serially.
Always verify static data is unchanged (or only gains recovered callbacks)
before accepting a candidate.

Do not select a cloud directory (`src/aws/**`, `src/az/**`,
`src/gcloud/**`) as the next task; they stay static-JSON-first.

## Fast Navigation

| Need | File or command |
| --- | --- |
| Public API and handler registration | `dart/lib/autocomplete.dart` |
| JSON schema/parser/handler resolution | `dart/lib/src/json_spec.dart` |
| Script execution and caching | `dart/lib/src/runtime.dart` |
| Dynamic-handler inventory | `docs/dynamic-handler-todo.md` |
| Locate a source callback | `node tools/locate-handler.cjs --id <id> --json` |
| Generator/exporter code | `tools/ts-to-json.cjs`, `tools/converter-engine.cjs` |
| Package CLI verification | `dart/example/example.dart` |
| Detailed process | `docs/handler-porting-workflow.md` |

Every response or work record should say plainly what was completed, what is
still unimplemented, and why the next task was selected.
