return {
	'nvim-treesitter/nvim-treesitter-textobjects',
	dependencies = { 'nvim-treesitter/nvim-treesitter' },
	config = function()
		require("nvim-treesitter-textobjects").setup {
			select = {
				-- Automatically jump forward to textobj, similar to targets.vim
				lookahead = true,
				selection_modes = {
					['@parameter.outer'] = 'v', -- charwise
					['@function.outer'] = 'V', -- linewise
					-- ['@class.outer'] = '<c-v>', -- blockwise
					include_surrounding_whitespace = false,
				},
			},
			move = {
				set_jumps = true,
			},
		}



		--Selects
		local seleccion = require("nvim-treesitter-textobjects.select")

		vim.keymap.set({ "x", "o" }, "of", function()
			seleccion.select_textobject("@function.outer", "textobjects")
		end, { desc = "FuncOuter" })
		vim.keymap.set({ "x", "o" }, "if", function()
			seleccion.select_textobject("@function.inner", "textobjects")
		end, { desc = "FuncInner" })
		vim.keymap.set({ "x", "o" }, "oc", function()
			seleccion.select_textobject("@class.outer", "textobjects")
		end, { desc = "ClassOuter" })
		vim.keymap.set({ "x", "o" }, "ic", function()
			seleccion.select_textobject("@class.inner", "textobjects")
		end, { desc = "ClassInner" })


		--Moves
		local move = require("nvim-treesitter-textobjects.move")

		vim.keymap.set({ "n", "x", "o" }, "]m", function()
			move.goto_next_start("@function.outer", "textobjects")
		end, { desc = "Siguiente función (inicio)" })

		vim.keymap.set({ "n", "x", "o" }, "]]", function()
			move.goto_next_start("@class.outer", "textobjects")
		end, { desc = "Siguiente clase (inicio)" })

		vim.keymap.set({ "n", "x", "o" }, "]o", function()
			move.goto_next_start({ "@loop.inner", "@loop.outer" }, "textobjects")
		end, { desc = "Siguiente bucle (inicio)" })

		vim.keymap.set({ "n", "x", "o" }, "]s", function()
			move.goto_next_start("@local.scope", "locals")
		end, { desc = "Siguiente ámbito local" })

		vim.keymap.set({ "n", "x", "o" }, "]z", function()
			move.goto_next_start("@fold", "folds")
		end, { desc = "Siguiente pliegue" })

		vim.keymap.set({ "n", "x", "o" }, "]M", function()
			move.goto_next_end("@function.outer", "textobjects")
		end, { desc = "Siguiente función (fin)" })

		vim.keymap.set({ "n", "x", "o" }, "][", function()
			move.goto_next_end("@class.outer", "textobjects")
		end, { desc = "Siguiente clase (fin)" })

		vim.keymap.set({ "n", "x", "o" }, "[m", function()
			move.goto_previous_start("@function.outer", "textobjects")
		end, { desc = "Anterior función (inicio)" })

		vim.keymap.set({ "n", "x", "o" }, "[[", function()
			move.goto_previous_start("@class.outer", "textobjects")
		end, { desc = "Anterior clase (inicio)" })

		vim.keymap.set({ "n", "x", "o" }, "[M", function()
			move.goto_previous_end("@function.outer", "textobjects")
		end, { desc = "Anterior función (fin)" })

		vim.keymap.set({ "n", "x", "o" }, "[]", function()
			move.goto_previous_end("@class.outer", "textobjects")
		end, { desc = "Anterior clase (fin)" })

		vim.keymap.set({ "n", "x", "o" }, "]d", function()
			move.goto_next("@conditional.outer", "textobjects")
		end, { desc = "Siguiente condicional" })

		vim.keymap.set({ "n", "x", "o" }, "[d", function()
			move.goto_previous("@conditional.outer", "textobjects")
		end, { desc = "Anterior condicional" })


		--Repeticion de Movimientos
		local repeatmoves = require "nvim-treesitter-textobjects.repeatable_move"

		vim.keymap.set({ "n", "x", "o" }, ";", repeatmoves.repeat_last_move_next,
			{ desc = "Repetir movimiento (siguiente)" })
		vim.keymap.set({ "n", "x", "o" }, ",", repeatmoves.repeat_last_move_previous,
			{ desc = "Repetir movimiento (anterior)" })
		vim.keymap.set({ "n", "x", "o" }, "f", repeatmoves.builtin_f_expr,
			{ expr = true, desc = "Buscar carácter adelante (repetible)" })
		vim.keymap.set({ "n", "x", "o" }, "F", repeatmoves.builtin_F_expr,
			{ expr = true, desc = "Buscar carácter atrás (repetible)" })
		vim.keymap.set({ "n", "x", "o" }, "t", repeatmoves.builtin_t_expr,
			{ expr = true, desc = "Mover hasta carácter adelante (repetible)" })
		vim.keymap.set({ "n", "x", "o" }, "T", repeatmoves.builtin_T_expr,
			{ expr = true, desc = "Mover hasta carácter atrás (repetible)" })
	end
}
