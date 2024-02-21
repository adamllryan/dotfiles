-- Nicer filetree than NetRW
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				window = {

					mappings = {
						["<space>"] = {
							"close_window",
						},
					},
				},
			})
			require("helpers.keys").map(
				{ "n", "v" },
				"<leader>e",
				"<cmd>NeoTreeFocusToggle<cr>",
				"Toggle file explorer"
			)
		end,
	},
}
