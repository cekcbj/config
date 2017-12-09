link_file() {
  if [ -e $2 ]
  then
    if [ "`readlink $2`" != "`ls $1`" ]
    then
      echo "[INFO] existing $2 file is moved to $2.backup"
      mv $2 $2.backup
      echo "[INFO] link $1 to $2"
      ln -s $1 $2
    fi
  else
    echo "[INFO] link $1 to $2"
    ln -sf $1 $2
  fi
}

link_file ~/config/.gitignore_global ~/.gitignore_global
link_file ~/config/.gitconfig ~/.gitconfig

curl https://raw.githubusercontent.com/Chun-Yang/vim-config/master/install.sh | sh
curl https://raw.githubusercontent.com/Chun-Yang/zsh-config/master/install.sh | sh
curl https://raw.githubusercontent.com/Chun-Yang/tmux-config/master/install.sh | sh
curl https://raw.githubusercontent.com/Chun-Yang/karabiner-config/master/install.sh | sh
