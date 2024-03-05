--[[
	Copilot
	Copilot is a plugin that provides AI-powered code completions in Neovim. It is a commercial product, but it is free to use for open source projects. It is a great tool for writing code quickly and efficiently.
]]
return {
	-- custom config which piggybacks on the copilot extras in lazy.lua.
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					auto_refresh = true,
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					accept = false, -- disable built-in keymapping
				},
				filetypes = {
					markdown = true,
					["."] = true,
				},
			})
		end,
	},
}
