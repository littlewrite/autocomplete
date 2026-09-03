# JSON Spec Tooling

This repository is JSON-first. Do not use the old TS-to-Dart converters or
generate `dart/lib/specs/` files. The only publishable command data is under
`dart/assets/specs/`.

The complete conversion rules are in
[`docs/json-spec-generation-rules.md`](../docs/json-spec-generation-rules.md).
New contributors or AI sessions should start with
[`docs/model-handoff.md`](../docs/model-handoff.md) and the documentation map.

## Pipeline

```text
src/**/*.ts, src/**/*.js
  -> tools/ts-to-json.cjs
  -> json/specs/ (conversion evidence, diagnostics, handler manifest)
  -> tools/materialize-json-assets.cjs
  -> dart/assets/specs/ (runtime and pub/Flutter assets)
```

`json/specs/` retains source records and deterministic collision documents.
It is not the package asset layout. The materialization step writes only the
addressable command documents and changes paths from
`commands/c/cut.json` to `c/cut.json`.

To audit the runtime binding chain without exporting anything, run:

```bash
node tools/audit-json-handlers.cjs
node tools/audit-json-handlers.cjs --strict  # CI/release gate
node tools/check-load-spec-links.cjs         # every static loadSpec resolves
```

The audit combines the long-lived handler manifest with the focused conversion
manifest, and keeps missing evidence separate from unregistered Dart handlers.

## Required candidate workflow

Never write a full export directly to `json/specs/`. First create and verify a
disposable candidate. This command does not modify `json/specs/` or
`dart/assets/specs/`:

```bash
node tools/verify-json-candidate.cjs
```

Run this only when replacing the complete catalog or auditing a converter
change. It is intentionally a full-source operation and is not part of the
per-handler development loop.

The candidate workflow runs these gates in order:

```text
src/**/*.ts, src/**/*.js
  -> temporary candidate/specs
  -> JSON schema and handler-reference validation
  -> conversion-manifest completeness check
  -> root-command catalog regression check against json/specs/
  -> only then: approved replacement and asset materialization
```

The final regression gate prevents a newer exporter from silently losing a
command already published in the catalog. A failing candidate is evidence to
fix; do not whitelist it or materialize it merely to make the pipeline green.

When the candidate passes and its diff has been reviewed, run the following
explicit catalog-replacement step from the repository root:

```bash
node tools/ts-to-json.cjs --src src --out json/specs --clean --jobs 4 \
  --file-timeout-ms 300000
node tools/validate-json.cjs json/specs
node tools/check-conversion-completeness.cjs
node tools/materialize-json-assets.cjs json/specs dart/assets/specs
node tools/validate-json.cjs dart/assets/specs json/specs/manual-handlers.json
node tools/report-handler-todo.cjs
cd dart && dart test
```

`tools/materialize-json-assets.cjs` replaces its output directory. It is
therefore a release operation, never a candidate-validation step.

The candidate defaults are deliberately `--jobs 4` and a 300-second file
limit. Very large generated specs become slower under eight simultaneous
parsers and can produce timeout records that look like missing commands.
Treat these as conservative starting values; record the measured result before
changing them for a target machine.

For a strict production release, add this gate before materialization:

```bash
node tools/check-conversion-completeness.cjs --release
```

It intentionally fails while conversion diagnostics or unported handlers
remain. Incremental migration may materialize a reviewed catalog with normal
completeness validation only, provided the runtime uses the explicit
`returnEmpty` missing-handler policy and records unresolved IDs.

The exporter records every dynamic callback in `manual-handlers.json`. By
default it does not touch Dart sources. For batch migration, pass
`--handlers-out <dir>` to emit one reviewable scaffold per source file; each
entry includes the stable handler ID, source expression, and its
`lineStart`/`lineEnd` range. Existing hand-edited scaffolds are skipped unless
`--overwrite-generated-handlers` is given.

## Focused conversion

To inspect a small source slice without replacing the complete staging output:

```bash
node tools/ts-to-json.cjs --file src/chown.ts --out /tmp/chown-specs
node tools/validate-json.cjs /tmp/chown-specs
```

