return {
	"DrKJeff16/project.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {
		telescope = { disable_file_picker = true },
	},
	config = function(_, opts)
		require("project").setup(opts)
		require("telescope").load_extension("projects")
	end,
	keys = {
		{ "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Find projects" },
	},
}
