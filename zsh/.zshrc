# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Plugin: history-search-multi-word
# Allows searching your command history by multiple words, making it easier to find previous commands.
zinit load zdharma-continuum/history-search-multi-word

# Plugin: zsh-autosuggestions
# Suggests commands as you type based on your history and completions, improving efficiency.
zinit light zsh-users/zsh-autosuggestions

# Plugin: fast-syntax-highlighting
# Provides fast syntax highlighting for your Zsh command line, making it easier to spot errors.
zinit light zdharma-continuum/fast-syntax-highlighting

# Plugin: zsh-completions
# Adds many extra tab completions for Zsh, improving command-line productivity.
zinit light zsh-users/zsh-completions

# Plugin: zsh-history-substring-search
# Lets you search your history for commands containing a substring, similar to Oh My Zsh.
zinit light zsh-users/zsh-history-substring-search

# Snippet: Oh My Zsh git plugin
# Loads useful git aliases and functions from Oh My Zsh's git plugin.
zinit snippet https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh

# aliases

alias n="nvim"
alias y="yazi"

unalias cewl 2>/dev/null

cewl() {
  emulate -L zsh
  local orig_pwd="$PWD"
  (cd "$HOME/tools/CeWL" && PWD="$orig_pwd" bundle exec ruby cewl.rb "$@")
}

export RUBYOPT='-W0'

# Created by `pipx` on 2025-12-24 10:50:00
export PATH="$PATH:/home/herb/.local/bin"
source <(fzf --zsh)

if [ -z "$TMUX" ]; then
  fastfetch
fi
