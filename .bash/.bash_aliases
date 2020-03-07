alias g='git'

# Show exit status on failure.
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local curr_exit="$?"

    local BRed='\[\e[0;91m\]'
    local RCol='\[\e[0m\]'

    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

    if [ "$curr_exit" != 0 ]; then
        PS1="[${BRed}$curr_exit${RCol}] $PS1"
    fi
}

source ~/.ls_colors/monokai.sh
