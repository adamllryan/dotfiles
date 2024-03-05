--[[

Plugins for git integration

1. lewis6991/gitsigns.nvim
2. akinsho/git-conflict.nvim
3. tpope/vim-fugitive

--]]

return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"akinsho/git-conflict.nvim",
		commit = "2957f74",
		config = function()
			require("git-conflict").setup({
				default_mappings = {
					ours = "co",
					theirs = "ct",
					none = "c0",
					both = "cb",
					next = "cn",
					prev = "cp",
				},
				default_commands = true,
				disable_diagnostics = false,
				list_opener = "copen",
				highlights = {
					incoming = "DiffAdd",
					current = "DiffText",
				},
				debug = false,
			})
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
