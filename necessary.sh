function getVsCode() {
    wget -O code.deb https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64
}

function installNecessary() {
    displayStepTitle "Installing necessary programs"

    update
    overwrite "vs code"
    getVsCode
    overwrite "command line utils"
    apt install -y vim git zsh curl wget ./code.deb
}