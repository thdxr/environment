return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		pickers = {
			find_files = {
				hidden = true,
			},
			git_files = {
				hidden = true,
			},
		},
		defaults = {
			file_ignore_patterns = {
				"node_modules/*",
			},
		},
	},
	keys = {
		{ "<C-f>", "<cmd>Telescope live_grep<cr>", desc = "Search files" },
		{ "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Find files" },
		{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find git files" },
	},
}
