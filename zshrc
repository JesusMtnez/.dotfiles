###########################################
# Author: Jesús Martínez-Barquero Herrada #
# Last updated: 09-09-2015                #
###########################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/.oh-my-zsh
# Set name of the theme to load.
ZSH_THEME="sorin"
export TERM='xterm-256color'
export UPDATE_ZSH_DAYS=3
# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git-extras npm mvn zsh-syntax-highlighting)

######################
# User configuration #
######################
export PATH="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/sbin:/bin:/usr/games:/usr/local/games":$PATH
fpath=(/usr/local/share/zsh-completions /usr/local/etc/bash_completion.d/ $fpath)
export LIBRARY_PATH="/usr/local/lib":$LD_LIBRARY_PATH
export C_INCLUDE_PATH="/usr/local/include"
export CPLUS_INCLUDE_PATH="/usr/local/include"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Source local configuration
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

# Change PWD hook
function chpwd() {
    ls -lh
}

#########
# ALIAS #
#########

# Emacs
alias e='emacs -nw'
alias emacs='emacs -nw'
alias vi='emacs -nw'
alias vim='emacs -nw'

# Edition
alias dotedit='cd ~/.dotfiles; e'
alias zshconfig='emacs -nw ~/.zshrc'
alias econfig='emacs -nw ~/.emacs.d/init.el'

# Rerun as sudo
alias please='sudo $(fc -ln -1)'
alias fuck='sudo $(fc -ln -1)'

#############
# FUNCTIONS #
#############

# Watch Git Tree
function git-wt() {
    # Loop to imitate watch
    while :; do
        clear;                        # Clear screen
        LINES=`tput lines`;           # Get screen size
        git log --graph --pretty=format:'%C(yellow)%h%Creset%C(auto)%d%Creset %s %Cblue(%an)%Creset %Cgreen(%cr)%Creset' --abbrev-commit --all | head -n $(($LINES-1)) # Draw tree
        sleep 0.5;                    # Wait
    done

}

########
# TMUX # (DISABLED)
########
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
