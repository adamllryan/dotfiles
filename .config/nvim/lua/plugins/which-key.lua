return {
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
}
