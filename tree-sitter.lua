require("nvim-treesitter.configs").setup({
	ensure_installed = { "bash", "lua", "python", "javascript" },
	sync_install = false,
	auto_install = false,
	ignore_install = {},
	modules = {},
	highlight = { enable = true },
	indent = { enable = true },
})
