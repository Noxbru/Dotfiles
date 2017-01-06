# Script for installing all the config files in an easy way so I don't have
# to manually move/copy everything
#
# For now, it will install the following things:
#  - Bashrc
#  - gnuplot config files
#  - mpd config files
#  - ncmpcpp config files
#  - vimrc and all my .vim
#  - oh-my-zsh is not installed yet and my modifications to it

usage() {
    echo "Usage: sh install.sh <option>"
    echo "Where option is one of the following:"
    echo "  - all: Install everything"
    echo "  - bash: Install bashrc"
    echo "  - gnuplot: Install some gnuplot configuration"
    echo "  - mpd: Install some mpd configuration"
    echo "  - ncmpcpp: Install some ncmpcpp configuration"
    echo "  - termite: Install some termite configuration"
    echo "  - tmux: Install some tmux configuration"
    echo "  - vim: vimrc and all my .vim. Also runs vim_bundle.sh"
    echo "  - zsh: Installs oh-my-zsh and adds my modifications on top"
}

bash() {
    echo " + Installing bashrc"
    echo "      cp ./bash/bashrc ~/.bashrc"
    cp ./bash/bashrc ~/.bashrc
}

gnuplot() {
    echo " + Installing gnuplot configuration"
    echo "      mkdir -p ~/.config/gnuplot"
    echo "      mkdir -p ~/.config/gnuplot/palettes"
    echo "      cp ./gnuplot/gnuplot ~/.gnuplot"
    echo "      cp ./gnuplot/dark.cfg ~/.config/gnuplot/"
    mkdir -p ~/.config/gnuplot
    mkdir -p ~/.config/gnuplot/palettes
    cp ./gnuplot/gnuplot ~/.gnuplot
    cp ./gnuplot/dark.cfg ~/.config/gnuplot
}

mpd() {
    echo " + Installing mpd configuration"
    echo "      mkdir -p ~/.config/mpd"
    echo "      mkdir -p ~/.config/mpd/playlists"
    echo "      cp ./mpd/mpd.conf ~/.config/mpd/"
    mkdir -p ~/.config/mpd
    mkdir -p ~/.config/mpd/playlists
    cp ./mpd/mpd.conf ~/.config/mpd/
}

ncmpcpp() {
    echo " + Installing ncmpcpp configuration"
    echo "      mkdir -p ~/.ncmpcpp"
    echo "      cp ./ncmpcpp/bindings ~/.ncmpcpp/"
    echo "      cp ./ncmpcpp/config ~/.ncmpcpp/"
    mkdir -p ~/.ncmpcpp
    cp ./ncmpcpp/bindings ~/.ncmpcpp/
    cp ./ncmpcpp/config ~/.ncmpcpp/
}

termite() {
    echo " + Installing termite configuration"
    echo "      mkdir -p ~/.config/termite"
    echo "      cp ./termite/config ~/.config/termite/"
    mkdir -p ~/.config/termite
    cp ./termite/config ~/.config/termite/
}

tmux() {
    echo " + Installing tmux configuration"
    echo "      cp ./tmux/tmux.conf ~/.tmux.conf"
    cp ./tmux/tmux.conf ~/.tmux.conf
}

vim() {
    echo " + Installing and preparing vim configuration"
    echo "      mkdir -p ~/.vim"
    echo "      cp -r ./vim/* ~/.vim/"
    echo "      mv ~/.vim/vimrc ~/.vimrc"
    echo "      mv ~/.vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py"
    echo "      sh ~/.vim/vim_bundle.sh"
    mkdir -p ~/.vim
    cp -r ./vim/* ~/.vim/
    mv ~/.vim/vimrc ~/.vimrc
    mv ~/.vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
    sh ~/.vim/vim_bundle.sh
}

zsh() {
    echo " + Installing and preparing oh-my-zsh"
    echo "      if [ ! -d ~/.oh-my-zsh]"
    echo "          sh -c \"\$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)\""
    echo "      fi"
    echo "      cp ./zsh/zshrc ~/.zshrc"
    echo "      cp ./zsh/muse.zsh-theme ~/.oh-my-zsh/themes/"
    echo "      cp ./zsh/key-bindings.zsh ~/.oh-my-zsh/lib/"
    echo "      cp ./zsh/history.zsh ~/.oh-my-zsh/lib/"
    if [[ ! -d ~/.oh-my-zsh ]]; then
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    fi
    cp ./zsh/zshrc ~/.zshrc
    cp ./zsh/muse.zsh-theme ~/.oh-my-zsh/themes/
    cp ./zsh/key-bindings.zsh ~/.oh-my-zsh/lib/
    cp ./zsh/history.zsh ~/.oh-my-zsh/lib/
}

case "$1" in
    "all")
        bash
        gnuplot
        mpd
        ncmpcpp
        vim
        zsh
        ;;

    "bash")     bash     ;;
    "gnuplot")  gnuplot  ;;
    "mpd")      mpd      ;;
    "ncmpcpp")  ncmpcpp  ;;
    "vim")      vim      ;;
    "zsh")      zsh      ;;
    *)          usage    ;;
esac
