--[[
-- Colors and code highlights
--]]
return {
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				tailwind = true,
			},
			filetypes = {
				"css",
				"javascript",
				"html",
			},
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
		},
		opts = function(_, opts)
			opts.formatting = {
				format = require("tailwindcss-colorizer-cmp").formatter,
			}
		end,
	},
	{
		"RRethy/vim-illuminate",
		opts = {},
		config = function()
			require("illuminate").configure({
				filetypes_denylist = {
					"dirvish",
					"fugitive",
					"md",
					"org",
					"norg",
					"NvimTree",
				},
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		version = "v2.20.8",
		opts = {
			filetype_exclude = {
				"help",
				"alpha",
				"dashboard",
				"neo-tree",
				"Trouble",
				"lazy",
				"mason",
				"notify",
				"toggleterm",
				"lazyterm",
			},
		},
		config = function()
			require("indent_blankline").setup({
				space_char_blankline = "|",
				char_highlight_list = {
					"IndentBlanklineIndent1",
					"IndentBlanklineIndent2",
					"IndentBlanklineIndent3",
					"IndentBlanklineIndent4",
					"IndentBlanklineIndent5",
					"IndentBlanklineIndent6",
				},
			})
		end,
	},
	{
		"mvllow/modes.nvim",
		config = function()
			require("modes").setup({
				set_cursor = true,
				set_cursorline = true,
				set_number = true,
				ignore_filetypes = { "NvimTree", "TelescopePrompt" },
			})
		end,
	},
}
