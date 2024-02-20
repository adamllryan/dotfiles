-- Fetch and setup colorscheme if available, otherwise just return 'default'
-- This should prevent Neovim from complaining about missing colorschemes on first boot
local function get_if_available(names, opts)
	for _, name in ipairs(names) do
		local lua_ok, colorscheme = pcall(require, name)
		if lua_ok then
			colorscheme.setup(opts)
			return name
		end

		local vim_ok, _ = pcall(vim.cmd.colorscheme, name)
		if vim_ok then
			return name
		end
	end

	return "default"
end

-- Hierarchy of colorschemes to try
local schemes = {
	[1] = "nordfox",
	--[1] = "dawnfox",
	[2] = "flexoki",
}
local colorscheme = get_if_available(schemes)

-- Neovide configuration

vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_vfx_mode = "torpedo"
vim.g.neovide_cursor_animation_length = 0.06
vim.g.neovide_transparency = 0.985
vim.g.neovide_cursor_trail_size = 0.85

return colorscheme
