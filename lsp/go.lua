require('mason')
local mod_cache = nil

return {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_dir = function(bufnr,on_dir)
      local fname = vim.api.nvim_buf_get_name(bufnr)
    local cwd = assert(vim.uv.cwd())
    local root = vim.fs.root(fname, { 'go.work', 'go.mod', '.git' })

	    on_dir(root and vim.fs.relpath(cwd, root) and cwd)

    end,
    single_file_support = true,
  }
