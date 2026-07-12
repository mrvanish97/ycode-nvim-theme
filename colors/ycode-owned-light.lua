---@type NeoDs.Theme
local theme = {
  name = "ycode-owned-light",
  background = "light",

  primitives = {
    neutral = {
      ["0"] = "#ffffff",
      ["50"] = "#f5f5f5",
      ["100"] = "#f4f4f4",
      ["200"] = "#e5e5e5",
      ["300"] = "#cdcdcd",
      ["600"] = "#5c6873",
      ["700"] = "#8a99a6",
      ["1000"] = "#000000",
    },

    inverse = {
      foreground = "#ffffff",
    },

    blue = {
      primary = "#0f68a0",
      literal = "#272ad8",
      selection = "#dcecff",
      reference = "#e8f0fe",
      reference_subtle = "#f3f8ff",
      reference_write = "#eef6ff",
    },

    magenta = {
      primary = "#ad3da4",
      secondary = "#804fb8",
      tertiary = "#4b21b0",
    },

    red = {
      primary = "#d12f1b",
      subtle = "#fff0f0",
    },

    green = {
      primary = "#2d8504",
      subtle = "#f0fff2",
    },

    yellow = {
      primary = "#b8860b",
      subtle = "#fef3d0",
      search = "#fff3b0",
      search_active = "#ffd700",
    },
  },

  ---@type NeoDs.ThemePalette
  palette = {
    background = {
      primary = "primitive.neutral.0",
      secondary = "primitive.neutral.100",
      tertiary = "primitive.neutral.200",
      quaternary = "primitive.neutral.300",
      cursorline = "primitive.neutral.50",
      selection = "primitive.blue.selection",

      search = {
        _ = "primitive.yellow.search",
        active = "primitive.yellow.search_active",
      },

      reference = {
        _ = "primitive.blue.reference",
        subtle = "primitive.blue.reference_subtle",
        write = "primitive.blue.reference_write",
      },

      feedback = {
        success = "primitive.green.subtle",
        warning = "primitive.yellow.subtle",
        danger = "primitive.red.subtle",
      },
    },

    foreground = {
      primary = "primitive.neutral.1000",
      secondary = "primitive.neutral.600",
      muted = "primitive.neutral.700",
      inverse = "primitive.inverse.foreground",
    },

    accent = {
      primary = "primitive.blue.primary",
      secondary = "primitive.magenta.primary",
      tertiary = "primitive.magenta.secondary",
      quaternary = "primitive.magenta.tertiary",
      literal = "primitive.blue.literal",
      note = "primitive.yellow.primary",
    },

    feedback = {
      success = "primitive.green.primary",
      danger = "primitive.red.primary",
    },

    syntax = {
      constant = "accent.literal",
      boolean = "syntax.constant",
      punctuation = "foreground.primary",

      ["function"] = {
        call = "syntax.function",
      },

      keyword = {
        _ = "accent.secondary",
        primary = "accent.secondary",
        secondary = "foreground.primary",
        directive = "syntax.preprocessor",
      },
    },
  },
}

require("neo-ds").load(require("neo-ds.theme").define(theme))
