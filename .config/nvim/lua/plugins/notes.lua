-- All of my note taking plugins

return {
	{
		"lervag/vimtex",
		config = function()
			vim.g.vimtex_view_method = "skim"
			--vim.g.vimtex_view_skim_sync = 1
			--vim.g.vimtex_view_skim_activate = 1
			--vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_quickfix_mode = 0
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
}
