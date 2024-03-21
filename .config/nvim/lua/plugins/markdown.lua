return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	-- {
	--
	-- 	"lukas-reineke/headlines.nvim",
	-- 	dependencies = "nvim-treesitter/nvim-treesitter",
	-- 	config = true, -- or `opts = {}`
	-- },
	{
		"MeanderingProgrammer/markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("markdown").setup({
				headings = { "一", "二", "三", "四", "五", "六" },
				bullet = "•",
			})
		end,
	},
}
