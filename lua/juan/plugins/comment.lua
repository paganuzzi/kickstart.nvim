return {
  'folke/ts-comments.nvim',
  event = { 'BufRead' },
  opts = {
    lang = {
      blade = '<!-- %s -->',
    },
  },
  enabled = vim.fn.has 'nvim-0.10.0' == 1,
}
