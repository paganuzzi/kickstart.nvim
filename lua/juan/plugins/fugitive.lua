return {
  'tpope/vim-fugitive',
  -- enabled = false,
  cmd = { 'Git', 'G', 'Gvdiffsplit', 'Gllog' },
  keys = {
    { '<leader>gf', ':Git<cr>', desc = 'Git Fugitive' },
    { '<leader>gp', ':Git push<cr>', desc = 'Git Fugitive Push' },
    { '<leader>gd', ':Gllog<cr>', desc = 'Git Logs' },
    { '<leader>gi', ':G add -i<cr>', desc = 'Git add interactive' },
    { '<leader>gt', ':G<cr>', desc = 'Git Status' },
  },
}
