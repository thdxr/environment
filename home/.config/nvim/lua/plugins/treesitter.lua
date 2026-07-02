return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",  -- Use main branch for Neovim 0.12+ compatibility
		build = ":TSUpdate",
		config = function()
			local parsers = {
				"javascript",
				"lua",
				"typescript",
				"tsx",
				"go",
			}

			-- Use git to avoid tarball extraction issues
			require("nvim-treesitter.install").prefer_git = true

			require("nvim-treesitter").setup({
			})

			require("nvim-treesitter").install(parsers)

			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("user-treesitter", { clear = true }),
				pattern = { "javascript", "javascriptreact", "lua", "typescript", "typescriptreact", "go" },
				callback = function()
					vim.treesitter.start()
				end,
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
