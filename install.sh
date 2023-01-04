#!/usr/bin/env bash

echo "hello, world!"

BASEDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "BASEDIR=${BASEDIR}"

# echo "source ${BASEDIR}/zshrc" > ~/.zshrc
cat ${BASEDIR}/zshrc > ${HOME}/.zshrc
echo "source ${BASEDIR}/vimrc" > ${HOME}/.vimrc
echo "source ${BASEDIR}/tmux.conf" > ${HOME}/.tmux.conf

