return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = function()
		local harpoon = require("harpoon")

		return {
			{
				"<leader>a",
				function()
					harpoon:list():add()
				end,
				desc = "Add to harpoon",
			},
			{
				"<C-e>",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Toggle harpoon menu",
			},
			{
				"<leader>1",
				function()
					harpoon:list():select(1)
				end,
				desc = "Go to 1",
			},
			{
				"<leader>2",
				function()
					harpoon:list():select(2)
				end,
				desc = "Go to 2",
			},
			{
				"<leader>3",
				function()
					harpoon:list():select(3)
				end,
				desc = "Go to 3",
			},
			{
				"<leader>4",
				function()
					harpoon:list():select(4)
				end,
				desc = "Go to 4",
			},
		}
	end,
}
