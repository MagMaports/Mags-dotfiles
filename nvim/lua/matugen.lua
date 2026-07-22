 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#1f1f1f',
    base01 = '#333333',
    base02 = '#2e2e2e',
    base03 = '#696969',
    base04 = '#b6afaf',
    base05 = '#f3f2f2',
    base06 = '#f3f2f2',
    base07 = '#f3f2f2',
    base08 = '#fd4663',
    base09 = '#cc6666',
    base0A = '#d65c5c',
    base0B = '#e46767',
    base0C = '#e99696',
    base0D = '#ec9393',
    base0E = '#e99696',
    base0F = '#910017',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#f3f2f2',          bg = '#1f1f1f' })
  hi('TelescopeBorder',         { fg = '#696969',             bg = '#1f1f1f' })
  hi('TelescopePromptNormal',   { fg = '#f3f2f2',          bg = '#1f1f1f' })
  hi('TelescopePromptBorder',   { fg = '#696969',             bg = '#1f1f1f' })
  hi('TelescopePromptPrefix',   { fg = '#e46767',             bg = '#1f1f1f' })
  hi('TelescopePromptCounter',  { fg = '#b6afaf',  bg = '#1f1f1f' })
  hi('TelescopePromptTitle',    { fg = '#1f1f1f',             bg = '#e46767' })
  hi('TelescopePreviewTitle',   { fg = '#1f1f1f',             bg = '#d65c5c' })
  hi('TelescopeResultsTitle',   { fg = '#1f1f1f',             bg = '#cc6666' })
  hi('TelescopeSelection',      { fg = '#f3f2f2',          bg = '#2e2e2e' })
  hi('TelescopeSelectionCaret', { fg = '#e46767',             bg = '#2e2e2e' })
  hi('TelescopeMatching',       { fg = '#e46767',             bold = true })
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
