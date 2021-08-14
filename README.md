# ChoiDotFiles
My custom dot-file configuration among linux(ssh), windows(WSL2) and mac(both mac terminal and docker instance)

## .vimrc
vim 설정은 OS 종속적인 게 별로 없으니 그냥 붙여넣어도 괜찮을듯.
- [ ] vim-airline 나의 위치 `line number : space from leftmost?`

## .bashrc
zsh이 실패할 경우에 대한 대안으로 bashrc를 적용한다. 기존에 윈도우와 azure에서 사용하던 bashrc를 그대로 합쳐서 올려놓자.

## .zshrc
zsh 계정설정은 OS마다 다르게 설정해야 할 부분이 몇가지가 있을 것이다. 확인해보고 이곳 아래에 포스팅을 진행할 것.
### plugin
plugin 값은 $HOME 디렉토리에 있는 .zshrc의 plugins() 안의 인자만 받아들이는 것 같다. 이부분만 따로 붙여넣을 수는 없을까??

## .tmux.conf
tmux 또한 OS 종속적인 것이 없다. 쓰던 그대로 복붙하자.

## install.sh
link dotfiles from home directory. 
    - installing Vundle 
    - tmux-extension 
    - zshrc-extension
    - install versatile utility apps 
        - z
        - fzf
        - fd
