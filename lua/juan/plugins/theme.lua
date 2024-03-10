return {
  'rose-pine/neovim',
  event = 'VeryLazy',
  priority = 1000,
  name = 'rose-pine',
  config = function()
    local rosepine = require 'rose-pine'
    rosepine.setup { disable_background = true }
    vim.cmd 'colorscheme rose-pine'
  end,
}
