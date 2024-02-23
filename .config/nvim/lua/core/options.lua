local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	termguicolors = true,
	autowrite = true, -- Enable auto write
	clipboard = "unnamedplus", -- Sync with system clipboard
	conceallevel = 3, -- Hide * markup for bold and italic
	confirm = true, -- Confirm to save changes before exiting modified buffer
	cursorline = true, -- Enable highlighting of the current line
	ignorecase = true, -- Ignore case
	inccommand = "nosplit", -- preview incremental substitute
	list = true, -- Show some invisible characters (tabs...
	mouse = "a", -- Enable mouse mode
	number = true, -- Print line number
	pumblend = 10, -- Popup blend
	pumheight = 10, -- Maximum number of entries in a popup
	relativenumber = true, -- Relative line numbers
	scrolloff = 4, -- Lines of context
	shiftround = true, -- Round indent
	showmode = false, -- Dont show mode since we have a statusline
	signcolumn = "yes", -- Always show the signcolumn, otherwise it would shift the text each time
	smartcase = true, -- Don't ignore case with capitals
	smartindent = true, -- Insert indents automatically
	undofile = true,
	undolevels = 10000,
	updatetime = 200, -- Save swap file and trigger CursorHold
	wildmode = "longest:full,full", -- Command-line completion mode
	winminwidth = 5, -- Minimum window width
	wrap = true, -- Disable line wrap
	linebreak = true,
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#70363B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#73603E gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#4C623D gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#2B5B61 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#315878 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#633C6F gui=nocombine]])
