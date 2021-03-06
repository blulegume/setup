function getPure() {
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
}

function getTonight() {
    overwrite "installing tonight"
}

function installThemes() {
    overwrite "installing themes"

    getPure
    getTonight
}