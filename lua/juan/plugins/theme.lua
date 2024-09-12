return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = 'mocha',
        dark = 'mocha',
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = false,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}
