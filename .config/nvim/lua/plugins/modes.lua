return {
	"mvllow/modes.nvim",
	config = function()
		require("modes").setup({
			set_cursor = true,
			set_cursorline = true,
			set_number = true,
			ignore_filetypes = { "NvimTree", "TelescopePrompt" },
		})
	end,
}
