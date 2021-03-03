function installK8sTools() {
    displayStepTitle "Installing K8s tools"
    brew update && brew install k9s kubie kops k3d

}