return {
  'folke/neodev.nvim',
  dependencies = { 'neovim/nvim-lspconfig' },
  event = 'BufRead',
  setup = function()
    -- then setup your lsp server as usual
    local lspconfig = require 'lspconfig'

    -- example to setup lua_ls and enable call snippets
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          completion = {
            callSnippet = 'Replace',
          },
        },
      },
    }
  end,
}
