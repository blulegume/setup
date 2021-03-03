function getChrome() {
    overwrite "chrome"
    wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./chrome.deb
}

function getGotop() {
    overwrite "gotop"
    git clone --depth 1 https://github.com/cjbassi/gotop /tmp/gotop
    /tmp/gotop/scripts/download.sh
}

function getNvm() {
    overwrite "nvm"
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

}

function getOhMyZsh() {
    overwrite "oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

function installNice() {
    displayStepTitle "Installing nice-to-haves"

    getOhMyZsh
    getChrome
    getGotop
    getNvm

    cat alias.txt style.txt path.txt >> $HOME/.zshrc
}