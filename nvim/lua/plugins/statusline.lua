return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("lualine").setup({
        options = {
          theme = "nightfox",
          globalstatus = true,

          section_separators = {
            left = "",
            right = "",
          },

          component_separators = {
            left = "",
            right = "",
          },
          disabled_filetypes = {
            statusline = { "snacks_dashboard" },
          },
        },

        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch" },
          lualine_c = { "filename" },

          lualine_x = {
            "encoding",
            "filetype",
          },

          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
}
