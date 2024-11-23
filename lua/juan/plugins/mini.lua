return {
  event = 'BufRead',
  'echasnovski/mini.nvim',
  dependencies = {
    { 'echasnovski/mini.pairs', version = '*' },
  },
  config = function()
    require('mini.surround').setup()
    require('mini.pairs').setup()
  end,
}
