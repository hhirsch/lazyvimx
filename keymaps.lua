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
