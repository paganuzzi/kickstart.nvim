return {
  'ThePrimeagen/harpoon',
  event = 'BufRead',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<C-a>', function()
      harpoon:list():append()
    end)
    vim.keymap.set('n', '<leader>hh', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<A-left>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<A-right>', function()
      harpoon:list():next()
    end)
  end,
}
