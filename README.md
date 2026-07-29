# marcmantei/homebrew-tap

Homebrew tap for [Myceliums](https://github.com/marcmantei/myceliums) — a code
knowledge graph that gives AI agents structural understanding of a codebase.

## Install

```bash
brew install marcmantei/tap/myc
```

Or tap first, then install:

```bash
brew tap marcmantei/tap
brew install myc
```

## What you get

`myc`, the Myceliums CLI and MCP server. It ships as a pre-built binary for
macOS (Apple Silicon and Intel) and Linux (aarch64 and x86_64), taken from the
[GitHub releases](https://github.com/marcmantei/myceliums/releases) of the main
repository.

There is no musl build: ONNX Runtime, reached through the default embeddings
feature, publishes no musl binaries. See
[myceliums#61](https://github.com/marcmantei/myceliums/issues/61).

Alternatives to Homebrew: `cargo install myc`, or download a binary directly
from the releases page.

## How this tap is maintained

`Formula/myc.rb` is regenerated automatically by the
[`update-homebrew` workflow](https://github.com/marcmantei/myceliums/blob/main/.github/workflows/update-homebrew.yml)
in the main repository whenever a release is published. It reads the checksums
from the release assets, so version and digests always match a real release.

Please do not send pull requests against the formula here — they would be
overwritten on the next release. Issues and changes belong in
[marcmantei/myceliums](https://github.com/marcmantei/myceliums).

## License

The formula is Apache-2.0, matching the project it installs.
