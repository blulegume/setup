function getPure() {
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
}

function getTonight() {
    echo "installing tonight"
}

function installThemes() {
    echo "installing themes"

    getPure
    getTonight
}