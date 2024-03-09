return {
  'vim-test/vim-test',
  enabled = false,
  cmd = {
    'TestNearest',
  },
  config = function()
    vim.g['test#neovim#start_normal'] = '1'
    vim.g['test#strategy'] = 'neovim'
    -- vim.g["test#strategy"] = "harpoon"
    -- vim.g["test#harpoon_term"] = 100
    vim.g['test#neovim#term_position'] = 'vert'
    vim.g['test#preserve_screen'] = 0
    vim.g['test#echo_command'] = 0
    if vim.fn.filereadable './artisan' == 1 then
      print 'artisan'
      vim.g['test#php#phpunit#executable'] = 'php artisan test'
    else
      print 'phpunit'
      vim.g['test#php#phpunit#executable'] = './vendor/bin/phpunit'
    end

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
