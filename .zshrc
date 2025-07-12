# ~/.zshrc
#
# This file is sourced by the Z shell (zsh) each time an interactive shell session starts.
#
# Purpose and usage:
# - It configures the shell environment for interactive use, including variables,
#   aliases, functions, and keybindings.
# - It runs every time you open a new terminal session (or start a new interactive shell).
# - It is NOT sourced by login shells by default; for login shells, ~/.zprofile or ~/.zlogin are used.
#
# Typical workflow:
# - When you open a terminal emulator, your shell invokes this file to set up the session.
# - Any environment variables or commands here affect that shell session’s behavior.
#
# Note:
# - Changes to this file take effect in new shell sessions or after running `source ~/.zshrc` in an existing shell.


# Check if the home directory has the .my_secrets dot file and run contents if so
test -f "$HOME/.my_secrets" && source "$HOME/.my_secrets"