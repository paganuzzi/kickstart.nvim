return {
  'vim-test/vim-test',
  cmd = {
    'TestNearest',
  },
  dependencies = {
    'tpope/vim-dispatch',
  },
  config = function()
    vim.g['test#strategy'] = 'dispatch_background'
    -- vim.g['test#neovim#term_position'] = 'vert'
    -- vim.g['test#neovim_sticky#kill_previous'] = 1
    -- vim.g['test#neovim_sticky#reopen_window'] = 1
    -- vim.g['test#preserve_screen'] = 0
    --   vim.g['dispatch_compilers["php artisan"]'] = 'test'
    -- end
    -- vim.g['test#php#runner'] = 'phpunit'
  end,
  keys = {
    { '<leader>tr', '<cmd>TestNearest<cr>', desc = 'Test TestNearest' },
    { '<leader>tf', '<cmd>TestFile<cr>', desc = 'Test TestFile' },
    { '<leader>ta', '<cmd>TestSuite<cr>', desc = 'Test TestSuite' },
    { '<leader>tl', '<cmd>TestLast<cr>', desc = 'Test TestLast' },
    { '<leader>tv', '<cmd>TestVisit<cr>', desc = 'Test File TestVisit' },
    { '<leader>to', '<cmd>Copen<cr>', desc = 'Test Result' },
    { '<leader>ts', '<cmd>Telescope quickfixhistory<cr>', desc = 'Test History' },
  },
}
