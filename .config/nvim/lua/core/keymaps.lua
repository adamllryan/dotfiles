local map = require("helpers.keys").map

-- Lazy Access

map("n", "<leader>L", require("lazy").show, "Show Lazy")

-- Quick access to some common actions

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", "Write file")
map({ "n", "i", "v" }, "<C-S-s>", "<cmd>w<cr><esc>", "Write all to file")
map("n", "<leader>dw", "<cmd>close<cr>", "Window")

-- Diagnostic keymaps

map("n", "gx", vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Better window navigation

map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

-- Move with shift-arrows

map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

-- Deleting buffers

local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")

-- Navigate buffers

map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

-- Stay in indent mode

map("v", "<", "<gv")
map("v", ">", ">gv")

-- Linting

map("n", "<leader>p", ":Format<CR>", "Autoformat file")

-- Trouble

map("n", "<leader>xx", function()
	require("trouble").open()
end, "Trouble Toggle")
map("n", "<leader>xw", function()
	require("trouble").open("workspace_diagnostics")
end, "Trouble Workspace Diagnostics")
map("n", "<leader>xd", function()
	require("trouble").open("document_diagnostics")
end, "Trouble Document Diagnostics")
map("n", "<leader>xq", function()
	require("trouble").open("quickfix")
end, "Trouble Quickfix")
map("n", "<leader>xl", function()
	require("trouble").open("loclist")
end, "Trouble Loc List")
map("n", "gR", function()
	require("trouble").open("lsp_references")
end, "Trouble LSP References")

-- Switch between light and dark modes

map("n", "<leader>ut", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end, "Toggle between light and dark themes")

-- Copilot mappings

map("i", "<S-CR>", function()
	if require("copilot.suggestion").is_visible() then
		require("copilot.suggestion").accept_line()
		print("Accepted suggestion")
	end
end, "Accept copilot suggestion")

-- Clear after search

map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")

-- Terminal mappings

map("n", "<leader>h", ":edit term://zsh<CR>", "Open terminal in current buffer")
map("n", "<leader>H", ":split<CR><C-w><C-j><C-w>15-:edit term://zsh<CR>i", "Open terminal in new buffer")

-- C-S save

vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
map("n", "<C-=>", function()
	change_scale_factor(1.1)
end, "Increase scale factor")
map("n", "<C-->", function()
	change_scale_factor(0.9)
end, "Decrease scale factor")

-- Map lm and to markdown

map("n", "<leader>lm", "<cmd>MarkdownPreviewToggle<cr>", "Markdown Preview Toggle")

-- Clear last search

map("n", "<C-/>", "<cmd>nohlsearch<cr>", "Clear last search")

-- Obsidian Links Keymap

map({ "n", "v" }, "<C-LeftMouse><cr>", "<cmd>ObsidianFollowLink<cr>", "Follow Obsidian Link")

-- Git

map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")

-- Illuminate

map("n", "<leader>ti", "<cmd>IlluminateToggle<CR>", "Toggle Illuminate")
map("n", "<leader>tf", require("illuminate").toggle_freeze_buf, "Freeze Illuminate")

-- Neotree

map({ "n", "v" }, "<leader>e", "<cmd>NeoTreeFocusToggle<cr>", "Toggle file explorer")

-- UFO

map("n", "zR", function()
	require("ufo").openAllFolds()
end, "Open all folds")
map("n", "zM", function()
	require("ufo").closeAllFolds()
end, "Close all folds")
