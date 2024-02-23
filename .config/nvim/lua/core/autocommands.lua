local cmd = require("helpers.auto").cmd
local group = require("helpers.auto").group

local ui = group("UI")

-- Set indent blankline colors when theme changed

cmd({ "ColorScheme" }, "*", ui, function()
	vim.cmd([[highlight IndentBlanklineIndent1 guifg=#70363B gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent2 guifg=#73603E gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent3 guifg=#4C623D gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent4 guifg=#2B5B61 gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent5 guifg=#315878 gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent6 guifg=#633C6F gui=nocombine]])
end)

-- Set Neovide options if available

cmd({ "UIEnter" }, "*", ui, function()
	if vim.g.neovide then
		vim.g.neovide_remember_window_size = true
		vim.g.neovide_cursor_vfx_mode = "torpedo"
		vim.g.neovide_cursor_animation_length = 0.06
		vim.g.neovide_transparency = 0.985
		vim.g.neovide_cursor_trail_size = 0.85
	end
end)

local ft = group("Filetype")

cmd({ "BufEnter", "FileType" }, "markdown", ft, function()
	vim.cmd([[setlocal linebreak]])
	vim.cmd([[setlocal wrap]])
end)
