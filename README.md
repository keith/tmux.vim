# tmux.vim

This is syntax highlighting for tmux. This is pulled directly from the
sample file installed by default with tmux on OS X via Homebrew.

## Installation

### With [Vundle](https://github.com/gmarik/vundle)

Add:

```
Bundle 'Keithbsmiley/tmux.vim'
```

To your `.vimrc` and run `BundleInstall` from within vim or `vim +BundleInstall +qall` from the command line

### With [Pathogen](https://github.com/tpope/vim-pathogen)

```
cd ~/.vim/bundle
git clone https://github.com/Keithbsmiley/tmux.vim.git
```

## Usage

This automatically detects all .tmux.conf\* and tmux.conf\* files as
tmux configuration files.

