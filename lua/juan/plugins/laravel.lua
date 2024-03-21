return {
  'adalessa/laravel.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'tpope/vim-dotenv',
    'MunifTanjim/nui.nvim',
    'nvimtools/none-ls.nvim',
  },
  cmd = { 'Sail', 'Artisan', 'Composer', 'Npm', 'Yarn', 'Laravel' },
  keys = {
    { '<leader>fa', ':Laravel artisan<cr>', desc = 'Artisan' },
    { '<leader>fr', ':Laravel routes<cr>', desc = 'Routes' },
    { '<leader>fm', ':Laravel related<cr>', desc = 'Related' },
    { '<leader>ft', ':Laravel test:watch<cr>', desc = 'Test Watch' },
  },
  config = true,
}
