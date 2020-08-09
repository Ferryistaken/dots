# My take on Luke's config for the Zoomer Shell
#
#
#         _____                    _____                    _____                    _____                    _____          
#        /\    \                  /\    \                  /\    \                  /\    \                  /\    \         
#       /::\    \                /::\    \                /::\____\                /::\    \                /::\    \        
#       \:::\    \              /::::\    \              /:::/    /               /::::\    \              /::::\    \       
#        \:::\    \            /::::::\    \            /:::/    /               /::::::\    \            /::::::\    \      
#         \:::\    \          /:::/\:::\    \          /:::/    /               /:::/\:::\    \          /:::/\:::\    \     
#          \:::\    \        /:::/__\:::\    \        /:::/____/               /:::/__\:::\    \        /:::/  \:::\    \    
#           \:::\    \       \:::\   \:::\    \      /::::\    \              /::::\   \:::\    \      /:::/    \:::\    \   
#            \:::\    \    ___\:::\   \:::\    \    /::::::\    \   _____    /::::::\   \:::\    \    /:::/    / \:::\    \  
#             \:::\    \  /\   \:::\   \:::\    \  /:::/\:::\    \ /\    \  /:::/\:::\   \:::\____\  /:::/    /   \:::\    \ 
#______________\:::\____\/::\   \:::\   \:::\____\/:::/  \:::\    /::\____\/:::/  \:::\   \:::|    |/:::/____/     \:::\____\
#\::::::::::::::::::/    /\:::\   \:::\   \::/    /\::/    \:::\  /:::/    /\::/   |::::\  /:::|____|\:::\    \      \::/    /
#\::::::::::::::::/____/  \:::\   \:::\   \/____/  \/____/ \:::\/:::/    /  \/____|:::::\/:::/    /  \:::\    \      \/____/ 
# \:::\~~~~\~~~~~~         \:::\   \:::\    \               \::::::/    /         |:::::::::/    /    \:::\    \             
#  \:::\    \               \:::\   \:::\____\               \::::/    /          |::|\::::/    /      \:::\    \            
#   \:::\    \               \:::\  /:::/    /               /:::/    /           |::| \::/____/        \:::\    \           
#    \:::\    \               \:::\/:::/    /               /:::/    /            |::|  ~|               \:::\    \          
#     \:::\    \               \::::::/    /               /:::/    /             |::|   |                \:::\    \         
#      \:::\____\               \::::/    /               /:::/    /              \::|   |                 \:::\____\        
#       \::/    /                \::/    /                \::/    /                \:|   |                  \::/    /        
#        \/____/                  \/____/                  \/____/                  \|___|                   \/____/         
#                                                                                                                            

export PATH=$HOME/Documents/scripts/:$PATH
export PATH=$HOME/.cargo/bin/:$PATH
export PATH=/opt/resolve/bin:$PATH
export PATH=$HOME/apps/development/flutter/bin/:$PATH
export PATH="$SPICETIFY_INSTALL:$PATH"
export PATH=/home/ferry/.gem/ruby/2.7.0/bin/:$PATH
export PATH=/home/ferry/.gem/ruby/2.7.0/gems/:$PATH
export PATH=/home/ferry/.local/bin/:$PATH


export DISCORD_TOKEN=NzM3MzkwMDI2MjMyNjkyNzk2.Xx8p-g.JTeJeqwHV52JJcsYCyRLg8Kfq6s
# android development
export ANDROID_SDK_ROOT=/home/ferry/dev/Android/Sdk

export SPICETIFY_INSTALL="$HOME/apps/spicetify-cli/"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
[ -d "/usr/share/zsh/plugins/zsh-syntax-highlighting/" ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
#[ -d "/usr/share/zsh/plugins/zsh-autosuggestions" ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
[ -d "$HOME/.cache/wal" ] && (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
[ -d "$HOME/.cache/wal" ] && source ~/.cache/wal/colors-tty.sh

# oh-my-zsh seems to enable this by default, not desired for 
# workflow of controlling terminal title.
DISABLE_AUTO_TITLE="true"

echo -n -e "\033]0;Shell\007"
