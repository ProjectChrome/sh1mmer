if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null; then
    echo -e "\n\n\n\n"
    echo "==========[!]=========="
    echo "WAX+ HAS DETECTED THAT YOU ARE USING WSL"
    echo "DO NOT MAKE ISSUES ON THE GITHUB"
    echo "WSL IS NOT SUPPORTED"
    echo -e "\n\n\n\n"
    sleep 3
    exit
fi

read -p "What Board? > " board
read -p "Do you want to have a Mini or Crew [M/C]> " ty
read -p "Dev Shim? [y/n]> " devs

# check if board is available

if [[ $board == "brask" || $board == "brya" || $board == "clapper" || $board == "coral" || $board == "dedede" || $board == "enguarde" || $board == "glimmer" || $board == "grunt" || $board == " grunt" || $board == "hana" || $board == "hatch" || $board == "jacuzzi" || $board == "kukui" || $board == "nami" || $board == "octopus" || $board == "ocro" || $board == "pyro" || $board == "reks" || $board == "sentry" || $board == "stout" || $board == "strongbad" || $board == "tidus" || $board == "volteer" || $board == "zork"]]; then
    echo "Found board"
else
    echo "No Board Found under" $board
    sleep 3
    exit
fi



function buildMini() {

}

function buildLegacy() {

}

function buildCrew() {

}
