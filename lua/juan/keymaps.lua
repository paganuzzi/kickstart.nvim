--Musiquita
vim.keymap.set('n', '<leader>mp', '<cmd>Musica play<cr>', { desc = 'Pausa', silent = true })
vim.keymap.set('n', '<leader>ms', '<cmd>Musica next<cr>', { desc = 'Siguiente', silent = true })
vim.keymap.set('n', '<leader>ma', '<cmd>Musica prev<cr>', { desc = 'Anterior', silent = true })

--Terminal
vim.keymap.set('n', '<tab><tab>', ':botright split | startinsert | resize 10 | term<cr>',
	{ desc = 'Terminal', silent = true })
vim.keymap.set('n', '<leader>gl', ':startinsert | terminal lazygit<cr>', { desc = 'Lazygit', silent = true })

--Git
vim.keymap.set('n', '<leader>gs', '<cmd>:Gitsigns<cr>', { desc = 'GitSigns' })
vim.keymap.set('n', '<leader>gr', '<cmd>:Gvdiffsplit!<cr>', { desc = 'GitDiffSplit' })

--Bufers
vim.keymap.set('n', '<leader>ba', '<cmd>%bd<cr>', { desc = 'Borra todos los bufers' })
vim.keymap.set('n', '<leader>bd', '<cmd>bd<cr>', { desc = 'Borra el buffer actual' })
vim.keymap.set('n', '<leader>bp', '<cmd>bp<cr>', { desc = 'Buffer previo' })
vim.keymap.set('n', '<leader>bo', '<cmd>silent %bd|e#|bd#<cr>', { desc = 'Buffer Otros', silent = true })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set({ 'n', 't' }, '<C-left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set({ 'n', 't' }, '<C-right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set({ 'n', 't' }, '<C-down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 'n', 't' }, '<C-up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--Telescope
vim.keymap.set('n', '<C-p>', '<cmd>Telescope git_files<CR>', { desc = '[S]earch [G]it Files' })
vim.keymap.set('n', '<leader>,', '<cmd>Telescope buffers<CR>', { desc = '[S]earch [G]Buffers' })

--OIL
vim.keymap.set('n', '-', "<cmd>lua require('oil').toggle_float()<cr>", { desc = 'Oil Toggle Float', silent = true })

--Lazy
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'LazyVim' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--Save keymaps
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<Esc>:silent :w <CR>', { silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--Todo
vim.keymap.set('n', '<leader><leader>t', '<cmd>TodoTelescope<cr>', { desc = 'Todo List' })
