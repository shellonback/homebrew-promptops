# Homebrew tap for PromptOps

[PromptOps Desktop](https://promptops.it) is the desktop control plane for AI coding agents: run Claude Code, Codex, Gemini CLI and more from one window, with parallel sub-agents, usage and rate-limit visibility, and a safety layer around what agents may do.

## Install

```sh
brew install shellonback/promptops/promptops
```

or

```sh
brew tap shellonback/promptops
brew install promptops
```

## What this repository is

Only the Homebrew packaging: a cask recipe that points to the signed, notarized DMGs published on [promptops-releases](https://github.com/shellonback/promptops-releases/releases) and verifies their checksums. PromptOps Desktop itself is proprietary software by Shellonback S.r.l., distributed under its [EULA](https://promptops.it/legal/eula); its source code is not part of this repository. The MIT license below covers the packaging files only.

## Update

The app updates itself. To update through Homebrew instead:

```sh
brew upgrade promptops
```

## Uninstall

```sh
brew uninstall promptops        # removes the app
brew uninstall --zap promptops  # also removes settings, caches and logs
```

## Requirements

macOS 12 Monterey or later, Apple Silicon or Intel. Builds are signed and notarized by Shellonback S.r.l.

## Links

- Website and docs: https://promptops.it
- Releases: https://github.com/shellonback/promptops-releases/releases
