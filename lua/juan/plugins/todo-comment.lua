return {
  'folke/todo-comments.nvim',
  cmd = 'TodoTelescope',
  event = 'BufRead',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
}
