# JSON Spec Generation Rules

This document is the required contract for every future TS/JS-to-JSON
conversion. Its purpose is to keep the package JSON-first and prevent a
generated Dart command catalog from returning.

## 1. Source and output

- Canonical migration input is `src/**/*.ts` and `src/**/*.js`.
- Package runtime data is written only under `dart/assets/specs/`.
- A command named `cut` is written to
  `dart/assets/specs/c/cut.json`. The directory is the first ASCII lowercase
  character of the command name.
- `dart/assets/specs/index.json` maps command names and aliases to paths
  relative to `assets/specs/`, for example `"cut": { "file": "c/cut.json" }`.
- `commands/` is not part of the package asset path. Do not introduce it.
- The root-level `json/specs/` directory is exporter output and migration
  evidence. It is not the package asset layout and must not be used as a
  reason to change the package layout.

Every document and the index must declare `schemaVersion: 1`. Generated JSON
must be UTF-8, deterministic, and free of timestamps, absolute paths, and
host-specific values.

## 2. Static values stay JSON

Convert all statically known object data to JSON. This includes command names,
aliases, descriptions, options, subcommands, arguments, suggestions, parser
directives, templates, `loadSpec` links, and script-generator data.

Do not generate `lib/specs/<command>.dart`, an `all_specs.dart` catalog, a
deferred import, or a Dart scaffold for a command whose data is static.

Use the runtime's declarative forms when they express the source exactly:

| TypeScript source | JSON output |
| --- | --- |
| static object/array/string/number/boolean/null | equivalent JSON value |
| `filepaths()` | `"template": "filepaths"` |
| `filepaths({ showFolders: "only" })` | `"template": "folders"` |
| `folders()` | `"template": "folders"` |
| static `script`, `splitOn`, and filter data | equivalent generator fields |
| static `loadSpec` target | JSON command/link value |

The converter must preserve false, zero, empty strings, empty arrays, hidden
suggestions, aliases, and description arrays. A field that cannot be safely
represented is a conversion diagnostic, never a silent omission.

## 3. Dynamic values use handler references

JSON never contains Dart or JavaScript source. When a source field needs code
at suggestion time, emit its static surrounding data plus a stable handler
reference at the exact dynamic field:

```json
{
  "handler": "manual.src_chown.spec.args_0_.generators.custom",
  "version": 1
}
```

Handler IDs are stable, globally unique, and describe the source location and
callback role. Do not rename an existing ID because it is an API between the
JSON document and the host implementation. Change the handler ID or increment
the version only when its input/output semantics change.

The `handler` object may occur at `custom`, `postProcess`, `trigger`, `script`,
`generateSpec`, a dynamic `suggestions`/`generators` value, or a dynamic parser
directive. The field location determines the Dart callback contract; an ID
alone does not change that contract. A `script` handler reference selects a
host-language command producer: it receives the typed token list and returns
the command to run, which the runtime executes through the adapter with the
generator's `splitOn`, timeout, cwd, and environment semantics.

Version detection has its own typed boundary. A root command with source
`createVersionedSpec(...)` emits a `versionedSpec` object with a `getVersion`
handler and ordered `{ "version", "loadSpec" }` entries. Each version entry
points to a separate root document. The runtime selects the closest supported
version, caches the detected version by `cacheKey`, and lazy-loads only that
version document. Do not flatten version names into command names or use a
custom suggestion handler for this operation.

The exporter recognizes literal `createVersionedSpec(command, versionFiles)`
roots. It emits the selector, one `kind: "version"` manifest record for
`getVersionCommand`, and logical index aliases such as `fig/1.0.0`. If a
version source exports a top-level `Fig.Subcommand`, the exporter promotes that
one subcommand to a root JSON document named after `command`; it must never
publish the version string itself as a shell command.

A direct generator identifier, including an imported value such as
`generators: getAppGenerator` or a member expression such as
`generators: generators.apps`, is executable behavior. Export it as one stable
`custom` handler reference per source symbol and retain its representative
call site in the manifest. Never drop it as an unsupported expression.

The same source-symbol rule applies to locally declared generator objects.
When a `const bucketGenerator` is expanded into many command paths, callback
fields inside it use one handler ID rooted at that declaration, not one ID per
expanded JSON path. Inline callbacks remain path-based because their source
location is the call site itself.

Every emitted handler reference must have an entry in the migration manifest
with source file, source expression, callback kind, and implementation status.
The manifest is the work queue for manual ports.

Use `node tools/locate-handler.cjs --id <handler-id> --json` to retrieve one
work item. It reads the manifest and only that source file, returning the
captured callback, source range, relevant imports, and likely local
definitions. Do not read a whole TS file merely to locate one handler.

## 4. Dart handler policy

`dart/lib/autocomplete.dart` is the only public package entry point. Its
opt-in `registerMigratedJsonHandlers` function imports and registers only real,
reviewed implementations stored in `dart/lib/src/spec_handlers/`.

Create `dart/lib/src/spec_handlers/<command>.dart` only when all of the
following are true:

1. The JSON document contains a handler ID for that behavior.
2. The original TS/JS callback has been reviewed.
3. The Dart implementation is complete and has a focused test.
4. The implementation is registered by `registerMigratedJsonHandlers`.

