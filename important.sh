function getDocker() {
    # curl -fsSL https://get.docker.com -o get-docker.sh
    # sudo sh get-docker.sh
    # sudo usermod -aG docker $(whoami)

    appendAlias ./alias/docker.txt
}

function getKubeCtl() {
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
}

function getHelm() {
    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh
}

function getNode() {
    curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
    sudo apt-get install -y nodejs
    NODE_INSTALLED=true

    appendAlias ./alias/node.txt
}

function getGo() {
    wget https://golang.org/dl/go1.15.8.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go1.15.8.linux-amd64.tar.gz
    
    mkdir -p $HOME/go/{bin,src}

    appendPath 'export PATH=$PATH:/usr/local/go/bin'
}

function getHomebrew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    HOMEBREW_INSTALLED=true

    appendPath 'export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin'
}

function installImportant() {
    echo "Installing important stuff"

    getDocker
    getKubeCtl
    getHelm
    getNode
    getGo
    getHomebrew
}