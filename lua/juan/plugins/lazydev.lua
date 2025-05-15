return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      integrations = {
        lspconfig = true,
        cmp = true,
      },
      library = {
        { path = vim.env.VIMRUNTIME,   words = { "vim" } },
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
      enabled = function(root_dir)
        return vim.g.lazydev_enabled == nil and true or vim.g.lazydev_enabled
      end
    },
  },
}
