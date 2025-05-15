vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
	callback = function(event)
		local custom_capabilities = {
			textDocument = {
				foldingRange = {
					dynamicRegistration = false,
					lineFoldingOnly = true
				}
			}
		}
		require("lazy").load({ plugins = { "blink.cmp" } }) -- Fuerza carga de blink.cmp
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client then
			client.capabilities = vim.tbl_deep_extend(
				"force",
				client.capabilities,
				require("blink.cmp").get_lsp_capabilities(),
				custom_capabilities
			)
		end

		local map = function(keys, func, desc)
			vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
		end

		-- Jump to the definition of the word under your cursor.
		--  This is where a variable was first declared, or where a function is defined, etc.
		--  To jump back, press <C-T>.
		map('gd', require('telescope.builtin').lsp_definitions, 'Goto Definition')

		-- Find references for the word under your cursor.
		map('gr', require('telescope.builtin').lsp_references, 'Goto References')

		-- Jump to the implementation of the word under your cursor.
		--  Useful when your language has ways of declaring types without an actual implementation.
		map('gI', require('telescope.builtin').lsp_implementations, 'Goto Implementation')

		-- Jump to the type of the word under your cursor.
		--  Useful when you're not sure what type a variable is and you want to see
		--  the definition of its *type*, not where it was *defined*.
		map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type Definition')

		-- Fuzzy find all the symbols in your current document.
		--  Symbols are things like variables, functions, types, etc.
		map('<leader>ds', require('telescope.builtin').lsp_document_symbols, 'Document Symbols')

		-- Fuzzy find all the symbols in your current workspace
		--  Similar to document symbols, except searches over your whole project.
		map('<leader>cs', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Workspace Symbols')

		-- Rename the variable under your cursor
		--  Most Language Servers support renaming across files, etc.
		map('<leader>cr', vim.lsp.buf.rename, 'Rename')

		-- Execute a code action, usually your cursor needs to be on top of an error
		-- or a suggestion from your LSP for this to activate.
		map('<leader>ca', vim.lsp.buf.code_action, 'Code Action')

		-- Opens a popup that displays documentation about the word under your cursor
		--  See `:help K` for why this keymap
		map('K', vim.lsp.buf.hover, 'Hover Documentation')

		map('gD', vim.lsp.buf.declaration, 'Goto Declaration')

		-- The following two autocommands are used to highlight references of the
		-- word under your cursor when your cursor rests there for a little while.
		--    See `:help CursorHold` for information about when this is executed
		--
		-- When you move your cursor, the highlights will be cleared (the second autocommand).
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client.server_capabilities.documentHighlightProvider then
			vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
				buffer = event.buf,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
				buffer = event.buf,
				callback = vim.lsp.buf.clear_references,
			})
		end
	end,
})


vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank { timeout = 50 }
	end,
})

vim.api.nvim_create_autocmd('BufEnter', {
	desc = 'Llama a treesiter blade',
	pattern = '*.blade.php',
	group = vim.api.nvim_create_augroup('Blade', { clear = true }),
	callback = function()
		require 'juan.treesiter-blade'
	end,
})

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*',
--   callback = function(args)
--     require('conform').format { bufnr = args.buf }
--     print 'hola'
--   end,
-- })

vim.api.nvim_create_autocmd('BufWritePost', {
	desc = 'Corre test de php',
	pattern = { '*.test.php', '*Test.php' },
	group = vim.api.nvim_create_augroup('Test', { clear = true }),
	callback = function()
		vim.cmd 'Neotest run'
	end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
	desc = 'Corre una request http ',
	pattern = { '*.http' },
	group = vim.api.nvim_create_augroup('HTTPRequest', { clear = true }),
	callback = function()
		vim.cmd 'lua require("kulala").run()'
	end,
})
