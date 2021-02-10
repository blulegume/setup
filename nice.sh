function getChrome() {
    wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./chrome.deb
}

function getGotop() {
    git clone --depth 1 https://github.com/cjbassi/gotop /tmp/gotop
    /tmp/gotop/scripts/download.sh
    #make sure to add gotop to $PATH
}

function getNvm() {
    if [[ $NODE_INSTALLED ]]
    then
        wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
    fi
}

function getOhMyZsh() {
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function installNice() {
    echo "Installing nice-to-haves"
    getOhMyZsh
    getChrome
    getGotop
    getNvm
}