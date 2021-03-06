umask 022


# Git command complete and prompt (PS1) support
. /usr/local/git/contrib/completion/git-completion.bash
. /usr/local/git/contrib/completion/git-prompt.sh


# colored shell prompt including Git branch details
GIT_PS1_SHOWDIRTYSTATE=:
GIT_PS1_SHOWSTASHSTATE=:
GIT_PS1_SHOWUNTRACKEDFILES=:
GIT_PS1_SHOWUPSTREAM="auto"
PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[94m\]\w\[\033[00m\]$(__git_ps1 "\[\033[35m\]|\[\033[95m\]%s\[\033[00m\]")\$ '

# display current working directory in iTerm2 as window title
if [[ -n $ITERM_SESSION_ID ]]; then
	PS1="$PS1\[\033]0;\w\007\]"
fi


# environment variables
# mute 'zsh is now default shell' message when opening /bin/bash session
export BASH_SILENCE_DEPRECATION_WARNING="1"
export EDITOR="/usr/bin/nano"
export HISTCONTROL="ignoredups"

# ls
export CLICOLOR="1"
export LSCOLORS="Exfxcxdxbxegedabagacad"

# tar
# disable extended macOS file attributes being picked up
export COPYFILE_DISABLE="1"
export TAR_WRITER_OPTIONS="compression-level=9"

# Golang
export GOPATH="$HOME/go"
export PATH="$PATH:${GOPATH//://bin:}/bin"

# Python
# install pip packages to $HOME/Library/Python
export PIP_USER="1"

# Terraform
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
if [[ ! -d $TF_PLUGIN_CACHE_DIR ]]; then
	mkdir -p "$TF_PLUGIN_CACHE_DIR"
fi


# init bash_completion
. /usr/local/etc/profile.d/bash_completion.sh

# AWS CLI tools completion
complete -C /usr/local/bin/aws_completer aws


# aliases
unalias -a

alias ll='ls -ao'

# application shortcuts
alias diff='git diff --no-index'
alias vsc='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# utility commands
alias mag-aws-accountalias='aws iam list-account-aliases --output text --query AccountAliases'
alias mag-aws-cachedrop='rm -f "$HOME/.aws/cli/cache/"*.json'
alias mag-aws-whoami='aws sts get-caller-identity | jq;echo;aws iam list-account-aliases --output text --query AccountAliases'
alias mag-curlheader='curl --dump-header - --output /dev/null --silent'
alias mag-dsstorenuke='find . -type f -name ".DS_Store" -print0 | xargs -0 -I {} -L 1 -- rm -fv "{}"'
alias mag-gitrebasevsc='EDITOR="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --wait" git rebase --interactive'
alias mag-golangcleanall='go clean -cache -modcache'
alias mag-gpglistkeys='gpg --list-keys --keyid-format long'
alias mag-jpgstripexif='jhead -purejpg'
alias mag-sshgenpublic='ssh-keygen -yf'
