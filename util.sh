function update() {
    sudo apt-get update
}

function overwrite() { 
    echo -e "\r\033[1A\033[0K$@"; 
}

function displayStepTitle() {
    echo -e "$@\n..."
}

function appendPath() {
    echo $1 >> path.txt
}

function appendAlias() {
    cat $1 >> alias.txt
}

function cleanUp() {
    rm -f alias.txt path.txt *.deb
}

function usage() {
    echo "usage: ./setup [options]"
    echo "options:"
    echo "  -a, --all"
    echo "    All. Install whole dev environment"
    echo "  -m, --min"
    echo "    Minimal. Install necessary programs"
    echo "  -i          Important. Install important programs"
    echo "  -n          Nice. Install nice-to-have programs"
    echo "  -k          K8s. Install K8s tools (must have important  programs too)"
    echo "  -t          Themes. Install shell/editor color themes"
    echo "  -h, --help  Help. Display this message"
}

function ensureNoRoot(){
    if [[ "$EUID" -eq 0 ]]; then 
		echo "This script must not be run as root!" 
		exit 1
	fi 
}