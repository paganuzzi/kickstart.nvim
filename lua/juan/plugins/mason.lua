return{
    "mason-org/mason.nvim",
    cmd={'Mason','MasonInstall','MasonUninstall'},
    lazy=false,
    config=true,
    dependencies={
     { 'j-hui/fidget.nvim', opts = {} } 
  }
}
