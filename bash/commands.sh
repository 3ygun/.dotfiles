# -----------------------------------------------------------------------------
# Commands -- Make life simpler please
#     Thanks to Smacz (github.com/smacz42) for the great starting list!
# -----------------------------------------------------------------------------

# I'm too lazy to remember the content of this directory
function cdls    { builtin cd "$@" && ls; }

# Super cd .. -- Because typing "cd .." repeatedly is boring
function up() {
    local x='';
    for i in $(seq ${1:-1}); do
        x="$x../";
    done;
    cd $x;
}

# Extract all the things
function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.tar.xz)    tar xvf $1     ;;
            *.xz)        xz -d $1       ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# New for systemd
function start()    { sudo systemctl start $@; }
function stop()     { sudo systemctl stop $@; }
function restart()  { sudo systemctl restart $@; }
function status()   { sudo systemctl status $@; }
function enable()   { sudo systemctl enable $@; }
function disable()  { sudo systemctl disable $@; }

# Git

# Runs through all branchs and prompts the user to delete them 
function gitbranchdelete() {
    echo "Commands after branch prompt:"
    echo " y or yes -> to delete the branch"
    echo " exit     -> to exit early"
    echo ""
    echo "Delete branch?"

    # Help provided from https://stackoverflow.com/questions/41650892/why-redirect-stdin-inside-a-while-read-loop-in-bash
    exec 3</dev/tty || exec 3<&0 # Make FD 3 point to the TTY or stdin (as fallback)

    while branches= read -r branch; do
        # Prompt to delete the branch
        # Read the response from stdin copied from FD 3
        read -p "$branch ? " response <&3

        case $response in
        "y" | "yes")
            git branch -D $branch
            ;;
        "exit")
            break # Exit the loop early
            ;;
        *)
            # Do nothing with this branch
            ;;
        esac

        # echo "" # New line
    done < <(git branch)

    exec 3<&- # Close FD 3 when done
}
alias gbd="gitbranchdelete"
