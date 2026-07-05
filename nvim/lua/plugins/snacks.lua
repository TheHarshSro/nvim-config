return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,

    opts = {
      explorer = {
        enabled = true,
        replace_netrw = true,
      },

      picker = {
        enabled = true,
      },

      dashboard = {
        enabled = true,
        preset = {
            header = [[
                         
                         
            ▀▀           
████▄ ██ ██ ██  ███▄███▄ 
██ ██ ██▄██ ██  ██ ██ ██ 
██ ██  ▀█▀  ██▄ ██ ██ ██ 
                         
            ]],

            keys = {
      {
        key = "f",
        desc = " Find File",
        icon = "» ",
        action = ":lua Snacks.picker.files()",
      },
      {
        key = "n",
        desc = " New File",
        icon = "» ",
        action = ":ene | startinsert",
      },
      {
        key = "r",
        desc = " Recent Files",
        icon = "» ",
        action = ":lua Snacks.picker.recent()",
      },
      {
        key = "c",
        desc = " Config",
        icon = "» ",
        action = ":lua Snacks.picker.files({ cwd = vim.fn.stdpath('config') })",
      },
      {
        key = "q",
        desc = " Quit",
        icon = "» ",
        action = ":qa",
        },
      },
    },
        
        sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
    },
},

      input = {
        enabled = true,
      },

      terminal = {
        enabled = true,
        },
    },

    keys = {

      {
        "<leader>ff",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },

      {
        "<leader>fg",
        function()
          Snacks.picker.grep()
        end,
        desc = "Live Grep",
      },
        {
          "<leader>tt",
            function()
           Snacks.terminal()
              end,
             desc = "Terminal",
                },

                {
         "<leader>tg",
            function()
            Snacks.lazygit()
            end,
                desc = "LazyGit",
            },
    },
  },
}
