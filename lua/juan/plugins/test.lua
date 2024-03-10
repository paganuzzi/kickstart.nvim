return {
  'vim-test/vim-test',
  -- enabled = false,
  cmd = {
    'TestNearest',
  },
  dependencies = {
    'akinsho/toggleterm.nvim',
    'tpope/vim-dispatch',
  },
  config = function()
    vim.g['test#strategy'] = 'dispatch_background'
    -- if vim.fn.filereadable './artisan' == 1 then
    --   vim.g['dispatch_compilers["php artisan"]'] = 'test'
    -- end
    --
    vim.g['test#enabled_runners'] = { 'php#phpunit' }
  end,
  keys = {
    { '<leader>tr', ':TestNearest<CR>', desc = 'Test TestNearest' },
    { '<leader>tf', ':TestFile<CR>', desc = 'Test TestFile' },
    { '<leader>ta', ':TestSuite<CR>', desc = 'Test TestSuite' },
    { '<leader>tl', ':TestLast<CR>', desc = 'Test TestLast' },
    { '<leader>tv', ':TestVisit<CR>', desc = 'Test TestVisit' },
  },
}
