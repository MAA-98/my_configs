#!/bin/zsh

# Directory where your actual config files live
CONFIG_DIR="$HOME/.my_configs"

# Array of config files to symlink, for now just .zshrc
files=(.zshrc)

for file in $files; do
  target="$CONFIG_DIR/$file"
  link="$HOME/$file"

  # Check if a file or link already exists at the link location
  if [ -e "$link" ] || [ -L "$link" ]; then
    echo "Backing up existing $link to $link.backup"
    mv "$link" "$link.backup"
  fi

  # Create symbolic link
  echo "Creating symlink: $link -> $target"
  ln -s "$target" "$link"
done

echo "All done!"
