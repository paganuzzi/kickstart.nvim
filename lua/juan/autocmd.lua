vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank { timeout = 50 }
  end,
})

-- vim.api.nvim_create_autocmd('BufEnter', {
--   desc = 'Set blade filetype',
--   pattern = '*.blade.php',
--   group = vim.api.nvim_create_augroup('Blade', { clear = true }),
--   callback = function()
--     vim.set.filetype = 'blade'
--   end,
-- })
