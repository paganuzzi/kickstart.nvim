return {
  'stevearc/conform.nvim',
  event = 'BufRead',
  config = function()
    local conform = require 'conform'

    conform.setup {
      format_on_save = {
        timeout_ms = 800,
      },
      notify_on_error = true,
      notify_no_formatters = true,
      default_format_opts = {
        lsp_format = 'fallback',
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        php = { 'pint' },
        -- lsp_format = 'fallback' },
        blade = { 'prettier' },
        ['_'] = { 'prettier' },
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
