return {
  'BlackLight/nvim-http',
  cmd = { 'Http', 'HttpStop' },
  config = function()
    vim.g['vim_http_clean_before_do'] = 1
    vim.g['vim_http_split_vertically'] = 1
    vim.g['vim_http_tempbuffer'] = 1
  end,
  keys = {
    { '<leader>rh', '<cmd>Http<cr>', desc = 'Http Run', silent = true },
    { '<leader>rs', '<cmd>HttpStop<cr>', desc = 'Http Stop', silent = true },
  },
}
