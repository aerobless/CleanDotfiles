#!/bin/bash
#-----------------------------------------------------------#
#  Title:  clean.bashprofile.sh                             #
#  URL:    https://github.com/aerobless/CleanDotfiles       #
#  Author: Theo Winter                                      #
#                                                           #
#  A clean, simple .bash_profile for advanced OS X users.   #
#-----------------------------------------------------------#



#-----------------------------------------------------------#
# 1. Bash Settings                                          #
#-----------------------------------------------------------#

#Load Homebrew Tools
export PATH=/usr/local/bin:$PATH

#Enable LS-Colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

#Enable GREP-Colors
export GREP_OPTIONS='--color=auto'

#Go Workspace (only required if you're programming Go!)
export GOPATH=$HOME/GO_WORKSPACE/
export PATH=$PATH:$GOPATH/bin




#-----------------------------------------------------------#
# 2. Aliases                                                #
#-----------------------------------------------------------#

# Open directory in finder. Replace "Path Finder" with "Finder" if you don't own Path Finder.
alias finder='open -a "Path Finder" ./'

# Show the number of visible files in folder.
alias numFiles='echo $(ls -1 | wc -l)'

# Reload the profiles
alias reload=". ~/.bash_profile"

# Open file in preview
alias preview='open -a "Preview"'

# Lines of code in a local git-repository
alias loc='git ls-files | xargs cat | wc -l'

# Display the ip of the main ethernet adapter
alias ip='ipconfig getifaddr en0'

# Manage OS X's host file (add/remove entries, then flush the cache)
alias hosts='sudo vim /private/etc/hosts'
alias dnsflush='sudo dscacheutil -flushcache && open http://chrome:://net-internals/#dns'

#Use your screensaver as Desktop background, to show off ;-)!
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

#Web Quick Access
alias music="open https://play.google.com/music/listen?view=/settings&hl=en&u=0#/now"
alias reddit="open https://reddit.com"
alias inbox="open https://inbox.google.com"

#ToxicTodo
alias todo="java -jar /Users/theowinter/Dropbox/SYNC/apps/ToxicTodo/ToxicTodoClient.jar"



#-----------------------------------------------------------#
# 3. Functions                                              #
#-----------------------------------------------------------#

#Remind yourself of an alias in this file
#Example: showa music
function showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Dropbox/SYNC/bash_aliases.sh | grep -v '^\s*$' | less -FSRXc ; }

#Set the volume of your current audio output device between 0-10 
#Example: set_volume 2
function set_volume() { sudo osascript -e "set Volume $1"; }

#Open google and search for the param
#Example: google Katze
function google() { open "https://www.google.ch/#q="$1"&safe=off"; sleep 0.5; switch_to iTerm; }

#Target a specific GUI application
#Example: target Chrome
function target() { osascript -e "tell application \"$1\" to activate"; }

#Convert a Video to .gif
#Example: makeGif test.mp4
function makeGif() {
	#INFO: Requires Homebrew with "brew install ffmpeg" and "brew install gifsicle"
	if [ $1 ]; then
		if [ $2 ]; then
			if [ $2 == "full" ]; then
				echo -n "Converting video to gif with FULL resolution."
				ffmpeg -i $1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
			else
				echo -n "Error: Second argument not recognized"
			fi
		else
			echo -n "Converting video to gif with SCALED resolution."
			ffmpeg -i $1 -vf scale=600:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
		fi
	else
    	echo -n "Error: Please specify a file like this: makeGif /Users/yourname/Desktop/Recording.mov"
  	fi
 }

#Uses GoogleTranslate to output text2speech
#Example googleSay "Hello World"
function googleSay() {
    echo
    echo "GOOGLE TEXT TO SPEECH SHELL TOOL"
    echo "@author Alberto Miranda <alberto.php@gmail.com>"
    echo "-------------------------------------------------------------------"
    args=("$@")
    argsCount=${#args[@]}
    if [ $argsCount -lt 1 ]; then
        echo "Usage: say [string] [lang]"
        echo "Default language is en (english)"
        echo "Example: say 'Raspberry Pi rocks! Yeah!'"
        echo "IMPORTANT: write your text between single quotes." 
        echo
        return 0
    fi  
    #set params
    text=$1
    lang=$2

    #default language
    if [ -z $lang ]; then
        lang="en"
    fi  
    echo "+ SAY '$text' ($lang)"
    mplayer  "http://translate.google.com.mx/translate_tts?tl=$lang&q=$text" > /dev/null 2>&1; 
    echo "DONE."
    echo
}