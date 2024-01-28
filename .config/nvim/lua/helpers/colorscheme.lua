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
schemes = {
	--[1] = "nordfox",
	[1] = "dawnfox",
	[2] = "flexoki",
}
local colorscheme = get_if_available(schemes)

return colorscheme
