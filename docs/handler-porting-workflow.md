# Handler Porting Workflow

This workflow keeps manual Dart ports small and reviewable. Do not give an AI
an entire `src/*.ts` file merely to find one callback.

## 1. Select a work item

The converter records every dynamic boundary in
`json/specs/manual-handlers.json`. List a compact work queue for one source
file without printing source code:

```sh
node tools/locate-handler.cjs --source src/aws/s3api.ts --kind postProcess --status todo
```

Use `docs/dynamic-handler-todo.md` as an inventory, not a priority order. It
is sorted by handler count and therefore puts generated cloud catalogs near
the top even when those commands are not the best next user-facing feature.
The list contains the handler ID, Dart callback kind, TS location, and JSON
path.

### Porting priority

1. Common top-level local commands and broadly reusable handlers, such as
   `git`, `npm`, filesystem, process, package-manager, and shell tooling.
2. Small command families whose dynamic behavior is frequently useful and can
   be covered with deterministic tests.
3. Vendor-cloud catalogs only when a real product requirement identifies a
   command: `src/aws/**`, `src/az/**`, and `src/gcloud/**` remain JSON-static
   by default.

For the cloud catalogs, conversion must still preserve static command trees,
version selectors, `loadSpec` links, and every dynamic handler reference in
the manifest. Do not create Dart handler files merely because a cloud command
has a TODO. The migration fallback keeps static completion available until a
specific handler is justified and ported.

## 2. Read only the required code

Request one handler by its exact stable ID:

```sh
node tools/locate-handler.cjs \
  --id manual.src_chown.spec.args_0_.generators.custom --json
```

The result contains the captured callback expression, its source range, only
the imports referenced by that expression, and likely local definitions. The
tool reads the manifest plus that one source file; it does not scan the rest of
`src/` and does not execute TypeScript.

For an imported generator such as `getAppGenerator`, the import record tells
the implementer which source module must be examined next. Add only the
minimal dependency context needed to faithfully port the callback.

## 3. Implement and register

1. Keep the handler ID unchanged.
2. Put a reviewed implementation in `dart/lib/src/spec_handlers/<command>.dart`.
3. Register it from `registerMigratedJsonHandlers` in
   `dart/lib/autocomplete.dart`.
4. Add a focused Dart test with deterministic adapter/process input.
5. Regenerate the TODO report:

```sh
node tools/report-handler-todo.cjs
```

If the focused export changes handler IDs or retains a previously omitted
dynamic factory call, accept the reviewed command JSON before implementing its
Dart handler. Do not patch a large generated document or manifest by hand:

```sh
node tools/ts-to-json.cjs --file src/<command>.ts --out /tmp/<command>-specs --clean
node tools/validate-json.cjs /tmp/<command>-specs
node tools/accept-json-command-candidate.cjs \
  --candidate /tmp/<command>-specs --command <command>
node tools/materialize-json-assets.cjs json/specs dart/assets/specs
```

The accept tool is limited to one command whose primary index path is
unchanged. It atomically replaces the command JSON and its source-owned
manifest records, preserving every other catalog record. Validate the staging
and package catalog after it runs. Use the full candidate pipeline for any
index, alias, version, collision, or multi-source change.

Never generate an empty Dart file or register an empty placeholder. During
migration, `MissingJsonHandlerPolicy.returnEmpty` preserves static suggestions
and exposes the missing ID in trace output. A release uses `reject`.

## 4. Enforce conversion completeness

```sh
node tools/check-conversion-completeness.cjs
node tools/check-conversion-completeness.cjs --release
node tools/verify-json-candidate.cjs
```

The first command verifies that every conversion diagnostic and handler is
accounted for. The release gate deliberately fails until all diagnostics have
been represented as JSON or handler references and every referenced handler is
implemented. This makes incomplete conversion visible rather than silently
shipping it.

The candidate pipeline is required before replacing generated JSON. It fails
when a candidate loses an existing root command, even if its JSON is otherwise
valid. It only uses a temporary output directory, so a failed export cannot
overwrite the checked-in staging catalog or package assets. Resolve the
extractor gap or explicitly migrate that command before materializing package
assets.
