function installK8sTools() {
    if [[ "$HOMEBREW_INSTALLED" = true ]]
    then
        echo "Installing K8s tools"

        brew update && brew install k9s kubie kops k3d
    fi
}