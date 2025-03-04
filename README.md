# Neovim lua configs.
## Package Manager
- lazy.nvim
- mason

## Plugins
```bash
├── alpha.lua
├── comment.lua
├── conform.lua
├── github-nvim-theme.lua
├── indent-blankline.lua
├── lsp.lua
├── lualine.lua
├── neo-tree.lua
├── nvim-autopairs.lua
├── nvim-cmp.lua
├── nvim-treesitter.lua
├── nvim-ufo.lua
└── telescope.lua
```

## Install

### Requirement
- neovim
- lua, luarocks
- node, npm
- go

#### Mac OS
- neovim ```brew install neovim```
- lua ```brew install lua```
  - luarocks ```brew install luarocks```
- [nvm(node version manager)](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
- go ```brew install go```

#### Ubuntu
- neovim ```sudo apt install neovim```
- lua ```sudo apt install lua5.x```
  - luarocks ```sudo apt install luarocks```
- [nvm(node version manager)](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
- go ```sudo apt install golang```

#### cloning this repository to nvim config path.
```bash
$ git clone https://github.com/meteormin/neovim-lua-config.git ~/.config/nvim
$ nvim 
```
