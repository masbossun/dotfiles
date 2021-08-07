### Setup Dotfiles

1. clone this repo
```sh
git clone https://github.com/masbossun/dotfiles $HOME/.dotfiles
```

2. set zsh config directory to .dotfiles
```sh
echo 'ZDOTDIR="$HOME/.dotfiles"' >> $HOME/.zshenv
```

3. install apps
   - neovim >= 0.5
   - exa
   - nvm
   - go
   - ninja
   - lua & luarocks
   - zsh see [install zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
   - oh-my-zsh see [install oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki)
   - zsh-syntax-higlighting see [install zsh-syntax-higlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)


### Setup Neovim

1. move to .config directory
```sh
cp -r ./nvim $HOME/.config/nvim
```

2. install neovim packer
```sh
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

3. install neovim package, inside neovim run
```viml
:PackerInstall
```

### Setup Lua Development

1. setup language server
```sh
cd $HOME/.config/nvim
git clone https://github.com/sumneko/lua-language-server.git
cd lua-language-server
git submodule update --init --recursive
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
```

2. install lua-format
```sh
luarocks install --server=https://luarocks.org/dev luaformatter --local
```

3. instrall efm-language-server
```sh
go get github.com/mattn/efm-langserver
```
