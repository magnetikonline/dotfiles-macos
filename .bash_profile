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
	PS1=$PS1'\[\033]0;\w\007\]'
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
export GOTOOLCHAIN="local"
export GOPATH="$HOME/go"
export PATH="$PATH:${GOPATH//://bin:}/bin"

# Python
# install pip packages to $HOME/Library/Python/VERSION
export PIP_USER="1"


# init bash_completion
. /usr/local/etc/profile.d/bash_completion.sh

# AWS CLI tools completion
complete -C /usr/local/bin/aws_completer aws


# aliases
unalias -a

alias ll='ls -ao'

# aliases - application shortcuts
alias diff='git diff --no-index'
alias pip='pip3'
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'

function vsc {
	local vscPath=$1
	if [[ ($vscPath != ".") && (! -f $vscPath) && (! -d .git) ]]; then
		if [[ ($(git rev-parse --is-inside-work-tree 2>/dev/null) == "true") ]]; then
			echo "Info: opening Visual Studio Code at Git repository root"
			vscPath=$(git rev-parse --show-toplevel)
		fi
	fi

	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code "$vscPath"
}

# aliases - utility commands
alias mag-aws-accountalias='aws iam list-account-aliases --output text --query AccountAliases'
alias mag-aws-cachedrop='rm "$HOME/.aws/cli/cache/"*.json'
alias mag-aws-whoami='(
echo -e "\n\033[0;31mARN:\033[0m $(aws sts get-caller-identity --output text --query Arn)";
echo -e "\033[0;32mAccount alias:\033[0m $(aws iam list-account-aliases --output text --query AccountAliases)\n"
)'
alias mag-curlheader='curl --dump-header - --output /dev/null --silent'
alias mag-dsstorenuke='find . -type f -name ".DS_Store" -print0 | xargs -0 -I {} -L 1 -- rm -fv "{}"'
alias mag-eslint='npx eslint .'
alias mag-fileextlist='find . \( -type d -name .git -prune \) -o \( -type f -name "*.*" \) | sed -E "s/.*\.//" | sort --unique'
alias mag-github-pr-url='[[ $(git remote get-url --push origin) =~ ^git@github\.com:(.+)\.git$ ]] && open /Applications/Google\ Chrome.app "https://github.com/${BASH_REMATCH[1]}/pull/new/$(git branch --show-current)"'
alias mag-gitroot='cd "$(git rev-parse --show-toplevel)"'
alias mag-golangcleanall='go clean -cache -modcache'
alias mag-gpgkeyslist='gpg --list-keys --keyid-format long'
alias mag-jpgstripexif='jhead -purejpg'
alias mag-sshgenpublic='ssh-keygen -yf'
