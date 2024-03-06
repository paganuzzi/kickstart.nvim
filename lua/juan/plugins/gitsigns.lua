return {
  'lewis6991/gitsigns.nvim',
  event = 'BufRead',
  cmd = 'GitSigns',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
}
