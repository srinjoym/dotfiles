# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
    filezilla
    google-chrome
    sublime-text3
    visual-studio-code
    atom
    polymail
    spotify
    flux
    istat-menus
)

brew cask install "${apps[@]}"
