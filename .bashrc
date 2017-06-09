# User specific aliases and functions
get_sha() {
    git rev-parse --short HEAD 2>/dev/null
}
export CLICOLOR=1

# Some sane defaults
# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# to bootstrap, run `brew install git bash-completion`
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if hash brew 2>/dev/null; then
    export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
fi

if hash git 2>/dev/null; then
    # these are the locations on a mac installed by homebrew. it's different on linux
    #source /usr/local/git/contrib/completion/git-completion.bash
    #source /usr/local/git/contrib/completion/git-prompt.sh
    # these are the locations on linux. it's different on a mac
    #source /usr/share/git-core/contrib/completion/git-completion.bash
    #source /usr/share/git-core/contrib/completion/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export EDITOR=emacs

    #export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1)\[\033[00m\]\$ '
    export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]\[\033[00m\]\$ '
fi

#Add to python path
export PYTHONPATH="${PYTHONPATH}:/Users/m.haller/Documents/the-prices-project/src/python"
export PYTHONPATH="${PYTHONPATH}:/Users/m.haller/Documents/the-prices-project/src/python/webapp/nginx_flask/flask_app"

#aws keys
export AWS_ACCESS_KEY_ID=AKIAJJCVMZFWKXUY2RYA
export AWS_SECRET_ACCESS_KEY=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
export AWS_DEFAULT_REGION=us-east-1
#export AWS_CA_BUNDLE=/etc/pki/tls/certs/winton-ca.cer
