return {
  'stevearc/conform.nvim',
  event = 'BufRead',
  config = function()
    local util = require 'conform.util'
    local conform = require 'conform'

    conform.setup {
      format_on_save = true,
      formatters_by_ft = {
        lua = { 'stylua' },
        php = { 'pint', lsp_format = 'prefer' },
        yaml = { 'yamlfmt' },
        go = { 'gofmt' },
        blade = { 'prettier' },
        html = { 'prettier' },
      },
    }
    conform.formatters.prettier = {
      options = {
        ft_parsers = {
          blade = 'html',
        },
      },
    }
  end,
}
