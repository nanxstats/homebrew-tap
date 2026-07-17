# Nan Homebrew Tap

Homebrew formulae and font casks maintained by Nan Xiao.

The fully qualified installation commands below automatically add this tap on
first use. No separate setup is required. To add the tap before installing
anything, optionally run:

```sh
brew tap nanxstats/tap
```

## CLI formulae

```sh
brew install nanxstats/tap/asciilint
brew install nanxstats/tap/pkglite
brew install nanxstats/tap/bisectrunk
brew install nanxstats/tap/revdeprun
```

The Python formulae use an isolated Homebrew virtual environment backed by
`python@3.14`. The Rust formulae build with Homebrew's `rust` formula as a
build-only dependency. They do not use or modify a `rustup` installation, and
Rust is not a runtime dependency.

## Font casks

```sh
brew install --cask nanxstats/tap/font-anthrosevka-mono
brew install --cask nanxstats/tap/font-dm-mono-ligaturized
brew install --cask nanxstats/tap/font-fira-mono-ligaturized
brew install --cask nanxstats/tap/font-noto-sans-mono-ligaturized
brew install --cask nanxstats/tap/font-paper-mono-ligaturized
brew install --cask nanxstats/tap/font-share-tech-mono-ligaturized
brew install --cask nanxstats/tap/font-instrument-sans-modded

brew install --cask nanxstats/tap/font-iosevka-term-minimal
brew install --cask nanxstats/tap/font-jetbrains-mono-minimal
brew install --cask nanxstats/tap/font-twilio-sans-mono-minimal
```

Homebrew installs fonts into `~/Library/Fonts` on macOS and
`${XDG_DATA_HOME:-~/.local/share}/fonts` on Linux. If an identical font was
installed manually, add `--adopt` to let Homebrew take ownership. Homebrew will
refuse to replace a different existing file unless `--force` is used.

## For maintainers

### Local verification

Run these checks from this tap's repository:

```sh
brew style nanxstats/tap
brew audit --strict nanxstats/tap/asciilint nanxstats/tap/pkglite \
  nanxstats/tap/bisectrunk nanxstats/tap/revdeprun

brew install --build-from-source nanxstats/tap/asciilint
brew install --build-from-source nanxstats/tap/pkglite
brew install --build-from-source nanxstats/tap/bisectrunk
brew test nanxstats/tap/asciilint nanxstats/tap/pkglite nanxstats/tap/bisectrunk
```

Run the `revdeprun` install and test commands on Linux:

```sh
brew install --build-from-source nanxstats/tap/revdeprun
brew test nanxstats/tap/revdeprun
```

For a font, install it and ask Homebrew to list its installed artifacts:

```sh
brew install --cask nanxstats/tap/font-anthrosevka-mono
brew info --cask nanxstats/tap/font-anthrosevka-mono
```

On Linux, refresh and query the fontconfig cache if the desktop does not notice
the font immediately:

```sh
fc-cache -f
fc-list | grep -i anthrosevka
```

Replace the cask token to test each font. Use `--adopt` on the install command
when an identical manual installation already exists.

### Continuous integration and bottles

The generated `.github/workflows/tests.yml` workflow is relevant: pull requests
run Homebrew's test bot on macOS (Apple Silicon and Intel) and Linux. This is the
main cross-platform check before merging.

The `.github/workflows/publish.yml` workflow is optional. It is only needed when
publishing pre-built formula bottles after a pull request passes. Without
bottles, users can still install everything, but the Rust CLIs are compiled from
source and Homebrew must install the Rust build toolchain. Font casks do not use
bottles.

To publish bottles, merge through a pull request and run the **brew pr-pull**
workflow with that pull request number and its reviewed head SHA. For a small
upstream tap, it is reasonable to begin without bottles and enable this once
source installs and CI are stable.

### Updating

After updating a Python formula's version, URL, and checksum, regenerate its
transitive PyPI resources:

```sh
brew update-python-resources nanxstats/tap/asciilint
brew update-python-resources nanxstats/tap/pkglite
```

The fonts without tagged releases are pinned to exact Git commits. Creating
tagged font releases with archives is preferable for future updates because it
allows every cask to carry an explicit SHA-256 checksum and a readable version.
