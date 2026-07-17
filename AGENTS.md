# AGENTS.md

## Repository purpose

This is the `nanxstats/tap` Homebrew tap. It distributes CLI formulae and
font casks for macOS and Linux. Keep formulae in `Formula/` and font casks
in `Casks/`.

## Packaging conventions

- Python CLIs (`asciilint`, `pkglite`) follow current Homebrew Python formula
  practice: depend on `python@3.14`, include
  `Language::Python::Virtualenv`, list every transitive PyPI dependency as a
  checksummed `resource`, and install with `virtualenv_install_with_resources`.
- After changing a Python package version, URL, or checksum, run
  `brew update-python-resources nanxstats/tap/<formula>` and review all resource
  changes. Use the PyPI sdist, not a wheel, as the main formula URL.
- Rust CLIs (`bisectrunk`, `revdeprun`) use the published source archives at
  `https://static.crates.io/crates/<name>/<name>-<version>.crate`, retain their
  crates.io SHA-256 checksums, depend on `"rust" => :build`, and install with
  `cargo install`, `*std_cargo_args`. Do not depend on or invoke `rustup`.
- `bisectrunk` needs Git at runtime and uses `uses_from_macos "git"` so Linux
  receives Homebrew Git while macOS may use the system copy.
- `revdeprun` is supported only on Linux and must keep `depends_on :linux`.
- Fonts are casks, not formulae. Homebrew installs `font` artifacts into
  `~/Library/Fonts` on macOS and `${XDG_DATA_HOME:-~/.local/share}/fonts` on
  Linux.
- GitHub-generated source archives retain a top-level directory such as
  `<repository>-<version-or-commit>/`. Include that directory in every `font`
  artifact path; Homebrew does not strip it when staging a cask. Release ZIPs
  may have a different layout, so always inspect the archive.
- Prefer tagged font releases with checksummed archives. When upstream has no
  tag, pin the cask to the full immutable commit archive. Homebrew currently
  classifies commit-hash cask versions as unversioned and requires
  `sha256 :no_check`; do not replace a commit pin with a mutable branch archive.
- When the cask URL and homepage domains differ, add the narrowest appropriate
  `verified:` value.

## Source and metadata checks

- Use `gh` for GitHub repository contents, tags, releases, assets, and commit
  information.
- Never guess a version, artifact path, or checksum. Inspect the published
  archive and calculate or verify its SHA-256.
- The crates.io API download endpoint can return HTTP 403 under Homebrew. Use
  the `static.crates.io` `.crate` URL instead.
- Keep tests lightweight and deterministic. CLI formula tests should verify the
  installed version/help output and, where practical, one small local operation.
  Do not make test blocks depend on external network services.

## Validation

Before committing, run:

```sh
brew style nanxstats/tap
brew audit --strict nanxstats/tap/asciilint nanxstats/tap/pkglite \
  nanxstats/tap/bisectrunk nanxstats/tap/revdeprun
brew test-bot --only-tap-syntax
```

Strictly audit every changed cask with its fully qualified token:

```sh
brew audit --cask --strict nanxstats/tap/<cask>
```

For changed CLI formulae, verify the source build and test block:

```sh
brew install --build-from-source nanxstats/tap/<formula>
brew test nanxstats/tap/<formula>
brew linkage --test nanxstats/tap/<formula>
```

Run `revdeprun` installation/tests on Linux. Fetch all changed casks before
publishing. Do not install font casks blindly on a maintainer machine because a
font may already have been installed manually; use `--adopt` only when the
existing font is identical.

## CI and bottles

- Keep `.github/workflows/tests.yml`: it provides pull-request checks on macOS
  Apple Silicon, macOS Intel, and Linux.
- `.github/workflows/publish.yml` is only needed to publish formula bottles with
  `brew pr-pull` after a reviewed pull request passes. Font casks do not use
  bottles.
- Without bottles, Rust formulae remain installable but users must build them
  from source, causing Homebrew to install its build-only Rust toolchain. This
  toolchain is independent of any user-managed `rustup` installation.
