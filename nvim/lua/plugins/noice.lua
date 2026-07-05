return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline",
      format = {
        search_down = {
          icon = "  ",
        },
        search_up = {
          icon = "  ",
        },
      },
    },

    views = {
      cmdline_popup = {
        position = {
          row = 5,
          col = "50%",
        },
        size = {
          width = 40,
          height = "auto",
        },
      },
    },
  },
}
