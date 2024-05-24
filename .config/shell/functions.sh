# function definitions

# only applies for gnome-based things
function set-text() {
    gsettings set org.gnome.desktop.interface text-scaling-factor $1
}

function cleandep() {
    zypper packages --unneeded | awk -F'|' 'NR==0 || NR==1 || NR==2 || NR==3 || NR==4 {next} {print $3}' | grep -v Name | sudo xargs -r zypper remove --clean-deps;
}

function keyset() {
    . $HOME/.config/shell/scripts/inputs.sh
}

function mount-nfs() {
    NFS="192.168.0.34:/mnt/drive"
    TARG="/mnt/nfs/drive"
    if [[ $1 == "-d" ]]; then
        if [[ -d ${TARG} ]]; then
            sudo umount ${TARG}
            sudo rm -rf ${TARG}
            echo "Unounted nfs ${TARG} from ${NFS}"
        fi
    elif [[ -z $1 ]]; then
        sudo mount --mkdir -v -t nfs ${NFS} ${TARG}
        echo "Mounted nfs ${NFS} to ${TARG}"
    else
        echo "Invalid input. '-d' to unmount, and no input to mount."
    fi
}
