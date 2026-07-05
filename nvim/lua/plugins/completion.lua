return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function()
      require("luasnip").setup({})
    end,
  },

  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      "L3MON4D3/LuaSnip",
    },

    opts = {
      keymap = {
        preset = "super-tab",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        menu = {
          auto_show = true,
        },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
      },

      snippets = {
        preset = "luasnip",
      },

      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },
  },
}