Never generate an empty Dart file, TODO scaffold, or a registration for an
unimplemented handler. Until the port exists, the JSON remains valid and the
handler reference remains in the manifest.

Hosts choose the missing-handler policy:

- Production/strict validation uses `MissingJsonHandlerPolicy.reject`.
- Incremental migration may use `MissingJsonHandlerPolicy.returnEmpty`.
  The unresolved dynamic value returns no suggestions while the rest of the
  static command tree continues to work. Trace or telemetry must record the
  unresolved ID.

Generator-level handler references (`custom`, `postProcess`, `trigger`, and
dynamic `suggestions`) are bound when that generator is actually used, not
while the command JSON tree is decoded. Loading `git.json` for `git b` must
not report an unrelated `git commit` generator. In strict mode, an unported
handler fails at its actual invocation; in migration mode, that invocation
records the ID and returns the typed empty fallback.

This policy is why incomplete dynamic work must not block static commands, but
it is not a substitute for implementing a required handler before a strict
release.

### Dynamic handler priority

The handler manifest is complete inventory, not an implementation schedule.
Prioritize common top-level local commands and reusable behavior. Generated
vendor-cloud catalogs under `src/aws/**`, `src/az/**`, and `src/gcloud/**` are
static-JSON-first: preserve their command structure, versioning, aliases, and
handler references, but defer their custom Dart handlers unless a concrete
user-facing requirement selects one. Their handler counts must not distort the
priority of everyday command completion.

## 5. Loading and packaging

The runtime flow is fixed:

```text
input command
  -> assets/specs/index.json
  -> <first-character>/<command>.json on first use
     (namespaced commands mirror their logical path, e.g. aws/amplify
      -> a/aws/amplify.json, az/2.53.0/account -> a/az/2.53.0/account.json)
  -> handler registry only if that JSON field references a handler
```

`registerJsonSpecs` loads the index only. `JsonSpecStore` loads and caches an
individual command document on demand. There must be no compile-time import
per command.

The package declares `assets/specs/` in `dart/pubspec.yaml`. A CLI reader may
use filesystem I/O; Flutter uses
`rootBundle.loadString('packages/autocomplete/assets/specs/$path')`. The core
library remains independent of `dart:io` and Flutter.

All callers import `package:autocomplete/autocomplete.dart`. A static-only
caller skips `registerMigratedJsonHandlers`; a caller that needs bundled manual
handlers calls it before registering JSON specs.

## 6. Required review and verification

For each converted command:

1. Check the source object against its command JSON: names, descriptions,
   options, args, subcommands, templates, and aliases must match.
2. Check each source callback either became a declarative JSON form or has a
   handler reference and manifest entry.
3. Confirm static commands create no Dart handler file.
4. Add focused tests for representative suggestions and dynamic query behavior
   where applicable. Preserve source semantics such as `getQueryTerm`; it
   affects replacement text and `charactersToDrop`.
5. Run the JSON validator and Dart JSON-spec tests. Package assets use the
   staging handler manifest:
   `node tools/validate-json.cjs dart/assets/specs json/specs/manual-handlers.json`.
6. Run the package example with `--trace` and confirm it reads only
   `index.json` plus the requested command JSON.
7. Run `dart pub publish --dry-run` and verify the command JSON is included.

Before a strict release, run
`node tools/check-conversion-completeness.cjs --release`. This intentionally
fails when a converter diagnostic or unported handler remains; normal mode
verifies the manifest is internally complete while incremental migration is in
progress.

Before replacing a generated catalog, run the non-destructive candidate
pipeline:

```sh
node tools/verify-json-candidate.cjs
```

It exports into a temporary directory, runs JSON/manifest validation, then
runs `check-catalog-regression` against the current `json/specs/`. Do not
write directly to `json/specs/` and do not materialize a candidate that
removes an existing root command without a separate, reviewed migration for
that command. Only a candidate that passes every gate may be rerun into the
official staging directory and materialized into package assets.

This is a catalog-replacement gate, not a per-handler development command.
For one handler or one source exporter change, run the focused source export,
its JSON validation, and the focused Dart test first. When that export changes
one reviewed command, use `tools/accept-json-command-candidate.cjs` to replace
only that document and the manifest records owned by its source file, then
materialize and validate the package assets. It requires the existing and
candidate primary index paths to match; it must not be used for root-index,
alias, collision, or multi-source changes. Those remain full candidate work.

For a dynamic command, also test the registered handler with deterministic
adapter/process input and test strict missing-handler rejection separately.

## 7. Reference slices

```text
src/cd.ts
  -> dart/assets/specs/c/cd.json
  -> template: folders
  -> no Dart handler file

src/cut.ts
  -> dart/assets/specs/c/cut.json
  -> static options and filepaths template
  -> no Dart handler file

src/chown.ts
  -> dart/assets/specs/c/chown.json
  -> manual.src_chown.spec.args_0_.generators.custom
  -> dart/lib/src/spec_handlers/chown.dart
  -> registered by dart/lib/autocomplete.dart

src/az/index.ts
  -> dart/assets/specs/a/az.json (version selector)
  -> manual.src_az.index.getversioncommand
  -> dart/assets/specs/a/az--2.53.0.json
  -> logical version document az/2.53.0
```

`cd`, `cut`, and `chown` are the minimum regression set for this architecture:
static data, declarative filesystem completion, and a real dynamic handler.
