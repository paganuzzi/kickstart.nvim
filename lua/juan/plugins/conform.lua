return {
  'stevearc/conform.nvim',
  event = 'BufRead',
  config = function()
    local util = require 'conform.util'
    local conform = require 'conform'
    conform.setup {
      notify_no_formatters = false,
      notify_on_error = false,
      format_on_save = false,
      formatters = {
        command = util.find_executable({
          'vendor/bin/pint',
        }, 'pint'),
        args = { '$FILENAME' },
        stdin = false,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        php = { 'pint' },
        yaml = { 'yamlfmt' },
        go = { 'gofmt' },
      },
    }
  end,
}
