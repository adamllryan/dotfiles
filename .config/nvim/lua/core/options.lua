local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	termguicolors = true,
	autowrite = false, -- Enable auto write
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
	wrap = false, -- Disable line wrap
	linebreak = false,
}

-- Set options from table

for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- Set colorscheme from hierarchy list

local schemes = {
	"cyberpunk",
	"kanagawa-wave",
	"terafox",
	"oxocarbon",
	"nordfox",
}

require("helpers.colorscheme").set_color(schemes)
