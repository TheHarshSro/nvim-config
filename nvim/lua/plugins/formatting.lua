return {
  {
    "stevearc/conform.nvim",

    opts = {
      notify_on_error = false,

      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang_format" },
      },
    },

    config = function(_, opts)
      require("conform").setup(opts)

      vim.keymap.set({ "n", "v" }, "<leader>f", function()
        require("conform").format({
          async = true,
          lsp_format = "fallback",
        })
      end, { desc = "Format buffer" })
    end,
  },
}
