return {
  'adalessa/laravel.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'tpope/vim-dotenv',
    'MunifTanjim/nui.nvim',
    'nvim-treesitter/nvim-treesitter',
    'kevinhwang91/promise-async',
  },
  cmd = { 'Laravel' },
  keys = {
    { '<leader>fa', ':Laravel artisan<cr>', desc = 'Artisan' },
    { '<leader>fr', ':Laravel routes<cr>', desc = 'Routes' },
    { '<leader>fm', ':Laravel related<cr>', desc = 'Related' },
  },
  opts = {
    features = {
      model_info = {
        enable = false,
      },
      null_ls = {
        enable = false,
      },
      route_info = {
        enable = false, --- to enable the laravel.nvim virtual text
        position = 'right', --- where to show the info (available options 'right', 'top')
        middlewares = false, --- wheather to show the middlewares section in the info
        method = false, --- wheather to show the method section in the info
        uri = false, --- wheather to show the uri section in the info
      },
    },
    ui = {
      default = 'split',
      nui_opts = {
        split = {
          enter = true,
          relative = 'editor',
          position = 'right',
          size = '40%',
          buf_options = {},
          win_options = {
            number = false,
            relativenumber = false,
          },
        },
        popup = {
          enter = true,
          focusable = true,
          relative = 'editor',
          border = {
            style = 'rounded',
          },
          position = {
            row = '20%',
            col = '50%',
          },
          size = {
            width = '28%',
            height = '35%',
          },
          buf_options = {},
          win_options = {
            number = false,
            relativenumber = false,
          },
        },
      },
    },
  },
  config = true,
}
