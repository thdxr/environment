return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",  -- Use main branch for Neovim 0.12+ compatibility
		build = ":TSUpdate",
		config = function()
			-- Use git to avoid tarball extraction issues
			require("nvim-treesitter.install").prefer_git = true
			
			-- nvim-treesitter 1.0+ uses a new API
			require("nvim-treesitter").setup({
				ensure_installed = {
					"lua",
					"typescript",
					"tsx",
					"go",
				},
				auto_install = false,
				highlight = {
					enable = true,
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			max_lines = 1,
		},
	},
}
