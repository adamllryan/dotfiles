local cmd = require("helpers.auto").cmd
local group = require("helpers.auto").group

local ui = group("UI")

-- Set colors on colorscheme change

cmd({ "ColorScheme", "UIEnter" }, "*", ui, function()
	vim.cmd([[highlight IndentBlanklineIndent1 guifg=#70363B gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent2 guifg=#73603E gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent3 guifg=#4C623D gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent4 guifg=#2B5B61 gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent5 guifg=#315878 gui=nocombine]])
	vim.cmd([[highlight IndentBlanklineIndent6 guifg=#633C6F gui=nocombine]])
	vim.cmd([[highlight Headline1 guibg=#1e2718]])
	vim.cmd([[highlight Headline2 guibg=#21262d]])
	vim.cmd([[highlight CodeBlock guibg=#1c1c1c]])
	vim.cmd([[highlight Dash guibg=#D19A66 gui=bold]])
end)

-- Set Neovide options if available

cmd({ "UIEnter" }, "*", ui, function()
	if vim.g.neovide then
		vim.g.neovide_remember_window_size = true
		vim.g.neovide_cursor_vfx_mode = "torpedo"
		vim.g.neovide_cursor_animation_length = 0.06
		vim.g.neovide_transparency = 0.985
		vim.g.neovide_cursor_trail_size = 0.85
		vim.g.neovide_scroll_animation_length = 0.2
	end
end)

local ft = group("Filetype")

-- Set local markdown text wrap config on enter/change

cmd({ "BufEnter", "FileType" }, { "markdown", "tex" }, ft, function()
	vim.cmd([[setlocal linebreak]])
	vim.cmd([[setlocal wrap]])
	vim.cmd([[set cursorlineopt=number,screenline]])
	vim.cmd([[noremap <expr> j v:count ? 'j' : 'gj']])
	vim.cmd([[noremap <expr> k v:count ? 'k' : 'gk']])
	vim.cmd([[setlocal conceallevel=1]])
end)

-- Debug Breakpoints for each filetype

-- Python

cmd({ "BufEnter", "FileType" }, "python", ft, function()
	local dap = require("dap")
	dap.adapters.python = {
		type = "executable",
		command = os.getenv("HOME") .. "/.virtualenvs/tools/bin/python",
		args = { "-m", "debugpy.adapter" },
	}
end)
