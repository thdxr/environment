return {
	"sindrets/diffview.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = false,
	config = function()
		require("diffview").setup({
			view = {
				default = {
					layout = "diff2_horizontal",
				},
			},
		})
	end,
	keys = {
		{ "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "Open diffview" },
		{ "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
	},
}