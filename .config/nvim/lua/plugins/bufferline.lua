--[[--
--Bufferline
--This plugin is used to display the opened tabs at the top of the nvim
--window. It is a simple and elegant way to navigate between tabs.
--@require nvim-tree/nvim-web-devicons
]]
return {
	{
		"akinsho/bufferline.nvim",
		version = "v3.*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
	},
}
