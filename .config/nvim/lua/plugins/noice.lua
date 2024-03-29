return {
	"folke/noice.nvim",
	config = function()
		require("noice").setup({
			icons = {
				error = "",
				warning = "",
				info = "",
				hint = "",
				other = "",
			},
			colors = {
				error = "#db4b4b",
				warning = "#e0af68",
				info = "#0db9d7",
				hint = "#10B981",
				other = "#7C3AED",
			},
			symbols = {
				error = "",
				warning = "",
				info = "",
				hint = "",
				other = "",
			},
			severity_sort = true,
			severity_icon = true,
			severity_symbols = true,
			severity_asc = true,
			severity_desc = true,
			severity_ignore = {},
			severity_colors = {
				error = "#db4b4b",
				warning = "#e0af68",
				info = "#0db9d7",
				hint = "#10B981",
				other = "#7C3AED",
			},
			severity_highlight = {
				error = "LspDiagnosticsDefaultError",
				warning = "LspDiagnosticsDefaultWarning",
				info = "LspDiagnosticsDefaultInformation",
				hint = "LspDiagnosticsDefaultHint",
				other = "LspDiagnosticsDefaultOther",
			},
			severity_names = {
				error = "Error",
				warning = "Warning",
				info = "Info",
				hint = "Hint",
				other = "Other",
			},
			severity_alphabetic = true,
		})
	end,
}
