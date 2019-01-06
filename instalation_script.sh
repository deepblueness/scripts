install brew 
 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
brew update
brew upgrade --all

brew tap caskroom/cask

# Apps
apps=(
alfred
caffeine
ccmenu
docker
dropbox
firefox
fluid
flux
google-chat
google-chrome
intellij-idea
iterm2
keepassxc
phoneclean
postman
skitch
slack
spotify
veracrypt
viber
visual-studio-code
xmind
)

echo "installing apps with Cask..."
brew cask install --appdir="/Applications" ${apps[@]}

brew install coreutils
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install bash
brew install grep --with-default-names

declare -a basic=(ack aspell curl htop-osx gcc git jq openssh R the_silver_searcher  watch wget)
for i in "${basic[@]}" ; do
brew install "${i}"
done

brew install terminal-notifier

# linters
brew install hadolint
brew install shellcheck

brew tap caskroom/drivers
brew install postgresql
brew cleanup

defaults write com.apple.finder AppleShowAllFiles YES
