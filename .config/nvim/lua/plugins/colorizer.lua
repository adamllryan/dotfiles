--[[
	Colorizer
	This plugin is used to colorize the color codes in the code. It is useful for
	the web developers who work with the color codes in the code.
	@require NvChad/nvim-colorizer.lua
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
}
