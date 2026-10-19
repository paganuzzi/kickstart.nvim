return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = 'BufRead',
  config = function()
    local treesitter = require('nvim-treesitter')

    treesitter.setup {
      install_dir = vim.fn.stdpath('config') .. '/parser',
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }

    treesitter.install { 'go', 'bash', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'php', 'javascript' }
  end,
}
