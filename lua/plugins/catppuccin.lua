return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato", -- Puedes probar con 'latte', 'frappe', 'macchiato' o 'mocha'
			transparent_background = false,
			colors = {
				bg = "#1E1E2E",
			}
		})
	end,
}
