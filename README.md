# ycode-nvim-theme

YCODE Owned Light is a concrete Neovim colorscheme built on top of `neo-ds`, the Neovim Design System.

The theme is intentionally thin: it defines a structured color palette and lets `neo-ds` own the semantic roles, highlight compilation, and plugin integrations.

## Requirements

- Neovim 0.10 or newer
- `mrvanish97/neo-ds`

## Setup

With lazy.nvim:

```lua
{
  "mrvanish97/neo-ds",
  lazy = false,
  priority = 1000,
  config = function()
    require("neo-ds").setup({})
  end,
},
{
  "mrvanish97/ycode-nvim-theme",
  lazy = false,
  priority = 999,
  dependencies = { "mrvanish97/neo-ds" },
  config = function()
    vim.opt.background = "light"
    vim.cmd.colorscheme("ycode-owned-light")
  end,
}
```

## Scope

The repository should stay close to a single concrete theme file:

- keep palette data in `colors/ycode-owned-light.lua`
- keep semantic behavior in `neo-ds`
- do not add highlight overrides here
- do not add another palette resolver here

## TODO

- Add a dark variant.
