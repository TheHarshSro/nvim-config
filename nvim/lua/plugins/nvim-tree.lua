return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({})

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
      desc = "Explorer",
      silent = true,
    })
  end,
}
