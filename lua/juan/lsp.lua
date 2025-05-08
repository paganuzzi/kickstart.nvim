local capabilities = vim.lsp.protocol.make_client_capabilities()
vim.lsp.config('*', {
  root_markers = { '.git' },
  capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
})

vim.lsp.enable({ 'lua', 'typescript', 'html', 'phpactor', 'pyright', 'tailwind' })
