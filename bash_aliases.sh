#	-------------------------------------
#			TERMINAL IMPROVEMENTS
#	-------------------------------------
alias finder='open -a "Path Finder" ./'			# Open directory in finder. Replace "Path Finder" with "Finder" if you don't own Path Finder.
alias numFiles='echo $(ls -1 | wc -l)'			# Show the number of visible files in folder.
alias reload_profile=". ~/.bash_profile"		# Reload the profiles
alias preview='open -a "Preview"'				# Open file in preview
alias loc='git ls-files | xargs cat | wc -l'	# Lines of code in a local git-repository

#ToxicTodo
alias todo="java -jar /Users/theowinter/Dropbox/SYNC/apps/ToxicTodo/ToxicTodoClient.jar"

#Jekyll
alias jekyll="/usr/local/Cellar/ruby/2.1.1/bin/jekyll"
alias ghoul="cd /usr/local/Cellar/ruby/2.1.1/bin/ghoul.io"
alias glynn="/usr/local/Cellar/ruby/2.1.1/bin/glynn"
alias gbuild="cd /usr/local/Cellar/ruby/2.1.1/bin/ghoul.io/; /usr/local/Cellar/ruby/2.1.1/bin/glynn;"

#Shadow Drive
alias shadow_drive="hdiutil attach '/Users/theowinter/Dropbox/0_blood_system/shadow_storage.sparsebundle'"

#Web Quick Access
alias music="open https://play.google.com/music/listen?view=/settings&hl=en&u=0#/now"

alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

#Mounts
alias hsr_skripte="mount -t smbfs //twinter@c206.hsr.ch/skripte 'HSR Skripte'"

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Dropbox/SYNC/bash_aliases.sh | grep -v '^\s*$' | less -FSRXc ; }