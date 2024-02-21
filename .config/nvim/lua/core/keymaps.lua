local map = require("helpers.keys").map

-- Blazingly fast way out of insert mode
map("i", "jk", "<esc>")

-- Quick access to some common actions
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", "Write file")
map({ "n", "i", "v" }, "<C-S-s>", "<cmd>w<cr>", "Write all to file")
map("n", "<leader>qq", "<cmd>q<cr>", "Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "Quit all")
map("n", "<leader>dw", "<cmd>close<cr>", "Window")

-- Diagnostic keymaps
map("n", "gx", vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Easier access to beginning and end of lines
map("n", "<M-h>", "^", "Go to beginning of line")
map("n", "<M-l>", "$", "Go to end of line")

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

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

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
map("i", "<S-Tab>", function()
	if require("copilot.suggestion").is_visible() then
		require("copilot.suggestion").accept_line()
	else
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
	end
end, "Accept copilot suggestion")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")
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
