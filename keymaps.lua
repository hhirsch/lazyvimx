-- Remap movement to Neo² layout: left=a, right=e, up=n, down=r
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Normal mode
map("n", "a", "h", opts)
map("n", "e", "l", opts)
map("n", "n", "k", opts)
map("n", "r", "j", opts)

-- Visual mode
map("v", "a", "h", opts)
map("v", "e", "l", opts)
map("v", "n", "k", opts)
map("v", "r", "j", opts)

-- Operator-pending (to work with motions after d/c/y)
map("o", "a", "h", opts)
map("o", "e", "l", opts)
map("o", "n", "k", opts)
map("o", "r", "j", opts)

local function set_search_maps(enable)
	if enable then
		vim.keymap.set("n", "a", "N", { noremap = true, silent = true, buffer = true })
		vim.keymap.set("n", "e", "n", { noremap = true, silent = true, buffer = true })
		-- uppercase variants
		vim.keymap.set("n", "A", "N", { noremap = true, silent = true, buffer = true })
		vim.keymap.set("n", "E", "n", { noremap = true, silent = true, buffer = true })
	else
		pcall(vim.api.nvim_buf_del_keymap, 0, "n", "a")
		pcall(vim.api.nvim_buf_del_keymap, 0, "n", "e")
		pcall(vim.api.nvim_buf_del_keymap, 0, "n", "A")
		pcall(vim.api.nvim_buf_del_keymap, 0, "n", "E")
	end
end

local aug = vim.api.nvim_create_augroup("TempSearchNavAE", { clear = true })
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI", "InsertLeave", "CmdlineLeave" }, {
	group = aug,
	callback = function()
		set_search_maps(vim.v.hlsearch == 1)
	end,
})
