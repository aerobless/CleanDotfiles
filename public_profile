#Load brew-tools first
export PATH=/usr/local/bin:$PATH

#Connect to Postgres Server on OS X
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

#Terminal Settings
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

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

#Custom Functions
function set_volume() { sudo osascript -e "set Volume $1"; }
function google() { open "https://www.google.ch/#q="$1"&safe=off"; sleep 0.5; switch_to iTerm; }
function switch_to() { osascript -e "tell application \"$1\" to activate"; }

#ToxicTodo
alias todo="java -jar /Users/theowinter/Dropbox/SYNC/apps/ToxicTodo/ToxicTodoClient.jar"

#Jekyll
alias jekyll="/usr/local/Cellar/ruby/2.1.1/bin/jekyll"
alias ghoul="cd /usr/local/Cellar/ruby/2.1.1/bin/ghoul.io"
alias glynn="/usr/local/Cellar/ruby/2.1.1/bin/glynn"
alias gbuild="cd /usr/local/Cellar/ruby/2.1.1/bin/ghoul.io/; /usr/local/Cellar/ruby/2.1.1/bin/glynn;"

#GifBrewery
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
			ffmpeg -i $1 -vf scale=500:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
		fi
	else
    	echo -n "Error: Please specify a file like this: makeGif /Users/yourname/Desktop/Recording.mov"
  	fi
 }
 