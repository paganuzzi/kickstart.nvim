return {
  'stevearc/conform.nvim',
  event = 'BufRead',
  opts = {
    notify_on_error = true,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      php = { 'pint' },
    },
  },
  setup = function()
    local util = require 'conform.util'
    local conform = require 'conform'
    conform.setup {
      formatters = {
        command = util.find_executable({
          'vendor/bin/pint',
        }, 'pint'),
        args = { '$FILENAME' },
        stdin = false,
      },
    }
  end,
}
