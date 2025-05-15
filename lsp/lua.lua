return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" }, -- Neovim usa LuaJIT
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,   -- Incluye la API de Neovim
          "${3rd}/luv/library", -- Soporte para luv
        },                      -- Evita prompts de terceros
      },
      completion = {
        callSnippet = "Replace",
      },
      hint = {
        enable = true, -- Habilita inlay hints
      },
    },
  },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
}
