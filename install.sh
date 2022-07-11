echo "hello, world!"

CHOI_PATH=`pwd -P`
echo "CHOI_PATH=${CHOI_PATH}"

# echo "source ${CHOI_PATH}/zshrc" > ~/.zshrc
cat ${CHOI_PATH}/zshrc > ~/.zshrc
echo "source ${CHOI_PATH}/vimrc" > ~/.vimrc
echo "source ${CHOI_PATH}/tmux.conf" > ~/.tmux.conf

