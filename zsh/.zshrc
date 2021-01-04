# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set your oh-my-zsh theme
# Currently using powerlevel10k ( https://github.com/romkatv/powerlevel10k )
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable case-sensitive completion.
CASE_SENSITIVE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Specify custom folder for your .oh-my-zsh
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
plugins=(
	git
	zsh-syntax-highlighting  # ## https://github.com/zsh-users/zsh-syntax-highlighting ##
	zsh-autosuggestions      # ### https://github.com/zsh-users/zsh-autosuggestions  ###
)

source $ZSH/oh-my-zsh.sh

# ################ FZF ########################
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh


# ######### User configuration ################

# You may need to manually set your language environment
export LANG=en_US.UTF-8


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig="nvim ~/.zshrc" # Modify to use your prefered editor
alias q="exit"
alias c="clear"
alias szsh="source $HOME/.zshrc"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push --porcelain"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
