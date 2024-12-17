return {
	"robitx/gp.nvim",
	opts = {
		providers = {
			anthropic = {
				endpoint = "https://api.anthropic.com/v1/messages",
				secret = os.getenv("ANTHROPIC_API_KEY"),
			},
		},
	},
}
