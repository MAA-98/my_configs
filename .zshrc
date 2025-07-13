# ~/.zshrc
#
# This file is sourced by the Z shell (zsh) each time an interactive shell session starts.
# It configures the shell environment for interactive use:
#   aliases, functions, and keybindings.
# It is NOT sourced by login shells by default; for login shells, ~/.zprofile or ~/.zlogin are used.
#
# Note:
# - Changes to this file take effect in new shell sessions or after running `source ~/.zshrc` in an existing shell.

# echos filename (if in interactive shell for some safety if called from non-interactive context)
[[ $- == *i* ]] && echo "[🎉 .zshrc loaded]"

# Check if the home directory has the .my_secrets dot file and run contents if so
test -f "$HOME/.my_secrets" && source "$HOME/.my_secrets" && echo "[🎉 .my_secrets found and loaded]"

# Tab completion (usually not needed on Macs)
autoload -Uz compinit
compinit

# Auto-suggestions plugin:
source $HOME/.my_configs/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax coloring plugin
# MUST BE SOURCED LAST apparently
source $HOME/.my_configs/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
