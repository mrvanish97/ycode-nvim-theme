# AGENTS.md

## Project Intent

This repository contains concrete YCODE themes for `neo-ds`, the Neovim Design System. Keep the theme package thin and palette-only.

## Rules

- Theme files must use `require("neo-ds.theme").define()`.
- Do not define roles or raw highlight groups in this repository.
- Do not implement palette alias resolution here. Let `neo-ds` validate and compile the theme.
- Keep the light theme in `colors/ycode-owned-light.lua`.
- Add a dark theme as a separate colorscheme file when it exists.

## Scope

The repository should stay close to a single concrete theme file:

- keep palette data in `colors/ycode-owned-light.lua`
- keep semantic behavior in `neo-ds`
- do not add highlight overrides here
- do not add another palette resolver here

## Verification

Run:

```sh
nvim --headless -u NONE --cmd 'set rtp+=/path/to/neo-ds' --cmd 'set rtp+=.' '+colorscheme ycode-owned-light' '+qall'
```

Also run `git diff --check` before committing.
