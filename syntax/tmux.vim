" Vim syntax file
" Language: tmux(1) configuration file
" Maintainer: Tiago Cunha <tcunha@users.sourceforge.net>
" License: This file is placed in the public domain.
"
" To install this file:
"
" - Drop the file in the syntax directory into runtimepath (such as
"  ~/.vim/syntax/tmux.vim).
" - Make the filetype recognisable by adding the following to filetype.vim
"   (~/.vim/filetype.vim):
"
"	augroup filetypedetect
"		au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
"	augroup END
"
" - Switch on syntax highlighting by adding "syntax enable" to .vimrc.
"

if v:version < 600
	syntax clear
elseif exists('b:current_syntax')
	finish
endif

setlocal iskeyword+=-
syntax case match

syn keyword tmuxAction	any current default none
syn keyword tmuxBoolean	off on

syn keyword tmuxCmds
	\ attach
	\ attach-session
	\ bind
	\ bind-key
	\ break-pane
	\ breakp
	\ capture-pane
	\ capturep
	\ choose-buffer
	\ choose-client
	\ choose-session
	\ choose-tree
	\ choose-window
	\ clear-history
	\ clearhist
	\ clock-mode
	\ command-prompt
	\ confirm
	\ confirm-before
	\ copy-mode
	\ copy-mode-vi
	\ delete-buffer
	\ deleteb
	\ detach
	\ detach-client
	\ display
	\ display-message
	\ display-panes
	\ displayp
	\ find-window
	\ findw
	\ has
	\ has-session
	\ if
	\ if-shell
	\ info
	\ join-pane
	\ joinp
	\ kill-pane
	\ kill-server
	\ kill-session
	\ kill-window
	\ killp
	\ killw
	\ last
	\ last-pane
	\ last-window
	\ lastp
	\ link-window
	\ linkw
	\ list-buffers
	\ list-clients
	\ list-commands
	\ list-keys
	\ list-panes
	\ list-sessions
	\ list-windows
	\ load-buffer
	\ loadb
	\ lock
	\ lock-client
	\ lock-server
	\ lock-session
	\ lockc
	\ locks
	\ ls
	\ lsb
	\ lsc
	\ lscm
	\ lsk
	\ lsp
	\ lsw
	\ move-pane
	\ move-window
	\ movep
	\ movew
	\ new
	\ new-session
	\ new-window
	\ neww
	\ next
	\ next-layout
	\ next-window
	\ nextl
	\ paste-buffer
	\ pasteb
	\ path
	\ pipe-pane
	\ pipep
	\ prev
	\ previous-layout
	\ previous-window
	\ prevl
	\ refresh
	\ refresh-client
	\ rename
	\ rename-session
	\ rename-window
	\ renamew
	\ resize-pane
	\ resizep
	\ respawn-pane
	\ respawn-window
	\ respawnp
	\ respawnw
	\ rotate-window
	\ rotatew
	\ run
	\ run-shell
	\ save-buffer
	\ saveb
	\ select-layout
	\ select-pane
	\ select-window
	\ selectl
	\ selectp
	\ selectw
	\ send
	\ send-keys
	\ send-prefix
	\ server-info
	\ set
	\ set-buffer
	\ set-environment
	\ set-hook
	\ set-option
	\ set-window-option
	\ setb
	\ setenv
	\ setw
	\ show
	\ show-buffer
	\ show-environment
	\ show-hooks
	\ show-messages
	\ show-options
	\ show-window-options
	\ showb
	\ showenv
	\ showmsgs
	\ showw
	\ source
	\ source-file
	\ split-window
	\ splitw
	\ start
	\ start-server
	\ suspend-client
	\ suspendc
	\ swap-pane
	\ swap-window
	\ swapp
	\ swapw
	\ switch-client
	\ switchc
	\ unbind
	\ unbind-key
	\ unlink-window
	\ unlinkw
	\ wait
	\ wait-for

