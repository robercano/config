# Prevent deleting things accidentally
alias rm='rm -I'

# Git helpers
alias gt='git status'
alias git-current-branch='git rev-parse --abbrev-ref HEAD'
alias git-merge-base='git merge-base `git-current-branch` master'
alias git-branch-diff='git diff `git-merge-base`'

# Setup local bin directory to override settings
export PATH=$HOME/.bin:$PATH

# Unlimited history, please
export HISTSIZE=100000
export HISTFILESIZE=100000000

# find color for print
export COLPRINT="( -printf \033[31m%p\033[0m\n -or -print )"

# Git prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_SHOWSTASHSTATE=true

source /etc/bash_completion.d/git-prompt  
PS1=$PS1'$(__git_ps1 "\[\e[0;93m\](%s) \[\e[0m\]")'

# C Scope and C Tag things
scan-source()
{
	find . -name '*.c' -o -name '*.h' -o -name '*.cpp' > cscope.files
	cscope -b -k -q
	ctags -R .
}
