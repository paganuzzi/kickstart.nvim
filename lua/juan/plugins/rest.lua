return {
  'rest-nvim/rest.nvim',
  lazy = false,
  ft = 'http',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-treesitter/nvim-treesitter',
    {
      'vhyrro/luarocks.nvim',
      config = function()
        require('luarocks').setup { rocks = { 'lua-curl', 'xml2lua' } }
      end,
    },
  },
  config = function()
    require('rest-nvim').setup()
  end,
}
