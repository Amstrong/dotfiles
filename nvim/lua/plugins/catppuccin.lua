return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Puedes probar con 'latte', 'frappe', 'macchiato' o 'mocha'
			transparent_background = true,
			colors = {
				-- bg = "#1E1E2E",
			}
		})
	end,
}
