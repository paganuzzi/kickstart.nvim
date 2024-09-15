return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  keys = {
    { '<C-a>', '<cmd>HarpoonAdd<cr>', desc = 'Harpoon add' },
    { '<leader>h', '<cmd>HarpoonMenu<cr>', desc = 'Harpoon Menu' },
    { '<A-left>', '<cmd>HarpoonPrev<cr>', desc = 'Harpoon Prev' },
    { '<A-right>', '<cmd>HarpoonNext<cr>', desc = 'Harpoon Next' },
  },
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
