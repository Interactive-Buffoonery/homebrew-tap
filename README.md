# Interactive Buffoonery Homebrew Tap

## Install awesoMux

```sh
brew install --cask interactive-buffoonery/tap/awesomux
```

To install updates:

```sh
brew update
brew upgrade --cask awesomux
```

## Maintainer release flow

The cask always points to a signed, notarized, and stapled DMG from a stable
[awesoMux GitHub Release](https://github.com/Interactive-Buffoonery/awesomux/releases).

1. Publish the stable awesoMux release first.
2. Approve the `Update Homebrew cask` workflow's protected `release`
   environment.
3. The workflow verifies the published DMG and checksum, updates the cask on a
   `chore/awesomux-<version>` branch, and opens a pull request in this repository.
4. Review the `version` and `sha256` diff and wait for the macOS and Ubuntu
   `brew test-bot` checks.
5. Test the install or upgrade locally, then merge the pull request. Never push
   a cask update directly to `main`.

The full release checklist lives in
[`docs/releasing.md`](https://github.com/Interactive-Buffoonery/awesomux/blob/main/docs/releasing.md).

### Automation credential

The awesoMux repository's protected `release` environment stores
`HOMEBREW_TAP_TOKEN`. It must be a fine-grained token limited to this repository
with metadata read access plus contents and pull requests read/write access.
Never commit or share the token value.

## Homebrew documentation

Run `brew help`, read `man brew`, or visit
[Homebrew's documentation](https://docs.brew.sh).
