vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank { timeout = 50 }
  end,
})

vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Llama a treesiter blade',
  pattern = '*.blade.php',
  group = vim.api.nvim_create_augroup('Blade', { clear = true }),
  callback = function()
    require 'juan.treesiter-blade'
  end,
})

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*',
--   callback = function(args)
--     require('conform').format { bufnr = args.buf }
--     print 'hola'
--   end,
-- })

vim.api.nvim_create_autocmd('BufWritePost', {
  desc = 'Corre test de php',
  pattern = { '*.test.php', '*Test.php' },
  group = vim.api.nvim_create_augroup('Test', { clear = true }),
  callback = function()
    vim.cmd 'Neotest run'
  end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
  desc = 'Corre una request http ',
  pattern = { '*.http' },
  group = vim.api.nvim_create_augroup('HTTPRequest', { clear = true }),
  callback = function()
    vim.cmd 'lua require("kulala").run()'
  end,
})
