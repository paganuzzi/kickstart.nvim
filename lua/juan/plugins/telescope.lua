return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for install instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },

    -- Useful for getting pretty icons, but requires special font.
    --  If you already have a Nerd Font, or terminal set up with fallback fonts
    --  you can enable this
    { 'nvim-tree/nvim-web-devicons' },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-up>'] = require('telescope.actions').preview_scrolling_up,
            ['<C-down>'] = require('telescope.actions').preview_scrolling_down,
          },
        },
        layout_strategy = 'vertical',
        layout_config = {
          vertical = {
            width = 0.97,
            height = 0.97,
            prompt_position = 'top',
            preview_cutoff = 5,
            mirror = true,
          },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- Enable telescope extensions, if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- See `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader><leader>h', builtin.help_tags, { desc = 'Search Help' })
    vim.keymap.set('n', '<leader><leader>k', builtin.keymaps, { desc = 'Search Keymaps' })
    vim.keymap.set('n', '<leader><leader>f', builtin.find_files, { desc = 'Search Files' })
    vim.keymap.set('n', '<leader><leader>g', builtin.git_files, { desc = 'Search Giles' })
    vim.keymap.set('n', '<leader><leader>s', builtin.builtin, { desc = 'Search Select Telescope' })
    vim.keymap.set('n', '<leader><leader>w', builtin.grep_string, { desc = 'Search current Word' })
    vim.keymap.set('n', '<leader><leader>l', builtin.live_grep, { desc = 'Search by Lrep' })
    vim.keymap.set('n', '<leader><leader>d', builtin.diagnostics, { desc = 'Search Diagnostics' })
    vim.keymap.set('n', '<leader><leader>r', builtin.resume, { desc = 'Search Resume' })
    vim.keymap.set('n', '<leader><leader>T', builtin.help_tags, { desc = 'Help Tags' })
    vim.keymap.set('n', '<leader><leader>.', builtin.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })

    -- Slightly advanced example of overriding default behavior and theme
    vim.keymap.set('n', '<leader>/', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '/ Fuzzily search in current buffer' })

    -- Also possible to pass additional configuration options.
    --  See `:help telescope.builtin.live_grep()` for information about particular keys
    vim.keymap.set('n', '<leader><leader>/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = 'Search / in Open Files' })

    -- Shortcut for searching your neovim configuration files
    vim.keymap.set('n', '<leader><leader>n', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = 'Search Neovim files' })
  end,
}