syn keyword tmuxOptsSet
	\ assume-paste-time
	\ base-index
	\ bell-action
	\ bell-on-alert
	\ buffer-limit
	\ default-command
	\ default-shell
	\ default-terminal
	\ destroy-unattached
	\ detach-on-destroy
	\ display-panes-active-colour
	\ display-panes-colour
	\ display-panes-time
	\ display-time
	\ escape-time
	\ exit-unattached
	\ focus-events
	\ history-file
	\ history-limit
	\ lock-after-time
	\ lock-command
	\ message-command-style
	\ message-limit
	\ message-style
	\ mouse
	\ prefix
	\ prefix2
	\ quiet
	\ renumber-windows
	\ repeat-time
	\ set-clipboard
	\ set-remain-on-exit
	\ set-titles
	\ set-titles-string
	\ status
	\ status-bg
	\ status-fg
	\ status-interval
	\ status-justify
	\ status-keys
	\ status-left
	\ status-left-length
	\ status-left-style
	\ status-position
	\ status-right
	\ status-right-length
	\ status-right-style
	\ status-style
	\ terminal-overrides
	\ update-environment
	\ visual-activity
	\ visual-bell
	\ visual-silence
	\ word-separators

syn keyword tmuxOptsSetw
	\ aggressive-resize
	\ allow-rename
	\ alternate-screen
	\ automatic-rename
	\ automatic-rename-format
	\ clock-mode-colour
	\ clock-mode-style
	\ force-height
	\ force-width
	\ main-pane-height
	\ main-pane-width
	\ message-attr
	\ message-bg
	\ message-fg
	\ mode-keys
	\ mode-style
	\ monitor-activity
	\ monitor-silence
	\ other-pane-height
	\ other-pane-width
	\ pane-active-border-bg
	\ pane-active-border-fg
	\ pane-active-border-style
	\ pane-base-index
	\ pane-border-fg
	\ pane-border-style
	\ remain-on-exit
	\ synchronize-panes
	\ window-active-style
	\ window-status-activity-attr
	\ window-status-activity-bg
	\ window-status-activity-fg
	\ window-status-activity-style
	\ window-status-bell-style
	\ window-status-bg
	\ window-status-current-attr
	\ window-status-current-bg
	\ window-status-current-fg
	\ window-status-current-format
	\ window-status-current-style
	\ window-status-fg
	\ window-status-format
	\ window-status-last-style
	\ window-status-separator
	\ window-status-style
	\ window-style
	\ wrap-search
	\ xterm-keys

syn keyword tmuxTodo FIXME NOTE TODO XXX contained

syn match tmuxKey		/\(C-\|M-\|\^\)\+\S\+/	display
syn match tmuxNumber 		/\<\d\+\>/			display
syn match tmuxOptions		/\s-\a\+/		display
syn match tmuxVariable		/\w\+=/			display
syn match tmuxVariableExpansion	/\${\=\w\+}\=/		display

" Comments can span multiple lines, when the newline is escaped
" (with a single) backslash at the end.
syn region tmuxComment  start=/#/ skip=/\\\@<!\\$/ end=/$/ contains=tmuxTodo
syn region tmuxString	start=/"/ end=/"/ display oneline
syn region tmuxString	start=/'/ end=/'/ display oneline

hi def link tmuxAction			Boolean
hi def link tmuxBoolean			Boolean
hi def link tmuxCmds			Keyword
hi def link tmuxComment			Comment
hi def link tmuxKey			Special
hi def link tmuxNumber			Number
hi def link tmuxOptions			Identifier
hi def link tmuxOptsSet			Function
hi def link tmuxOptsSetw		Function
hi def link tmuxString			String
hi def link tmuxTodo			Todo
hi def link tmuxVariable		Constant
hi def link tmuxVariableExpansion	Constant

let b:current_syntax = 'tmux'
