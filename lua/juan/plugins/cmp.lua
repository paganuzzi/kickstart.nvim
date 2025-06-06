return {
  'saghen/blink.cmp',
  event = { 'BufRead', 'InsertEnter', 'CmdlineEnter' },
  dependencies = {
    "folke/lazydev.nvim",
    {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
      dependencies = {
        'rafamadriz/friendly-snippets',
      },
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end
    },
  },
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    snippets = { preset = 'luasnip' },
    keymap = {
      preset = 'enter',
      ['<C-up>'] = { function(cmp)
        cmp.scroll_documentation_up(4)
      end },
      ['<C-down>'] = { function(cmp)
        cmp.scroll_documentation_down(4)
      end }
    },
    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },


    -- Disable cmdline
    cmdline = { enabled = false },

    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 500 }
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'lazydev' },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
      },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
