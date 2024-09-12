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
