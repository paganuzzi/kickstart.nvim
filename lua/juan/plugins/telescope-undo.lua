return {
  'debugloop/telescope-undo.nvim',
  dependencies = { -- note how they're inverted to above example
    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
  },
  keys = {
    { '<leader>su', '<cmd>Telescope undo<cr>', desc = 'undo history' },
  },
  config = function(_, opts)
    local opts = {
      extensions = {
        undo = {
          mappings = {
            i = {
              ['<cr>'] = require('telescope-undo.actions').yank_deletions,
              ['<S-cr>'] = require('telescope-undo.actions').yank_additions,
              ['<C-cr>'] = require('telescope-undo.actions').restore,
            },
            n = {
              ['y'] = require('telescope-undo.actions').yank_additions,
              ['Y'] = require('telescope-undo.actions').yank_deletions,
              ['u'] = require('telescope-undo.actions').restore,
            },
          },
          use_delta = false,
          side_by_side = false,
          layout_strategy = 'horizontal',
          layout_config = {
            preview_width = 0.7,
          },
        },
      },
    }
    require('telescope').setup(opts)
    require('telescope').load_extension 'undo'
  end,
}
