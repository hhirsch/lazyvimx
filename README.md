# Nix-Shell LazyVim
> [!WARNING]
> Do not use this with an existing nvim config as it will overwrite your existing nvim config and make it unusable.

This is a quick way to try out LazyVim. Just check out the repository and type `nix-shell`.

Install new languages for tree-sitter with `:TSInstall <language>` but prefer tree-sitter.lua.
Install new linters and lsps with `:Mason` but prefer to add them to lsp-config.lua included in this repository.
Check (2) and (3) for debugging options.
1. https://github.com/neovim/nvim-lspconfig
2. https://github.com/mfussenegger/nvim-dap
3. https://github.com/puremourning/vimspector

