#Load brew-tools first
export PATH=/usr/local/bin:$PATH

#Always enable LS colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

#Go Workspace
export GOPATH=$HOME/GO_WORKSPACE/
export PATH=$PATH:$GOPATH/bin

# Always enable GREP colors
export GREP_OPTIONS='--color=auto'

# Separate aliases file
if [ -f ~/Dropbox/SYNC/bash_aliases.sh ]; then
    . ~/Dropbox/SYNC/bash_aliases.sh
fi 

# Separate functions file
if [ -f ~/Dropbox/SYNC/bash_functions.sh ]; then
    . ~/Dropbox/SYNC/bash_functions.sh
fi