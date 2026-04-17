# Zinit plugin manager setup
# This section ensures zinit is installed and sourced, which allows you to manage plugins efficiently.
# Zinit is fast, flexible, and supports loading plugins, snippets, and more from GitHub and other sources.

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

# Plugin: zsh-autopair
# Automatically inserts matching brackets, quotes, etc., as you type.
zinit light hlissner/zsh-autopair

# Plugin: alias-tips
# Shows tips for using defined aliases when you type commands, helping you learn and use your aliases.
zinit light djui/alias-tips

