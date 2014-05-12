
#Custom Functions
function set_volume() { sudo osascript -e "set Volume $1"; }
function google() { open "https://www.google.ch/#q="$1"&safe=off"; sleep 0.5; switch_to iTerm; }
function switch_to() { osascript -e "tell application \"$1\" to activate"; }

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
			ffmpeg -i $1 -vf scale=600:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
		fi
	else
    	echo -n "Error: Please specify a file like this: makeGif /Users/yourname/Desktop/Recording.mov"
  	fi
 }
 
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