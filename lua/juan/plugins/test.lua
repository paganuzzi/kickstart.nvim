return {
  'vim-test/vim-test',
  cmd = {
    'TestNearest',
  },
  dependencies = {
    'tpope/vim-dispatch',
  },
  config = function()
    vim.g['test#enabled_runners'] = { 'php#phpunit' }
    vim.g['test#php#phpunit#executable'] = 'php artisan test'
    vim.g['test#strategy'] = 'neovim_sticky'
    vim.g['test#neovim#term_position'] = 'vert'
    vim.g['test#neovim#kill_previous'] = 1
    vim.g['test#neovim#reopen_window'] = 1
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
