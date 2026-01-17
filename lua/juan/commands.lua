--Harpoon
vim.api.nvim_create_user_command('HarpoonAdd', function()
  local harpoon = require 'harpoon'
  harpoon:list():add()
end, {})

vim.api.nvim_create_user_command('HarpoonMenu', function()
  local harpoon = require 'harpoon'
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, {})

vim.api.nvim_create_user_command('HarpoonPrev', function()
  local harpoon = require 'harpoon'
  harpoon:list():prev()
end, {})

vim.api.nvim_create_user_command('HarpoonNext', function()
  local harpoon = require 'harpoon'
  harpoon:list():next()
end, {})

vim.api.nvim_create_user_command('HarpoonPin', function()
  local harpoon = require 'harpoon'
  harpoon:list():select(1)
end, {})

--Musiquita

vim.api.nvim_create_user_command('Musica', function(arg)
  if arg.args == 'play' then
    vim.system { 'playerctl', 'play-pause' }
  end
  if arg.args == 'next' then
    vim.system { 'playerctl', 'next' }
  end
  if arg.args == 'prev' then
    vim.system { 'playerctl', 'previous' }
  end
end, { nargs = 1 })

--Opencode
vim.api.nvim_create_user_command('OpenCode', function()
  require("opencode").toggle()
end, {})
