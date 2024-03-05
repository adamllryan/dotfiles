return {
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
}
