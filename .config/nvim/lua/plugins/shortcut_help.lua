return {
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 0
		end,
		opts = {
			triggers_nowait = {
				"<leader>",
			},
		},
		config = function()
			local wk = require("which-key")
			local keymaps = {
				mode = { "n", "v" },
				["<leader>b"] = { name = "+buffer" },
				["<leader>c"] = { name = "+comment" },
				["<leader>f"] = { name = "+file/find" },
				["g"] = { name = "+goto" },
				["gS"] = { "Splitjoin" },
				["<leader>r"] = {
					name = "re-",
				},
				["<leader>s"] = {
					name = "search",
					d = { "[S]earch LSP [D]efinition" },
					p = { "[S]earch [P]roject" },
					h = { "[S]earch [H]elp tags" },
					o = { ":Telescope oldfiles<CR>", "[S]earch Recent Files" },
					r = { "[R]esume [S]earch" },
				},
				["<leader>."] = { "Find File" },
				["<leader>,"] = { "Find Buffer" },
				["<leader>t"] = {
					name = "[T]oggle",
					c = { "Neorg Concealer" },
				},
				["<leader>w"] = {
					name = "Windows",
					v = { "Vertical Split" },
					s = { "Horizontal Split" },
					n = { "Focus Left" },
					i = { "Focus Right" },
					u = { "Focus Up" },
					e = { "Focus Down" },
					b = { "[B]alance Windows" },
					o = { "Close [O]ther Windows" },
					c = { "[C]lose Window" },
				},
			}
			wk.register(keymaps)
		end,
	},
	{
		"mrjones2014/legendary.nvim",
		-- since legendary.nvim handles all your keymaps/commands,
		-- its recommended to load legendary.nvim before other plugins
		priority = 10000,
		lazy = false,
		dependencies = { "kkharji/sqlite.lua", "stevearc/dressing.nvim" },
		-- sqlite is only needed if you want to use frecency sorting
		extensions = {
			which_key = {
				-- Automatically add which-key tables to legendary
				-- see WHICH_KEY.md for more details
				auto_register = true,
				-- you can put which-key.nvim tables here,
				-- or alternatively have them auto-register,
				-- see WHICH_KEY.md
				mappings = {},
				opts = {},
				-- controls whether legendary.nvim actually binds they keymaps,
				-- or if you want to let which-key.nvim handle the bindings.
				-- if not passed, true by default
				do_binding = true,
				-- controls whether to use legendary.nvim item groups
				-- matching your which-key.nvim groups; if false, all keymaps
				-- are added at toplevel instead of in a group.
				use_groups = true,
			},
		},
	},
}
