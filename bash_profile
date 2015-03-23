## vi key mappings
set -o vi

## aliases
alias ll='ls -lah'

# ENV variables
export PATH="/usr/local/bin:$PATH"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'

## Prompt 
current_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\033[93m\]\u\[\033[m\]\$(current_git_branch):\[\033[36m\]\w\[\033[m\]\$ "


