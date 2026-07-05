 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#111416',
    base01 = '#1d2023',
    base02 = '#282a2d',
    base03 = '#8b9199',
    base04 = '#c1c7cf',
    base05 = '#e1e2e6',
    base06 = '#e1e2e6',
    base07 = '#e1e2e6',
    base08 = '#ffb4ab',
    base09 = '#e5b6f2',
    base0A = '#b6c9dc',
    base0B = '#99ccf9',
    base0C = '#e5b6f2',
    base0D = '#99ccf9',
    base0E = '#b6c9dc',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e1e2e6',          bg = '#111416' })
  hi('TelescopeBorder',         { fg = '#8b9199',             bg = '#111416' })
  hi('TelescopePromptNormal',   { fg = '#e1e2e6',          bg = '#111416' })
  hi('TelescopePromptBorder',   { fg = '#8b9199',             bg = '#111416' })
  hi('TelescopePromptPrefix',   { fg = '#99ccf9',             bg = '#111416' })
  hi('TelescopePromptCounter',  { fg = '#c1c7cf',  bg = '#111416' })
  hi('TelescopePromptTitle',    { fg = '#111416',             bg = '#99ccf9' })
  hi('TelescopePreviewTitle',   { fg = '#111416',             bg = '#b6c9dc' })
  hi('TelescopeResultsTitle',   { fg = '#111416',             bg = '#e5b6f2' })
  hi('TelescopeSelection',      { fg = '#e1e2e6',          bg = '#282a2d' })
  hi('TelescopeSelectionCaret', { fg = '#99ccf9',             bg = '#282a2d' })
  hi('TelescopeMatching',       { fg = '#99ccf9',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
