return {
  "heilgar/nvim-http-client",
  ft = { "http", "rest" },
  config = function()
    require("http_client").setup({
      default_env_file = '.env.json',
      request_timeout = 30000,
      split_direction = "below",
      create_keybindings = true,
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
