#		
#		
#		   ███████╗███████╗██╗  ██╗██████╗  ██████╗
#		   ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#		     ███╔╝ ███████╗███████║██████╔╝██║     
#		    ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#		██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#		╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#		                                           
#
#                ╔══════════════════════════════════════════╗
#                ║           Created by ZeeroDaay           ║
#                ║                                          ║
#                ║        Email:zeerodaay@protonmail.com    ║
#                ║                                          ║
#                ╚══════════════════════════════════════════╝
if [[ -r/usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

setopt completealiases
zmodload -i zsh/complete
zmodload -i zsh/mapfile
zmodload -i zsh/mathfunc
zmodload -i zsh/complist
zmodload -i zsh/curses
zmodload -i zsh/datetime
zmodload -i zsh/terminfo
setopt correct
setopt correct_all
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt case_glob
setopt list_types
setopt glob_complete
setopt menu_complete
setopt complete_in_word
setopt complete_aliases
autoload -Uz compinit promptinit vcs_info
compinit
promptinit
autoload -U colors
colors
zstyle ':completion:*' verbose 'yes'
zstyle ':completion:*' show-completer
zstyle ':completion:*' rehash true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
zstyle ':completion:*:*:*:*:users' list-colors '=*=$color[cyan]=$color[gray]'
zstyle ':completion:*' menu select

ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=blue,bold'

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=7'

ZSH_HIGHLIGHT_STYLES[function]='fg=15'

ZSH_HIGHLIGHT_STYLES[builtin]='fg=14'

ZSH_HIGHLIGHT_STYLES[command]='fg=39'

ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'

ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=127'

ZSH_HIGHLIGHT_STYLES[redirection]='fg=167'

ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=253'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'

ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=208'

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=135'

ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=123'

ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=105'

ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=14'

ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=7'

ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=30'

ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=cyan'

ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=220'

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=15'

ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=39'

ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=15'

# To enable highlighting of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='yellow'

# To enable cursor highlighting
ZSH_HIGHLIGHT_STYLES[cursor]='bg=cyan'

#The style for the whole line
ZSH_HIGHLIGHT_STYLES[line]='bold'
