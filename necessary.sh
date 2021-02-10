function getVsCode() {
    wget -O code.deb https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64
}

function installNecessary() {
    echo "Installing necessary programs"

    update
    getVsCode
    apt install -y vim git zsh curl wget ./code.deb
}