This is a complete vim configuration. It uses [Pathogen](https://github.com/tpope/vim-pathogen) to organise a number of different plugins inside the bundles directory. Most of those bundles are included as git submodules from other github repositories.

# Requirements
- [vim 7.3](http://www.vim.org/download.php)

# Default settings:
- `<Leader>` maps to `,`
- Line numbers are on
- Soft tabs using 4 spaces

# Included plugins
- [Pathogen](https://github.com/tpope/vim-pathogen) - for plugin management (in the autoload directory)
- [ack](https://github.com/mileszs/ack.vim)
- [command-t](https://github.com/wincent/Command-T)
- [gundo](https://github.com/sjl/gundo.vim)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [snipmate](https://github.com/msanders/snipmate.vim)
- [surround](https://github.com/tpope/vim-surround)
- [tabular](https://github.com/godlygeek/tabular)
- and others, please refer to the bundle directory

# Included colorschemes
- [Molokai](https://github.com/tomasr/molokai) - for dark backgrounds
- [Mac Classic](https://github.com/nelstrom/vim-mac-classic-theme) - for light backgrounds
- [Solarized](https://github.com/altercation/vim-colors-solarized)
- and others, please refer to the colors directory

# Installation:

0. Backup your existing .vim folder and rc files:

    `for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done`

1. Grab a copy of the repository and install under `~/.vim` 

    `git clone git://github.com/adrianocastro/dotvim.git ~/.vim`

## Create symlinks:

    ln -s ~/.vim/config/vimrc ~/.vimrc
    ln -s ~/.vim/config/gvimrc ~/.gvimrc

## Fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

# Customisation

Local customisations can be added to `~].vimrc.local` and `~/.gvimrc.local`.

