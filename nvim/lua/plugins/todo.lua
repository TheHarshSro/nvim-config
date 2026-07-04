return {
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    event = { "BufReadPost", "BufNewFile" },

    config = function()
      require("todo-comments").setup({
        signs = true,
      })

      vim.keymap.set(
        "n",
        "<leader>td",
        "<cmd>TodoTelescope<CR>",
        { desc = "Todo Telescope" }
      )
    end,
  },
}
