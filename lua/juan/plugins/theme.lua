return {
  'rose-pine/neovim',
  event = 'VeryLazy',
  priority = 1000,
  name = 'rose-pine',
  init = function()
    vim.cmd 'colorscheme rose-pine'
  end,
  config = true,
}
