return {
  "heilgar/nvim-http-client",
  ft = { "http", "rest" },
  config = function()
    require("http_client").setup({
      default_env_file = '.env.json',
      request_timeout = 30000,
      split_direction = "below",
      create_keybindings = true,
      keybindings = {
        select_env_file = "<leader>rf",
        set_env = "<leader>re",
        run_request = "<leader>rr",
        stop_request = "<leader>rx",
        toggle_verbose = "<leader>rv",
        toggle_profiling = "<leader>rp",
        dry_run = "<leader>rd",
        copy_curl = "<leader>rc",
        save_response = "<leader>rs",
        set_project_root = "<leader>rg",
        get_project_root = "<leader>rgg",
      },
      profiling = {
        enabled = true,
        show_in_response = false,
        detailed_metrics = true,
      },
    })
    if pcall(require, "telescope") then
      require("telescope").load_extension("http_client")
    end
  end,
}
