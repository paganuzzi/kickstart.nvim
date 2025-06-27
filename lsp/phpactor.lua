require('mason')
return {
  cmd = { 'phpactor', 'language-server' },
  filetypes = { 'php', 'blade' },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    local cwd = assert(vim.uv.cwd())
    local root = vim.fs.root(fname, { 'composer.json', '.git', '.phpactor.json', '.phpactor.yml' })

    -- prefer cwd if root is a descendant
    on_dir(root and vim.fs.relpath(cwd, root) and cwd)
  end,
  init_options = {
    ["language_server_configuration.auto_config"] = false,
    ["language_server_worse_reflection.inlay_hints.enable"] = true,
    ["language_server_worse_reflection.inlay_hints.types"] = true,
    ["language_server_worse_reflection.inlay_hints.params"] = true,
    ["code_transform.import_globals"] = false,
    ["indexer.exclude_patterns"] = {
      "/vendor/**/Tests/**/*",
      "/vendor/**/tests/**/*",
      "/vendor/composer/**/*",
      "/vendor/laravel/fortify/workbench/**/*",
      "/vendor/filament/forms/.stubs.php",
      "/vendor/filament/notifications/.stubs.php",
      "/vendor/filament/tables/.stubs.php",
      "/vendor/filament/actions/.stubs.php",
      "/storage/framework/cache/**/*",
      "/storage/framework/views/**/*",
      "vendor/kirschbaum-development/eloquent-power-joins/.stubs.php",
      "/vendor/**/_ide_helpers.php",
    },
    ["php_code_sniffer.enabled"] = false,

    ["language_server_phpstan.enabled"] = false,
    ["language_server_phpstan.level"] = "10",
    ["language_server_phpstan.bin"] = "%project_root%/vendor/bin/phpstan",
    ["language_server_phpstan.mem_limit"] = "2048M",
  },
}
-- return {
--   cmd = { 'phpactor', 'language-server', '-vvv' },
--   filetypes = { 'php', 'blade' },
--   root_dir = function(bufnr, on_dir)
--     local fname = vim.api.nvim_buf_get_name(bufnr)
--     local cwd = assert(vim.uv.cwd())
--     local root = vim.fs.root(fname, { 'composer.json', '.git', '.phpactor.json', '.phpactor.yml' })
--
--     -- prefer cwd if root is a descendant
--     on_dir(root and vim.fs.relpath(cwd, root) and cwd)
--   end,
-- }
