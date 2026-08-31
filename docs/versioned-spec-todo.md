# Versioned Spec TODO

The JSON runtime now supports version selectors. A selector contains a typed
`getVersion` handler plus logical version-document links. `az` and `fig` are
the reference implementations.

| Root command | Source versions | Status | Next work |
| --- | --- | --- | --- |
| `az` | `2.53.0` | Complete | Add a version document when source adds one. |
| `fig` | `1.0.0`, `2.0.0` | Selector complete | `fig --version` and both root documents are migrated. Three nested `generateSpec` handlers remain in the dynamic-handler TODO. |
| `heroku` | `8.0.0`, `8.6.0` | Complete | Resolver and the shared app generator are ported; both version documents retain all generator references. |
| `infracost` | `0.9.0`, `0.10.0` | Pending | Preserve both root documents and port semver-clean version output. |
| `shopify` | `2.0.0`, `3.0.0` | Pending | Preserve both root documents and port regex version extraction. |
| `@usermn/sdc` | `0.0.0` | Pending | Normalize scoped command asset naming and port the `npx` resolver. |

Each migration must add selector and version-document tests with a deterministic
adapter. A version link is not complete until it resolves without reading an
unrelated flat command document.
