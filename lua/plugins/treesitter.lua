return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "javascript", "vue", "lua", "ruby", "sql" },
			highlight = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
			},
			textobjects = {
				select = {
					enable = true,
				},
			},
		})
	end,
}
