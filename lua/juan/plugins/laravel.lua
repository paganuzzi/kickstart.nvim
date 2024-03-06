return {
  'adalessa/laravel.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'tpope/vim-dotenv',
    'MunifTanjim/nui.nvim',
    'nvimtools/none-ls.nvim',
  },
  cmd = { 'Sail', 'Artisan', 'Composer', 'Npm', 'Yarn', 'Laravel' },
  -- keys = {
  --   { "<leader>fla", ":Laravel artisan<cr>" },
  --   { "<leader>far", ":Laravel routes<cr>" },
  --   { "<leader>fam", ":Laravel related<cr>" },
  -- },
  config = true,
  opts = {
    register_user_commands = true,
    ui = {
      default = 'split',
      nui_opts = {
        split = {
          enter = true,
          relative = 'editor',
          position = 'bottom',
          size = '50%',
          buf_options = {},
          win_options = {
            number = false,
            relativenumber = false,
          },
        },
      },
    },
    features = {
      null_ls = {
        enable = true,
      },
      route_info = {
        enable = false,
        position = 'top',
      },
    },
  },
}
