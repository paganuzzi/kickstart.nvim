return {
  "tpope/vim-fugitive",
  -- enabled = false,
  cmd = { "Git", "G", "Gvdiffsplit" },
  keys = {
    { "<leader>gf", ":Git<cr>", desc = "Git Fugitive" },
    { "<leader>gp", ":Git push<cr>", desc = "Git Fugitive Push" },
  },
}
