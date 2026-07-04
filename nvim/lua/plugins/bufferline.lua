return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          diagnostics = "nvim_lsp",
          separator_style = { "", ""},
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
      })

      vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
      vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close buffer", })
      vim.keymap.set("n", "<leader>X", "<cmd>bd!<CR>", { desc = "Force close buffer", })
    end,
  },
}
