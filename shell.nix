{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.neovim
    pkgs.tree-sitter
    pkgs.lua-language-server
  ];
  shellHook = ''
  cp -u ./options.lua ~/.config/nvim/lua/config/options.lua
  cp -u ./tree-sitter.lua ~/.config/nvim/lua/config/tree-sitter.lua
  cp -u ./keymaps.lua ~/.config/nvim/lua/config/keymaps.lua
  cp -u ./lsp-config.lua ~/.config/nvim/lua/plugins/lsp-config.lua
  cp -u ./terminal.lua ~/.config/nvim/lua/plugins/terminal.lua
  if [ ! -d ~/.config/nvim ]; then
    git clone https://github.com/LazyVim/starter ~/.config/nvim
  fi
  export LANG="en_US.utf8"
  nvim
  exit 0
  '';
}
