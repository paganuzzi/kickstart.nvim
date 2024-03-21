return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>b'] = { name = 'Buffers', _ = 'which_key_ignore' },
      ['<leader>c'] = { name = 'Code', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = 'Document', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = 'Laravel', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Harpoon', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = 'Lazy', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = 'Api Rest', _ = 'which_key_ignore' },
      ['<leader><leader>'] = { name = 'Search', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = 'Test', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = 'Workspace', _ = 'which_key_ignore' },
    }
  end,
}
