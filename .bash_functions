######################
### BASH FUNCTIONS ###
######################

# rsync all files in current directory to CAEN
caenrsync () {
	DIR=$1
	rsync -rtv --exclude '.git*' --exclude '.vs*' --exclude 'Debug*' ./ cestrell@login.engin.umich.edu:"$DIR"
} # caenrsync

# Control git directories from anywhere
git-dir () {
    DIR=$1
	git --git-dir="$DIR/.git" --work-tree="$DIR" "$@"
} # git-dir

# For use with .git_completion
__git_branch () {
  __git_ps1 "(%s)"
}

# Set SSH agent
set_SSH_agent () {
    agent_load_env() {
        test -f "$env" && . "$env" >| /dev/null ;
    }

    agent_start() {
        (umask 077; ssh-agent >| "$env")
        . "$env" >| /dev/null ;
    }

    # agent_run_state: 0=agent running w key; 1=agent w/o key; 2=agent !running
    env=~/.ssh/agent.env
    agent_load_env
    agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

    if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
        agent_start
        ssh-add
    elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
        ssh-add
    fi
    unset env

    echo "Successfully configured SSH Agent."
} # set_SSH_agent