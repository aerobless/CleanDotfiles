echo ""
echo "--------------------------------------------------------------------"
echo "                  Theo's OS X Initial Setup Script                  "
echo "                Version 1.0 - optimised for Yosemite                "
echo "--------------------------------------------------------------------"
echo ""
echo "Warning: Please read through this install script before running it."
echo "I don't provide an uninstall script at this time, so make sure you"
echo "have commented out all the things you do not want to install/change."
echo ""

read -p "Would you like to continue? y/n " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	echo "Exiting Theo's OS X Initial Setup Script.."
    exit 1
fi

#Install Homebrew (required for following installs)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	#Install git (Source-Control)
	brew install git

	#Install wget (Download utility)
	brew install wget

	#Install ffmpeg (Record, convert & stream audio/video)
	brew install ffmpeg
	
	#New Versions of software that is shipped with OS X
	
			#Install bash (Shell)
			brew install bash
			
			#Install python (Programming language, execution environment)
			brew install python
			
			#Install ruby (Programming language, execution environment)
			brew install ruby
			
			#Install ruby (Editor)
			brew install vim

	#Install cask (Install GUI-application via brew)
	brew install brew-cask
	
#Settings:
echo "Writing new settings.."

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

#Automatically quit printer app once the print jobs complete.
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

#Speeding up Mission Control animations and grouping windows by application
defaults write com.apple.dock expose-animation-duration -int 0
defaults write com.apple.dock "expose-group-by-app" -bool true
killall Dock

#Enabling Safari's developer mode.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

echo "All done. You can close this window now."

