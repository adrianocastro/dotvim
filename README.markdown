This is a complete vim configuration. It uses [Pathogen](https://github.com/tpope/vim-pathogen) to organise a number of different plugins inside the bundles directory. Most of those bundles are included as git submodules from other github repositories.

# Default settings:
- `<Leader>` maps to `,`
- Line numbers are on
- Soft tabs using 4 spaces

# Included plugins
- [Pathogen](https://github.com/tpope/vim-pathogen) - for plugin management

# Included colorschemes
- [Molokai](https://github.com/tomasr/molokai) - for dark backgrounds
- [Mac Classic](https://github.com/nelstrom/vim-mac-classic-theme) - for light backgrounds

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
- Assure compatibility between vim and MacVim
- Figure out if there's a better way of doing filetype recognition than using
  filetype.vim
- Figure out tabs on vim
- Start working on Pathogen and plugins
- Finish tidying up .vimrc @done(2011.02.14)
- Fix listchars invalid args @done(2011.02.14)
- Add syntax for:
   - HTML @done(2011.02.14)
   - JS @done(2011.02.14)
   - PHP @done(2011.02.14)
   - Markdown @done(2011.02.14)