Use this path for a handler port or a source-specific exporter change. Its
focused tests and the associated Dart handler test are the daily development
gate; the full candidate gate remains required before replacing the catalog.

When the focused export deliberately changes one command document, review its
diff and accept only that command with the guarded merge tool. It replaces the
document and only the handler-manifest records owned by that source file; it
does not touch the index or unrelated handlers:

```bash
node tools/ts-to-json.cjs --file src/brew.ts --out /tmp/brew-specs --clean
node tools/validate-json.cjs /tmp/brew-specs
node tools/accept-json-command-candidate.cjs \
  --candidate /tmp/brew-specs --command brew
node tools/validate-json.cjs json/specs
node tools/materialize-json-assets.cjs json/specs dart/assets/specs
node tools/validate-json.cjs dart/assets/specs json/specs/manual-handlers.json
```

Use this only for a reviewed one-source change whose command keeps the same
primary index path. A full catalog replacement still requires
`verify-json-candidate.cjs`.

### Recovering static `loadSpec` children

When a root JSON document already links to a namespaced TypeScript child that
was not materialized, use the guarded batch recovery tool. It only accepts
exports with no diagnostics and no dynamic handler references, so it cannot
accidentally publish a JSON document whose handlers have not been registered:

```bash
node tools/recover-static-load-specs.cjs --dry-run \
  --entry dotnet/dotnet-build=src/dotnet/dotnet-build.ts \
  --entry dotnet/dotnet-clean=src/dotnet/dotnet-clean.ts
node tools/recover-static-load-specs.cjs \
  --entry dotnet/dotnet-build=src/dotnet/dotnet-build.ts \
  --entry dotnet/dotnet-clean=src/dotnet/dotnet-clean.ts
node tools/materialize-json-assets.cjs json/specs dart/assets/specs
node tools/check-load-spec-links.cjs
```

Sources that produce a conversion diagnostic or handler reference must use the
normal handler migration workflow first; do not bypass that check by copying a
candidate document into `json/specs/`.

For a reviewed namespaced child that intentionally contains migrated handlers,
use the guarded namespaced accept step after its Dart implementation and test
are present:

```bash
node tools/accept-json-loadspec-candidate.cjs \
  --candidate /tmp/dotnet-run-specs \
  --load-spec dotnet/dotnet-run
node tools/materialize-json-assets.cjs json/specs dart/assets/specs
```

Run the exporter regression tests and asset-layout test:

```bash
node tools/test-json-export.cjs
node tools/test-materialize-json-assets.cjs
node tools/test-check-load-spec-links.cjs
node tools/check-conversion-completeness.cjs
```

## Targeted handler work

Do not read whole source files to find one dynamic callback. Use the manifest
to select the exact item, then request its minimal source context:

```bash
node tools/locate-handler.cjs --source src/aws/s3api.ts \
  --kind postProcess --status todo --limit 20
node tools/locate-handler.cjs \
  --id manual.src_chown.spec.args_0_.generators.custom --json
```

See [`docs/handler-porting-workflow.md`](../docs/handler-porting-workflow.md)
for the required implementation, registration, and test sequence.

The TODO report is count-sorted, not priority-sorted. In particular,
`src/aws/**`, `src/az/**`, and `src/gcloud/**` stay static-JSON-first unless a
specific product requirement calls for one of their dynamic handlers.

## Runtime verification

```bash
cd dart
dart test
dart run example/example.dart --trace 'astro d'
dart run example/example.dart --trace 'git b'
dart run example/example.dart --trace 'chown '
dart run example/example.dart --trace 'brew list '
dart pub publish --dry-run
```

The default v3 example uses `MissingJsonHandlerPolicy.returnEmpty`: an
unported dynamic handler is reported by `--trace` and returns no dynamic
suggestions, while static completion still works. Dynamic execution failures
include the handler ID/path, typed command, cwd, script, exit code, and stderr
when available. Add `--strict` to require every referenced handler to be
implemented.
