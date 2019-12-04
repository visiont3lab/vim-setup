# Vim Setup with plugins

[Interesting Tutorial](https://www.youtube.com/watch?v=_nMYsEMKvD0)
[Vim Cheet Shet](https://vim.rtorr.com/)

Setup vimrc file
```shell
cd vim-setp && \
cp vimrc $HOME/.vimrc
```

Open vim by typing
```
vim $HOME/.vimrc
```
Inside vim type
```
1. Esc (Go to Normal Mode)
2. :BundleInstall (Install Plugin)
```

We use Vundle as  plugin manager to install externam plugin

## Features

* [Status bar plugin vim-airline](https://github.com/vim-airline/vim-airline)
* [Search plugin ctrp](https://github.com/kien/ctrlp.vim)
* [Rigel theme](https://github.com/Rigellute/rigel)
* [Vim Snippets](https://github.com/SirVer/ultisnips) and [Utils](https://github.com/SirVer/ultisnips)
* [Simply Fold vim Plugin](https://github.com/tmhedberg/SimpylFold)
* [NerdTree tabs](https://github.com/jistr/vim-nerdtree-tabs)
* [Syntax Checking syintastic](https://github.com/vim-syntastic/syntastic)
* [Autocomplete YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

It is required to set up the Autocomplete plugin as following:

```
sudo apt-get install build-essential cmake python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
Compiling YCM with semantic support for C-family languages through libclang:
./install.py --clang-completer
```
More information available [here (Compiling YCM)](https://github.com/ycm-core/YouCompleteMe#linux-64-bit)
