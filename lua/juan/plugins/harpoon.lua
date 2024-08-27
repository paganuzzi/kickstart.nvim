return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  keys = function()
    local harpoon = require 'harpoon'

    return {
      {
        '<C-a>',
        function()
          harpoon:list():add()
        end,
      },
      {
        '<leader>ht',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list 'test')
        end,
        desc = 'Harpoon Test list',
      },
      {
        '<leader>hh',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon Menu',
      },
      {
        '<A-left>',
        function()
          harpoon:list():prev()
        end,
        desc = 'Harpoon Prev',
      },
      {
        '<A-right>',
        function()
          harpoon:list():next()
        end,
        desc = 'Harpoon Next',
      },
    }
  end,
  config = true,
  opts = {
    settings = {
      save_on_toggle = true,
      sync_on_ui_close = true,
      key = function()
        return vim.loop.cwd()
      end,
    },
  },
}
