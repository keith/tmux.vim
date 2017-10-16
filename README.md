# tmux.vim

This is syntax highlighting for tmux. This is pulled directly from the
sample file installed by default with tmux on OS X via Homebrew.

## Installation with vim-plug

If you don't have a preferred installation method check out
[vim-plug](https://github.com/junegunn/vim-plug)

 1. Add this between the `call plug#begin('~/.vim/plugged') ` and `call plug#end()` lines in your `.vimrc`:
 2. `Plug 'keith/tmux.vim'` 
 3. `:source ~/.vimrc`
 4. `:PlugInstall`

## Usage

This automatically detects all .tmux.conf\* and tmux.conf\* files as
tmux configuration files.
