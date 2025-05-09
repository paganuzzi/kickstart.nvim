return {
    "mason-org/mason.nvim",
    cmd = { 'Mason', 'MasonInstall', 'MasonUninstall' },
    event = { 'BufRead' },
    config = true,
    dependencies = {
        { 'j-hui/fidget.nvim', opts = {} }
    }
}
