return {
  'nvim-neotest/neotest',
  enabled = false,
  cmd = 'Neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'V13Axel/neotest-pest',
    'olimorris/neotest-phpunit',
  },
  keys = {
    { '<leader>tr', [[:Neotest run<cr>]], desc = 'Neotest run' },
    { '<leader>ts', [[:Neotest summary<cr>]], desc = 'Neotest summary' },
    { '<leader>tl', [[:Neotest run last<cr>]], desc = 'Neotest run last' },
    { '<leader>tw', ':lua require("neotest").watch.watch()<cr>', desc = 'Neotest Watch' },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-phpunit',
        require 'neotest-pest',
      },
      consumers = {
        output = {
          OpenArgs = {
            auto_close = true,
            enter = true,
          },
        },
      },
    }
  end,
}
