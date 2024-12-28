return {
  'mistweaverco/kulala.nvim',
  config = true,
  -- cmd = { 'HttpRun', 'HttpReplay', 'HttpInspect', 'HttpScratchpad', 'HttpPrevious', 'HttpNext', 'HttpSearch' },
  opts = {
    default_view = 'headers_body',
    split_direction = 'horizontal',
  },
  keys = {
    { '<leader>rr', '<cmd>lua require("kulala").run()<cr>', desc = 'Http Run' },
    { '<leader>ry', '<cmd>lua require("kulala").replay()<cr>', desc = 'Http Replay' },
    { '<leader>ri', '<cmd>lua require("kulala").inspect()<cr>', desc = 'Http Inspect' },
    { '<leader>rh', '<cmd>lua require("kulala").scratchpad()<cr>', desc = 'Http Scratch' },
    { '<leader>rp', '<cmd>lua require("kulala").jump_prev()<cr>', desc = 'Http Prev' },
    { '<leader>rn', '<cmd>lua require("kulala").jump_next()<cr>', desc = 'Http Next' },
    { '<leader>rs', '<cmd>lua require("kulala").search()<cr>', desc = 'Http Search' },
  },
}
