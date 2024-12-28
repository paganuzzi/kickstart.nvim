return {
  'nvim-treesitter/nvim-treesitter',
  event = 'BufNew',
  build = ':TSUpdate',
  config = function()
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'bash', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'php', 'javascript' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
