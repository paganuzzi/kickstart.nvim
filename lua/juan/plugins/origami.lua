return {
  'chrisgrieser/nvim-origami',
  { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' },
  keys = {
    {
      '<Left>',
      function()
        require('origami').h()
      end,
    },
    {
      '<Right>',
      function()
        require('origami').l()
      end,
    },
  },
  opts = {
    keepFoldsAcrossSessions = true,
    pauseFoldsOnSearch = true,
    setupFoldKeymaps = false,

    -- `h` key opens on first column, not at first non-blank character or before
    hOnlyOpensOnFirstColumn = false,
  },
}
