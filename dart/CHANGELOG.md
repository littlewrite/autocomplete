## 0.5.0

- add `requestSuggestions` / `streamSuggestions` with streamed suggestion events and request cancellation
- add `example/stream_suggest_v2.dart`

## 0.4.0

- bind `AutocompleteEngine` to a fixed adapter and simplify `engine.getSuggestions(cmd, cwd, shell)`
- stabilize dynamic suggestions cache reuse for lazy-loaded specs, postProcess generators, and custom function generators
- fuzzy filter opt

## 0.3.0

- feature fix, opt

## 0.2.0

- fuzzy suggestion filter, and tests

## 0.1.5

- performance improvements
- add object-oriented API

## 0.1.4

- Fix multi-version spec selection (e.g. heroku, shopify, infracost) so the correct spec is chosen at runtime based on CLI version.
- Add CONTRIBUTING.md with contribution and spec-writing guidelines.
- Update spec definitions (elixir, fin, git, heroku, pnpm, shopify) and generator/runtime logic.

## 0.1.3

- Update spec definitions.
- Refactor code structure.

## 0.1.2-dev

- Optimization and bug fixes.

## 0.1.1-dev.1

- Prerelease for testing.

## 0.1.0

- Initial release.
