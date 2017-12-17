################################################
#     ,-.  .                             .  
#    /   \ |                             |  
#    |   | |-. --- ;-.-. . . --- ,-, ,-. |-.
#    \   / | |     | | | | |      /  `-. | |
#     `-'  ' '     ' ' ' `-|     '-' `-' ' '
#                        `-'                
################################################


#################################
#     SYSTEM
#################################
ZSH="/usr/share/oh-my-zsh"
export TERM="xterm-256color"
DISABLE_AUTO_UPDATE="true"
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
export EDITOR="vim"
export LANG="en_US.utf8"export LANG="en_US.utf8"


#################################
#     VARIABLE
#################################
DARK='\033[0;30'
D_DARK='\033[1;30'
BLUE='\033[0;34'
L_BLUE='\033[1;34'
GREEN='\033[0;32'
L_GREEN='\033[1;32'
CYAN='\033[0;36'
L_CYAN='\033[1;36'
RED='\033[0;31'
L_RED='\033[1;31'
MAGENTA='\033[0;35'
L_MAGENTA='\033[1;35'
YELLOW='\033[0;33'
L_YELLOW='\033[1;33'
WHITE='\033[0;37'
L_WHITE='\033[1;37'
BOLD='m'


#################################
#     THEME
#################################
#OLD ZSH_THEME="agnoster"
#OLD ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="bullet-train"


#################################
#     PLUGINS
#################################
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)



#################################
#     ALIASES
#################################
 alias zshconfig="$EDITOR ~/.zshrc"
 alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
 alias localhost="/srv/http/"
 alias scaner="echo $USER "
 alias dev="/home/dauliac/Dev/"
 alias nano="vim"
 alias youtube='youtube-dl --extract-audio --audio-format mp3'
 #import aliases
 source ~/.bash_aliases

#################################
#     VARIOUS
#################################
setopt auto_cd                  # if command is a path, cd into it
setopt auto_remove_slash        # self explicit
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.
setopt chase_links              # resolve symlinks
setopt correct                  # try to correct spelling of commands
setopt extended_glob            # activate complex pattern globbing
setopt glob_dots                # include dotfiles in globbing
setopt print_exit_value         # print return value if non-zero
unsetopt beep                   # no bell on error
unsetopt bg_nice                # no lower prio for background jobs
unsetopt clobber                # must use >| to truncate existing files
unsetopt hist_beep              # no bell on error in history
unsetopt hup                    # no hup signal at shell exit
unsetopt ignore_eof             # do not exit on end-of-file
unsetopt list_beep              # no bell on ambiguous completion
unsetopt rm_star_silent         # ask for confirmation for `rm *' or `rm path/*'

#################################
#     COMPLETION
#################################
autoload -U compinit
compinit
zmodload -i zsh/complist
setopt hash_list_all            # hash everything before completion
setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word
setopt complete_in_word         # allow completion from within a word/phrase
setopt correct                  # spelling correction for commands

#################################
#     OTHER
#################################

#Launch arch logo
archey3
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
#################################
#     OH-MY-ZSH
#################################

source $ZSH/oh-my-zsh.sh

#################################
#     FZF
#################################
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh


