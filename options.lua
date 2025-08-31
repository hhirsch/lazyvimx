vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.container",
	callback = function()
		vim.bo.filetype = "toml"
	end,
})

-- Show diagnostic on hold
vim.o.updatetime = 250
vim.cmd([[
  autocmd CursorHold * lua vim.diagnostic.setloclist({open_loclist = true})
]])

vim.opt.shell = "/usr/bin/zsh"
