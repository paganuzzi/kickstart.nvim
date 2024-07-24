return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    local wk = require 'which-key'

    wk.add {
      { '<leader>b', desc = 'Buffers' },
      { '<leader>c', desc = 'Code' },
      { '<leader>d', desc = 'Document' },
      { '<leader>f', desc = 'Laravel' },
      { '<leader>g', desc = 'Git' },
      { '<leader>h', desc = 'Harpoon' },
      { '<leader>l', desc = 'Lazy' },
      { '<leader>r', desc = 'Api Rest' },
      { '<leader><leader>', desc = 'Search' },
      { '<leader>t', desc = 'Test' },
      { '<leader>w', desc = 'Workspace' },
    }

    wk.setup {
      icons = {
        mappings = false,
      },
    }
  end,
}
