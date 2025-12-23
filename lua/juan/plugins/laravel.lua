return {
  'adalessa/laravel.nvim',
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
  },
  ft = { "php", "blade" },
  cmd = { "Laravel" },
  event = {
    "BufEnter composer.json",
  },
  keys = {
    { "<leader>fa", function() Laravel.pickers.artisan() end, desc = "Laravel: Open Artisan Picker" },
    { "<leader>fr", function() Laravel.pickers.routes() end,  desc = "Laravel: Open Routes Picker" },
  },
  opts = {
    lsp_server = "phpactor",
    debug_level = vim.log.levels.DEBUG,
    features = {
      pickers = {
        enable = true,
        provider = "telescope",
      },
    },
    extensions = {
      completion = { enable = false },
      composer_dev = { enable = false },
      composer_info = { enable = false },
      diagnostic = { enable = false },
      model_info = { enable = false },
      override = { enable = false },
      route_info = { enable = false, view = "simple" },
      tinker = { enable = false },
      dump_server = { enable = false },
      command_center = { enable = false }
    },
    user_providers = {},
  },
}
