#	-------------------------------------
#			TERMINAL IMPROVEMENTS
#	-------------------------------------
alias finder='open -a "Path Finder" ./'			# Open directory in finder. Replace "Path Finder" with "Finder" if you don't own Path Finder.
alias numFiles='echo $(ls -1 | wc -l)'			# Show the number of visible files in folder.
alias reload=". ~/.bash_profile"				# Reload the profiles
alias preview='open -a "Preview"'				# Open file in preview
alias loc='git ls-files | xargs cat | wc -l'	# Lines of code in a local git-repository
alias ip='ipconfig getifaddr en0'               # Display the ip of the main ethernet adapter
alias hosts='sudo vim /private/etc/hosts'       # Opens the hosts file, so you can add custom domain->IP redirects
alias dnsflush='sudo dscacheutil -flushcache && open http://chrome:://net-internals/#dns'   # Flush OS X DNS Cache

#ToxicTodo
alias todo="java -jar /Users/theowinter/Dropbox/SYNC/apps/ToxicTodo/ToxicTodoClient.jar"

#Web Quick Access
alias music="open https://play.google.com/music/listen?view=/settings&hl=en&u=0#/now"
alias reddit="open https://reddit.com"
alias inbox="open https://inbox.google.com"

alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Dropbox/SYNC/bash_aliases.sh | grep -v '^\s*$' | less -FSRXc ; }