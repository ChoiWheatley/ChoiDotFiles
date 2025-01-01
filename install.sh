#!/usr/bin/env bash

BASEDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "BASEDIR=${BASEDIR}"


# Check if "ChoiDotFiles/zshrc" string is found in $HOME/.zshrc
if grep -q "ChoiDotFiles/zshrc" "$HOME/.zshrc"; then
    echo "You're already sourcing ChoiDotFiles/zshrc."
else
  echo "source ${BASEDIR}/zshrc" >> ~/.zshrc
fi

# Check if "plugins" string is not found in $HOME/.zshrc
if ! grep -q "plugins" "$HOME/.zshrc"; then
    echo "Plugins not found in .zshrc!"
    echo "Copying 'plugins=(...)' from ChoiDotFiles/zshrc..."

    # Copy lines containing 'plugins' from $BASEDIR/zshrc to $HOME/.zshrc
    grep "^plugins" "$BASEDIR/zshrc" >> "$HOME/.zshrc"

    echo "Copying 'plugins=(...)' is finished."
fi

# echo "source ${BASEDIR}/vimrc" > ${HOME}/.vimrc
# echo "source ${BASEDIR}/tmux.conf" > ${HOME}/.tmux.conf

