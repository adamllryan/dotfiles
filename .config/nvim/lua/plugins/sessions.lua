return {
	{
		"rmagatti/auto-session",
		config = function()
			require("auto-session").setup({
				auto_restore_enabled = true,
				auto_save_enabled = true,
				auto_session_enable_last_session = true,
				auto_session_suppress_dirs = "~/.config/nvim",
			})
		end,
	},
}
