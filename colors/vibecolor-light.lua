---@type NeoDs.Theme
local theme = {
  name = "vibecolor-light",
  background = "light",

  -- A literal -90-degree OKLCH hue rotation of YCode. Lightness and chroma
  -- remain unchanged where the rotated color fits in sRGB. Out-of-gamut
  -- colors retain lightness and hue while chroma is reduced to the boundary.
  -- The nested names identify the source YCode color family.
  primitives = {
    neutral = {
      ["0"] = "#ffffff",
      ["50"] = "#f5f5f5",
      ["100"] = "#f4f4f4",
      ["200"] = "#e5e5e5",
      ["300"] = "#cdcdcd",
      ["600"] = "#5c6b61",
      ["700"] = "#8b9c90",
      ["1000"] = "#000000",
    },

    inverse = {
      foreground = "#ffffff",
    },

    rotated = {
      blue = {
        primary = "#167542",
        literal = "#006053",
        selection = "#d9f1e4",
        reference = "#e3f4ee",
        reference_subtle = "#f1faf6",
        reference_write = "#edf8f2",
      },
      magenta = {
        primary = "#007ab7",
        secondary = "#007a8c",
        tertiary = "#005657",
      },
      red = {
        primary = "#8b4ed6",
        subtle = "#f3f3ff",
      },
      green = {
        primary = "#af4f00",
        subtle = "#fff9f4",
      },
      yellow = {
        primary = "#cb6b99",
        subtle = "#ffeef2",
        search = "#ffecee",
        search_active = "#ffc9d4",
      },
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
      selection = "primitive.rotated.blue.selection",
      editor = "background.primary",
      sidebar = "background.secondary",
      float = "background.secondary",
      notification = "primitive.neutral.0",
      backdrop = "primitive.neutral.1000",

      popup = {
        _ = "background.secondary",
        selected = "background.selection",
        scrollbar = "background.tertiary",
        thumb = "background.quaternary",
      },

      search = {
        _ = "primitive.rotated.yellow.search",
        active = "primitive.rotated.yellow.search_active",
      },

      reference = {
        _ = "primitive.rotated.blue.reference",
        subtle = "primitive.rotated.blue.reference_subtle",
        write = "primitive.rotated.blue.reference_write",
      },

      feedback = {
        info = "background.reference",
        hint = "background.reference.subtle",
        success = "primitive.rotated.green.subtle",
        warning = "primitive.rotated.yellow.subtle",
        danger = "primitive.rotated.red.subtle",
      },
    },

    foreground = {
      primary = "primitive.neutral.1000",
      secondary = "primitive.neutral.600",
      muted = "primitive.neutral.700",
      inverse = "primitive.inverse.foreground",
      disabled = "foreground.muted",
      deprecated = "foreground.muted",
      link = "accent.primary",
    },

    border = {
      primary = "background.quaternary",
      secondary = "background.tertiary",
      subtle = "border.secondary",
      focus = "accent.primary",
    },

    accent = {
      primary = "primitive.rotated.blue.primary",
      secondary = "primitive.rotated.magenta.primary",
      tertiary = "primitive.rotated.magenta.secondary",
      quaternary = "primitive.rotated.magenta.tertiary",
      literal = "primitive.rotated.blue.literal",
      note = "primitive.rotated.yellow.primary",
    },

    feedback = {
      info = "accent.literal",
      hint = "accent.primary",
      success = "primitive.rotated.green.primary",
      warning = "accent.note",
      danger = "primitive.rotated.red.primary",
    },

    interaction = {
      active = "accent.secondary",
      focus = "accent.primary",
      hover = "background.cursorline",
      selected = "background.selection",
      match = "accent.literal",
    },

    entity = {
      file = "foreground.primary",
      directory = {
        _ = "accent.primary",
        icon = "entity.directory",
      },
      link = "foreground.link",
    },

    syntax = {
      comment = "foreground.muted",
      keyword = {
        _ = "accent.secondary",
        primary = "accent.secondary",
        secondary = "syntax.keyword.primary",
        directive = "syntax.preprocessor",
      },
      annotation = "syntax.keyword.primary",
      variable = "foreground.primary",
      property = "foreground.primary",
      constant = "accent.literal",
      boolean = "syntax.constant",
      string = "feedback.danger",
      number = "syntax.constant",
      operator = "accent.secondary",
      punctuation = "foreground.primary",
      bracket = "syntax.punctuation",
      preprocessor = "accent.note",
      builtin = "syntax.constant",
      tag = "syntax.keyword.primary",
      type = {
        _ = "foreground.primary",
        parameter = "accent.quaternary",
      },
      ["function"] = {
        _ = "accent.tertiary",
        call = "accent.tertiary",
        definition = "accent.tertiary",
      },
      markup = {
        heading = "foreground.primary",
        raw = "syntax.string",
      },
    },

    vcs = {
      added = "feedback.success",
      changed = "accent.primary",
      deleted = "feedback.danger",
      untracked = "foreground.muted",
    },

    chrome = {
      base = "background.tertiary",
      inactive = "background.secondary",
      mode = {
        normal = "accent.primary",
        insert = "accent.secondary",
        visual = "accent.literal",
        replace = "feedback.danger",
        command = "feedback.warning",
      },
    },
  },
}

require("neo-ds").load(require("neo-ds.theme").define(theme))
