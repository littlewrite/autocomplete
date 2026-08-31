# JSON-driven completion specs

## Decision

The canonical representation of a completion spec should be JSON. The runtime
must consume a command index and one JSON document per command. Code is an
extension layer, selected by stable handler IDs, and is not embedded in JSON.

The existing TypeScript files remain the source of truth during migration. The
TypeScript-to-JSON exporter should use the TypeScript AST (not regular
expressions or `eval`) and must fail loudly when it cannot preserve a field.

## Why the retired Dart output is not the protocol

`FigSpec.toJson()` and the related `toJson()` methods are useful diagnostics,
but they are not a lossless exporter:

- callback fields such as `custom`, `postProcess`, and `generateSpec` are
  omitted;
- unsupported values are silently skipped in several places;
- Dart-only constructor choices (for example normalized single-or-array args)
  leak into the output shape;
- The retired `all_specs_v2.dart` catalog had one deferred import and switch
  arm per command, so adding a command changed the compiled program.

The JSON format is specified independently and validated before package assets
are materialized. The retired Dart catalog is not shipped by the v3 package.

## Storage layout

Use a small index plus per-command documents:

```text
assets/specs/index.json
assets/specs/e/echo.json
assets/specs/g/git.json
assets/specs/g/git/versions/2.45.0.json
```

`index.json` contains only lookup metadata. A command document contains the
complete tree for that command, except for explicitly lazy `loadSpec` links.
The index is loaded once; command documents are read on demand and retained in
the existing LRU cache.

Example index:

```json
{
  "schemaVersion": 1,
  "commands": {
    "echo": { "file": "e/echo.json" },
    "git": { "file": "g/git.json", "aliases": ["g"] }
  }
}
```

Paths are relative to the asset root and must not contain `..`. The loader
should reject duplicate command names, missing files, invalid JSON, and schema
versions it does not understand.

### Namespaced sources and versions

Source folders are not Dart library boundaries. `src/aws/*.ts` is exported as
the `aws` root plus command JSON documents; `src/az/<version>/*.ts` is exported
as the `az` root plus versioned command documents. Their original `loadSpec`
names (for example `aws/accessanalyzer` and `az/2.53.0/account`) are retained
as logical index aliases. Collision documents use a deterministic filename
such as `account--az_2.53.0_account.json` and are included as assets when a
namespaced alias points to them. This prevents flattening from breaking lazy
loads while keeping one portable asset tree. For namespaces whose source child
file exports a shorter command name (for example `dotnet/dotnet-new` exporting
`new`), materialization also tries the namespace-stripped leaf before declaring
the link unresolved. A missing physical document is reported by validation; no
synthetic empty command is added.

The source `src/az/index.ts` and `src/fig/index.ts` wrap their commands with
`createVersionedSpec`. The JSON exporter emits a small root selector plus one
root document per known version. `az` detects its version with `az version -o
json`; `fig` detects it with `fig --version`. The installed version is cached
by the runtime, then only the selected document is read. A version source that
exports `Fig.Subcommand` is normalized to a root document named after the
command, so `1.0.0` is never exposed as a shell command. Adding a version
requires an explicit selector entry and typed resolver handler; it must not be
inferred from a flattened command name.

## Static and dynamic values

Static values use the Fig-compatible field names already consumed by the
runtime: `name`, `description`, `options`, `subcommands`, `args`, `template`,
`suggestions`, `loadSpec`, parser directives, and so on.

Dynamic values use handler IDs, never source code:

```json
{
  "name": "echo",
  "args": [{
    "name": "string",
    "generators": [{
      "trigger": "$",
      "custom": { "handler": "echo.environmentVariables", "version": 1 }
    }]
  }]
}
```

For script generators, the command itself remains data and only the output
mapping is code:

```json
{
  "script": ["git", "branch", "--no-color"],
  "postProcess": { "handler": "git.branches", "version": 1 }
}
```

Handlers are registered by the host language:

```text
registerGeneratorHandler("git.branches", callback)
```

The field determines the callback contract. `custom`, a direct `generators`
handler, and a direct `suggestions` handler use the custom-generator contract;
`postProcess`, `trigger`, `generateSpec`, and `parserDirectives.alias` each use
their corresponding typed registration method. JSON records only `{ "handler":
id, "version": n, "config": {...} }`; function names, source text, and host
language imports never enter a command document. During migration the runtime
may use `MissingJsonHandlerPolicy.returnEmpty`, which records an unresolved ID
and returns an empty result. Strict environments use the default `reject`
policy so a missing local implementation fails activation.

