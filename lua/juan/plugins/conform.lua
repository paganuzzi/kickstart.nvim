return {
  'stevearc/conform.nvim',
  event = 'BufRead',
  opts = {
    notify_on_error = false,
    quiet = true,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters = {
      print = {
        command = './vendor/bin/pint',
      },
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      php = { 'pint' },
    },
  },
}
