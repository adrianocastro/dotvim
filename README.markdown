This is a complete vim configuration. It uses [Pathogen](https://github.com/tpope/vim-pathogen) to organise a number of different plugins inside the bundles directory. Most of those bundles are included as git submodules from other github repositories.

# Default settings:
- `<Leader>` maps to `,`
- Line numbers are on
- Soft 4 spaces tabs

# Included plugins
- [Pathogen](https://github.com/tpope/vim-pathogen) - for plugin management

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

For local customisations can be added to `~/.vimrc.local` and `~/.gvimrc.local`.

# TODO
- Finish tidying up .vimrc
- Fix listchars invalid args
- Figure out tabs on vim
- Assure compatibility between vim and MacVim
- Start working on Pathogen and plugins