Each callback type has an explicit Dart signature: custom generators receive
tokens, an optional execution function, and generator context; post-processors
receive stdout and optional tokens; trigger callbacks receive the new and prior
token; alias resolvers receive the active token and execution function. A
handler returns typed suggestions (or an optional generated spec / alias string
for its respective type). The handler ID is therefore a versioned API boundary;
use a new ID when its required inputs or meaning change.

Prefer declarative generator operations (`script`, `splitOn`, templates,
filters) whenever they express the behavior. Keep handlers for context-aware
logic, custom processes, version detection, and genuinely non-declarative
transformations.

## Runtime boundary

Add a platform-neutral source interface rather than using `dart:io` in the
specification package:

```dart
typedef JsonAssetReader = Future<String> Function(String relativePath);
```

The Dart CLI adapter can implement this with file I/O; Flutter can implement it
with `rootBundle`; JavaScript can use `fetch` or filesystem reads. The JSON
registry should expose these operations:

```text
SpecStore(reader, handlerRegistry)
  listNames(prefix)
  load(name)
  clearCache()
```

`SpecStore` should be the implementation of `ensureSpecLoaded`. Keep the
existing `CompleteAdapter` focused on the completion environment (processes,
directories, environment variables); do not mix asset loading into it.

Dynamic handlers are opt-in. Both static-only and dynamic applications use the
single public import `package:autocomplete/autocomplete.dart`; only the latter
calls the bundled registration function:

```dart
final handlers = JsonHandlerRegistry();
registerMigratedJsonHandlers(handlers);
await registerJsonSpecs(
  reader: filesystemReader,
  handlers: handlers,
);
```

## Compatibility rules

1. `schemaVersion` is required on both the index and every command document.
2. Missing optional fields have the same defaults as the current Fig model.
3. Unknown fields are ignored by readers but reported by the validator.
4. A field that cannot be represented must be an exporter error, not a silent
   omission.
5. Handler IDs are globally unique, namespaced (`vendor.command.operation`),
   and may carry a handler version.
6. JSON must be deterministic: UTF-8, stable key ordering in generated output,
   and no timestamps or machine-specific paths.
7. `loadSpec` remains a name/link in JSON. It must not contain an executable
   function.
8. A versioned root uses `versionedSpec`: `getVersion` is a typed handler and
   each `{ version, loadSpec }` entry names a separately lazy version document.
   Version detection is cached by `cacheKey`; the version document is cached by
   the JSON store. Do not encode version detection in a suggestion handler.

## Migration plan

### Phase 0: freeze behavior (completed)

- Add golden tests for representative static, script, custom, versioned, and
  nested `loadSpec` commands.
- Record exporter diagnostics: total files, unsupported fields, handler IDs,
  and output sizes.

### Phase 1: protocol and one vertical slice (completed)

- Add the JSON Schema in `schema/completion-spec.schema.json`.
- Implement `FigSpec.fromJson` and the recursive `FigSubcommand`, `FigOption`,
  `FigArg`, and `FigGenerator` readers with strict type checks.
- Implement `SpecStore` with an injected reader and an index cache.
- Export and run `echo` and `astro` from JSON, including one dynamic handler.
- Compare JSON and Dart suggestions in the same test cases.

### Phase 2: exporter and handler registry (completed)

- Build an AST-based TS exporter.
- Convert simple `script` generators to JSON automatically.
- Assign stable handler IDs to remaining `custom`, `postProcess`, and
  `generateSpec` functions.
- Keep generated JSON and a diagnostics manifest under reviewable version
  control.

### Phase 3: migrate by command family (completed for the current catalog)

- Add JSON documents only after their static fields pass conversion checks.
- Retain golden parity tests against the TypeScript source behavior.
- Migrate versioned specs as an index plus version documents; keep version
  selection logic in a handler until it is proven declarative.

### Phase 4: scale the JSON catalog (ongoing)

- Do not generate command Dart files or a compile-time catalog.
- Measure cold start, first suggestion latency, peak loaded specs, and cache
  hit rate as the catalog grows.

## Risks to settle early

- Asset packaging differs between Dart CLI, Flutter, web, and Java. The reader
  interface must be tested in each host before mass conversion.
- JSON parsing allocates object graphs. Parse only the requested command and
  keep the LRU limit; do not load every document into one global map.
- A handler ID is an API. Renaming one without a compatibility alias breaks
  old JSON documents.
- Generated JSON must preserve `false`, `0`, empty arrays, aliases, and list
  descriptions; truthiness-based conversion is a data-loss bug.
- Never execute JavaScript or Dart source found in a JSON document.
