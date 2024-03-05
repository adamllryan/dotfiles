return {
	"RRethy/vim-illuminate",
	-- cmd = "IlluminateToggle",
	-- keys = {
	--   -- { "<leader>ti", require("illuminate").toggle(), "[T]oggle [I]lluminate" }
	--   { "<leader>ti", "<cmd>IlluminateToggle<CR>", "[T]oggle [I]lluminate" },
	-- },
	opts = {
		-- filetypes_denylist = {
		--   "dirvish",
		--   "fugitive",
		--   "md",
		--   "org",
		--   "norg",
		--   "NvimTree",
		-- },
	},
	config = function(opts)
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
