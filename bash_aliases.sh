#ToxicTodo
alias todo="java -jar /Users/theowinter/Dropbox/SYNC/apps/ToxicTodo/ToxicTodoClient.jar"

#Jekyll
alias jekyll="/usr/local/Cellar/ruby/2.1.1/bin/jekyll"
alias ghoul="cd /usr/local/Cellar/ruby/2.1.1/bin/ghoul.io"
alias glynn="/usr/local/Cellar/ruby/2.1.1/bin/glynn"
alias gbuild="cd /usr/local/Cellar/ruby/2.1.1/bin/ghoul.io/; /usr/local/Cellar/ruby/2.1.1/bin/glynn;"

#Custom Commands
alias reload_profile=". ~/.profile"
alias preview="open /Applications/Preview.app"
alias edit_profile="vim /Users/theowinter/Dropbox/0_blood_system/bashSync/public_profile"

#Shadow Drive & other secrets
alias shadow_drive="hdiutil attach '/Users/theowinter/Dropbox/0_blood_system/shadow_storage.sparsebundle'"

#Web Quick Access
alias music="open https://play.google.com/music/listen?view=/settings&hl=en&u=0#/now"

#Mounts
alias hsr_skripte="mount -t smbfs //twinter@c206.hsr.ch/skripte 'HSR Skripte'"

#Open current directory in finder
# alias finder='open -a "Finder" ./'
alias finder='open -a "Path Finder" ./'

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Dropbox/SYNC/bash_aliases.sh | grep -v '^\s*$' | less -FSRXc ; }