# Icons / logos for specs

Specs may reference icons via URLs or data URIs (e.g. in TS sources):

- `https://bitwarden.com/images/icon_32x32.png`
- `data:image/svg+xml;base64,...`
- `https://raw.githubusercontent.com/.../logo.png`

For Flutter (and to avoid external URLs), **unify these under this directory**:

1. Save each image here with a stable name, e.g. `bitwarden.png`, `bun.png`, `blitz.png`.
2. In Dart specs, reference via asset path: use the path that Flutter resolves, e.g. `package:autocomplete/assets/icons/bitwarden.png` in Flutter, or a relative path for pure Dart.

Naming suggestion: use the command or app name (e.g. `bw.png`, `bun.png`). For base64 data URIs, decode and save as `.png` or `.svg` with the same name.

These assets are declared in `pubspec.yaml` under `flutter.assets` so that Flutter apps depending on this package can bundle them.
