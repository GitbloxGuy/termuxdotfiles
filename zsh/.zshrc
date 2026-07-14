# Automatically launch tmux on terminal startup
  if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
       tmux attach-session -t default 2>/dev/null || tmux new-session -s default
            fi

export HISTFILE=$ZDOTDIR/.zsh_history
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump-$HOST-$ZSH_VERSION
export HISTFILE=$HOME/.config/zsh/.zsh_history
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
# Path to your Oh My Zsh installation.
export ZSH=$ZDOTDIR/.oh-my-zsh
export STARSHIP_CONFIG=/data/data/com.termux/files/home/.config/starship.toml
export STARSHIP_CACHE=~/.sarship/cache

ZSH_THEME=""

alias ff='fastfetch -c ~/.config/fastfetch/config.jsonc'
alias ff1='fastfetch -c ~/.config/fastfetch/config1.jsonc'

ff1

alias clearr='clear && ff1'


plugins=(git 
	zsh-autocomplete
	zsh-autosuggestions


	)

source $ZSH/oh-my-zsh.sh

# ==============================================================================
# ULTRA-COMPACT ZSH-AUTOCOMPLETE STYLING
# ==============================================================================

# 1. Minimize Menu Height (Keeps it tight, only 5 lines max)
zstyle ':autocomplete:*' list-lines 5

# 2. Minimalist Group Headers (Bold, All-Caps wrapped in Brackets)
zstyle ':completion:*:descriptions' format $'%F{cyan}[%B%F{yellow}%U%d%u%b%F{cyan}]%f'
zstyle ':completion:*:messages' format $'%F{purple}%d%f'
zstyle ':completion:*:warnings' format $'%F{red}! %d%f'

# 3. Strip Extra Text Columns (Turns off descriptions for flags/options)
zstyle ':completion:*' verbose no

# 4. Dense Selection Highlight (Clean background highlight, no extra padding)
zstyle ':completion:*' menu select=1
zstyle ':completion:*:default' list-colors "ma=48;5;61;38;5;255m"

# 5. Pack Items Closely Together
zstyle ':completion:*' group-name ''

eval "$(starship init zsh)"
